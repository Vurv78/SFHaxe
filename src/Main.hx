import haxe.ds.Option;

// Lua Std Imports
import lua.PairTools;
using StringTools;
using lua.NativeStringTools; // Allow using gsub, sub, replace, etc on strings.

// SF Imports
import sf.library.Json;
import sf.library.Http;
import sf.library.File;
import sf.library.Builtins.*;
import sf.type.*;

using Struc;


// metadata and number of args
typedef HxOpData = { mdata: String, nargs: Int };
typedef AbstractPile = Array<{
    fn_data: MethodDoc,
    fn_name: String,
    haxe_op: HxOpData
}>;

final HAXE_OPS:Map<String, HxOpData> = [
    "__mul" => { mdata: "@:op(A*B)", nargs: 1 },
    "__add" => { mdata: "@:op(A+B)", nargs: 1 },
    "__sub" => { mdata: "@:op(A-B)", nargs: 1 },
    "__div" => { mdata: "@:op(A/B)", nargs: 1 },
    "__newindex" => { mdata: "@:op([])", nargs: 2 }, // Array Indexing SET, Two args to differentiate from GET
    "__index" => { mdata: "@:op([])", nargs: 1 }, // Array Indexing GET
    "__unm" => { mdata: "@:op(-A)", nargs: 0 }, // Negative Unary Operator
    "__eq" => { mdata: "@:op(A==B)", nargs: 1 } // Is equal to
];


final GENERIC_LUA_TYPES = [
    "boolean" => "Bool",
    "number" => "Float", // Haxe's "Float" is actually a double. (F64)
    "string" => "String",
    "table" => "lua.Table<Dynamic,Dynamic>",
    "function" => "haxe.Constraints.Function",
    "thread" => "lua.Thread",
    "..." => "Dynamic", // Any type of multiple values or no values potentially.

    "any" => "Any",

    "nil" => "Void", // Shouldn't happen
];

// String buffer of the current output file.
var HaxeCode = new StringBuf();


/**
    If the name is a keyword, returns the mangled version.
    Replaces class with _class for example, since haxe really doesn't like keywords as function names.
    Also used to make lua varargs (...) into a haxe argument (...varargs:Any) will result in a Rest<Any>
**/
function mangleName(name:String) {
    switch( name ) {
        case "throw"|"class"|"try"|"catch"|"continue"|"default"|"case"|"break"|"dynamic"|"enum"|"return"|"var":
            // Reserved keywords
            return '_$name';
        case "...":
            // For arguments using ...
            return "...args";
        default:
            return name;
    }
}

/**
    Pushes code to the Haxe buffer.
**/
function haxePush(str:String)
    HaxeCode.add(str);

/**
    Returns the currently written code in the Haxe buffer and clears it
**/
function haxePop():String {
    var ret = HaxeCode.toString();
    HaxeCode = new StringBuf();
    return ret;
}

/**
    Makes the first letter in the string uppercase
**/
function upperFirst(str:String):String {
    return ((str.sub(1,1).match).upper() + str.sub(2).match);
}

/**
    Tries to unwrap the Nullable value. If it's null, throws an error
**/
function unwrap_or_panic<T>(s:Null<T>):T {
    switch s {
        case null: throw "Null error";
        default: return s;
    }
}

function unwrap_or<T>(s:Null<T>, ret:T):T {
    switch s {
        case null: return ret;
        default: return s;
    }
}

/**
    If the Option wrapped value is None, return ret
**/
function opt_unwrap_or<T>(s:Option<T>, ret:T):T {
    switch s {
        case None: return ret;
        case Some(obj): return obj;
    }
}

/**
    Returns a string of args from function data.
    Ex: "hello:String, apple:Float, ok:Any"
**/
function getArgs(fn_data: MethodDoc):Option<String> {
    if (fn_data.params == null)
        return None;
    var args = LuaTable.toArray(fn_data.params).map(function(info) {
        return '${mangleName( info.name.match("%w+") )}:${sfTypeToHx(info.type.into())}';
    });
    return Some(args.join(", "));
}

/*
    Tries to get the Haxe return type from a function data struct's return table.
*/
function sfTypeToHx(arg: SFType):String {
    var type = arg.type;
    if (type == null)
        return "Void";

    var to_hx_raw = GENERIC_LUA_TYPES[arg.raw];
    if (to_hx_raw != null)
        return to_hx_raw;

    var to_hx = GENERIC_LUA_TYPES[type];
    if (to_hx != null) {
        type = to_hx;
    } else {
        var first_char = type.charAt(0);
        if(first_char.toUpperCase() != first_char) {
            // Doesn't start with uppercase and isn't a lua type. Malformed.
            return "Any";
        }else {
            // SF Type.
            // Also gotta fix it because garrysmod is retarded and won't let you write uppercase,
            // leading to us having to make our files all lowercase but start with one uppercase since Haxe classes need that.
            // Yep. All of that because of Linux and OSX.
            var fixed_type = type.toLowerCase();
            var first_char = type.charAt(0).toUpperCase();
            type = ( "sf.type." + ( first_char + fixed_type.substring(1) ) );
        }
    }
    return (arg.variadic ? "..." : "") + (arg.nullable ? "Null<" : "") + '${type}' + (arg.nullable ? ">" : "");
}

