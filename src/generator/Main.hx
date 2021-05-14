import Hardwired.CLASS_EXTENSIONS;
import haxe.ds.Option;
import json2object.JsonParser;
import haxe.Http;
import sys.FileSystem;
import sys.io.File;

import hre.RegExp;
import haxe.ds.StringMap;

using StringTools;
using Struc;

import Hardwired.GENERIC_LUA_TYPES;
import Hardwired.HAXE_OPS;
import Hardwired.HxOpData;

final VERSION = "0.3.1";

typedef AbstractPile = Array<{
    fn_data: MethodDoc,
    fn_name: String,
    haxe_op: HxOpData
}>;

// String buffer of the current output file.
var HaxeCode = new StringBuf();

final WordMatcher = new RegExp("(\\w+)");

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
function upperFirst(s:String):String {
    return s.charAt(0).toUpperCase() + s.substr(1);
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
    var args = fn_data.params.map(function(info) {
        var type_info = info.type.into();
        return (type_info.nullable ? "?" : "") + '${mangleName( WordMatcher.exec( info.name ).groups[0] )}:${sfTypeToHx(type_info)}';
    });
    return Some(args.join(", "));
}

/*
    Tries to get the Haxe return type from a function data struct's return table.
*/
function sfTypeToHx(arg: SFType):String {
    var type = arg.type;
    if (type == null) {
        if (arg.types != null) {
            // Multi-type. Not supported yet.
            return "Dynamic";
        }
        return "Void";
    }

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
            type = ( "sf.type." + type );
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
            var type_data = types[0].type.into();
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
    var desc_fixed = desc.replace("\n", "\n\t\t"); // Indented to fit better. Won't support if we ever go outside of one tab.
    haxePush('\t/**\n\t\t${realm}\n\t\t$desc_fixed\n\t**/\n');
    return realm;
}

function genLibrary( lib_name:String, class_data: LibraryDoc ) {
    haxePush('// Generated by SFHaxe $VERSION\npackage sf.library;');
    haxePush('\n@:native("${ lib_name=="builtins" ? "_G" : lib_name }") extern class ${upperFirst(lib_name)} {\n');
    for (fn_name => fn_data in class_data.methods) {
        var realm = genDocs(fn_data);
        if (realm != "SHARED") {
            // CLIENT or SERVER
            haxePush('\t#if $realm @:native("$fn_name") public static function ${mangleName(fn_name)}(${ opt_unwrap_or( getArgs(fn_data), "" ) }):${ sfTypeFromData(fn_data) };#end\n');
        }else {
            haxePush('\t@:native("$fn_name") public static function ${mangleName(fn_name)}(${ opt_unwrap_or( getArgs(fn_data), "" ) }):${ sfTypeFromData(fn_data) };\n');
        }
    }
    haxePush("}\n\n");

    final writer = File.write('sf_haxe/Library/${ upperFirst(lib_name) }.hx');
    writer.writeString( haxePop() );
    writer.close();
}

function getTypeExtends(type_name: String): String {
    if (CLASS_EXTENSIONS.exists(type_name))
        return 'extends ${ CLASS_EXTENSIONS.get(type_name) } ';
    return '';
}

function genType( type_name:String, class_data: TypeDoc ) {
    var abstract_pile: AbstractPile = []; // A list of metamethods that will be made into a separate abstract class

    haxePush('// Generated by SFHaxe $VERSION\npackage sf.type;');
    haxePush('\nextern class ${type_name}Data ${ getTypeExtends(type_name) }{\n');
        for (fn_name => fn_data in class_data.methods) {
            var op_data = HAXE_OPS.get(fn_name); // Operator data
            if (op_data != null) {
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
        }
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
                args[k] = '${ String.fromCharCode(65+k) }:Any';
            }
            genDocs(abstract_data.fn_data);
            // TODO: Replace :Any with our return checking, when SF has returns / args documented.
            haxePush('\t$haxe_op public function $fn_name(${args.join(", ")}):Any;\n');
        }
    haxePush("}\n\n");

    final writer = File.write('sf_haxe/Type/$type_name.hx');
    writer.writeString( haxePop() );
    writer.close();
}

function genTypes(docs: StringMap<TypeDoc>) {
    for (classname => classdata in docs) {
        genType( classname, classdata );
    }
}

/**
    Generates Haxe Extern Functions to SF libararies. Example: Coroutine class with Coroutine.yield as a static function.
**/
function genLibraries(docs: StringMap<LibraryDoc>) {
    for (classname => classdata in docs) {
        genLibrary( classname, classdata );
    }
}

function main() {
    var body = Http.requestUrl("https://raw.githubusercontent.com/thegrb93/StarfallEx/gh-pages/sf_doc.json");

    var parser = new JsonParser<Doc>();
    var docs = parser.fromJson(body);

    FileSystem.createDirectory("sf_haxe");
        FileSystem.createDirectory("sf_haxe/library");
        FileSystem.createDirectory("sf_haxe/type");

    genTypes( docs.Types );
    genLibraries( docs.Libraries );

    Sys.println("Finished!");
    Sys.sleep(50);
}