function sfTypeFromData(fn_data: MethodDoc):String {
    return switch fn_data.returns {
        case null:
            return "Void";
        case types:
            // No multi-types for now.
            var type_data = types[1].type.into();
            return sfTypeToHx(type_data);
    }
}

/**
    SHARED
    Generates docs just like these docs here. Returns the realm to avoid repeated code
**/
function genDocs(fn_data: MethodDoc):String {
    var realm = unwrap_or_panic(fn_data.realm).toUpperCase(); // SF Really fucked up if this panics
    var desc = unwrap_or(fn_data.description, "No description found");
    var desc_fixed = desc.gsub("\n","\n\t\t"); // Indented to fit better. Won't support if we ever go outside of one tab.
    haxePush('\t/**\n\t\t${realm}\n\t\t$desc_fixed\n\t**/\n');
    return realm;
}

function genLibrary( lib_name:String, class_data: LibraryDoc ) {
    haxePush("// Generated by SFHaxe 0.3.0\npackage sf.library;");
    haxePush('\n@:native("${ lib_name=="builtins" ? "_G" : lib_name }") extern class ${upperFirst(lib_name)} {\n');
    PairTools.pairsEach( class_data.methods, function(fn_name, fn_data) {
        var realm = genDocs(fn_data);
        if (realm != "SHARED") {
            // CLIENT or SERVER
            haxePush('\t#if $realm @:native("$fn_name") public static function ${mangleName(fn_name)}(${ opt_unwrap_or( getArgs(fn_data), "" ) }):${ sfTypeFromData(fn_data) };#end\n');
        }else{
            haxePush('\t@:native("$fn_name") public static function ${mangleName(fn_name)}(${ opt_unwrap_or( getArgs(fn_data), "" ) }):${ sfTypeFromData(fn_data) };\n');
        }
    });
    haxePush("}\n\n");
    File.write('sf_haxe/Library/$lib_name.txt', haxePop());
}

function genType( type_name:String, class_data: TypeDoc ) {
    var abstract_pile: AbstractPile = []; // A list of metamethods that will be made into a separate abstract class
    var use_pile = false;

    haxePush("// Generated by SFHaxe 0.3.0\npackage sf.type;");
    haxePush('\nextern class ${type_name}Data {\n');
        PairTools.pairsEach( class_data.methods, function(fn_name, fn_data) {
            var op_data = HAXE_OPS.get(fn_name); // Operator data
            if (op_data != null) {
                use_pile = true;
                abstract_pile.push({
                    fn_data: fn_data,
                    fn_name: fn_name,
                    haxe_op: op_data
                });
            } else {
                // Not an operator
                var realm = genDocs(fn_data);
                if (realm != "SHARED") {
                    // CLIENT or SERVER
                    haxePush('\t#if $realm @:native("$fn_name") public function ${mangleName(fn_name)}(${ opt_unwrap_or( getArgs(fn_data), "") }):${ sfTypeFromData(fn_data) };#end\n');
                }else{
                    haxePush('\t@:native("$fn_name") public function ${mangleName(fn_name)}(${ opt_unwrap_or( getArgs(fn_data), "") }):${ sfTypeFromData(fn_data) };\n');
                }
            }
        });
    haxePush("}\n\n");

    // Until Haxe adds support for metamethods on classes, the only way you can do this is through abstracts of that class.
    haxePush("@:forward"); // This passes all of the methods to the class.
    haxePush('\nextern abstract $type_name(${type_name}Data) {\n');
        for (abstract_data in abstract_pile) {
            var nargs = abstract_data.haxe_op.nargs;
            var haxe_op = abstract_data.haxe_op.mdata;
            var fn_name = abstract_data.fn_name;
            var args = [];
            for (k in 0...nargs) {
                // Creates filler arguments for the operator overload.
                // a:Any, b:Any, c:Any, d:Any.
                // In case some operator that needs 5 inputs is created I guess
                args[k] = '${ NativeStringTools.char(65+k) }:Any';
            }
            genDocs(abstract_data.fn_data);
            // TODO: Replace :Any with our return checking, when SF has returns / args documented.
            haxePush('\t$haxe_op public function $fn_name(${args.join(", ")}):Any;\n');
        }
    haxePush("}\n\n");

    File.write('sf_haxe/Type/$type_name.txt', haxePop());
}

function genTypes(docs: LuaTable<String, TypeDoc>) {
    PairTools.pairsEach(docs, function(classname, classdata){
        genType( classname, classdata );
    });
}

/**
    Generates Haxe Extern Functions to SF libararies. Example: Coroutine class with Coroutine.yield as a static function.
**/
function genLibraries(docs: LuaTable<String, LibraryDoc>) {
    PairTools.pairsEach(docs, function(classname, classdata){
        genLibrary( classname, classdata );
    });
}

function main() {
    if(player() != owner())
        Sys.exit(0);
    Http.get("https://raw.githubusercontent.com/thegrb93/StarfallEx/gh-pages/sf_doc.json", function(body: String) {
        var docs: LuaTable<Any, Any> = Json.decode(body);
        File.createDir("sf_haxe");
            File.createDir("sf_haxe/library");
            File.createDir("sf_haxe/type");
        genTypes(docs.Types);
        genLibraries(docs.Libraries);
        // TODO: Generate enums
    }, null, null);
}