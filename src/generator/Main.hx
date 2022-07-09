import Hardwired.CLASS_EXTENSIONS;
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

final VERSION = "0.3.3";
final REPO = "https://raw.githubusercontent.com/thegrb93/StarfallEx";

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
	Returns a string of params from function data (or "" if no params)
	Ex: "hello:String, apple:Float, ok:Any"
**/
function getParams(fn_data: MethodDoc): String {
	if (fn_data.params == null) return "";

	final params = fn_data.params.map((info) -> {
		final type_info = info.type.into();
		return (type_info.nullable ? "?" : "") + '${mangleName( WordMatcher.exec( info.name ).groups[0] )}:${sfTypeToHx(type_info)}';
	});

	return params.join(", ");
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

	if (arg.nullable) {
		return (arg.variadic ? "..." : "") + "Null<" + type + ">";
	} else {
		return (arg.variadic ? "..." : "") + type;
	}
}

function sfTypeFromData(fn_data: MethodDoc): String {
	return switch (fn_data.returns) {
		case null: "Void";
		case types: sfTypeToHx(types[0].type.into());
	}
}

/**
	SHARED
	Generates docs just like these docs here. Returns the realm to avoid repeated code
**/
function genDocs(fn_data: MethodDoc):String {
	final realm = fn_data.realm.toUpperCase(); // SF Really fucked up if this panics
	final desc = fn_data.description;

	// For some reason SF adds a space to the beginning of the description, use substr to remove it.
	// Also does this for each line.
	// Indented to fit better. Won't support if we ever go outside of one tab.
	final desc_fixed = desc.replace("\n ", "\n\t\t").substr(1);

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
			haxePush('\t#if $realm @:native("$fn_name") public static function ${mangleName(fn_name)}(${ getParams(fn_data) }):${ sfTypeFromData(fn_data) };#end\n');
		}else {
			haxePush('\t@:native("$fn_name") public static function ${mangleName(fn_name)}(${ getParams(fn_data) }):${ sfTypeFromData(fn_data) };\n');
		}
	}
	haxePush("}\n\n");

	final writer = File.write('sf_haxe/Library/${ upperFirst(lib_name) }.hx');
	writer.writeString( haxePop() );
	writer.close();
}

function getTypeExtends(type_name: String): String {
	if (CLASS_EXTENSIONS.exists(type_name)) {
		final super_type = CLASS_EXTENSIONS.get(type_name);
		return 'extends sf.type.$super_type.${super_type}Data ';
	}
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
					haxePush('\t#if $realm @:native("$fn_name") public function ${mangleName(fn_name)}(${ getParams(fn_data) }):${ sfTypeFromData(fn_data) };#end\n');
				}else{
					haxePush('\t@:native("$fn_name") public function ${mangleName(fn_name)}(${ getParams(fn_data) }):${ sfTypeFromData(fn_data) };\n');
				}
			}
		}
	haxePush("}\n\n");

	// Until Haxe adds support for metamethods on classes, the only way you can do this is through abstracts of that class.
	haxePush("@:forward"); // This passes all of the methods to the class.
	haxePush('\nextern abstract $type_name(${type_name}Data) {\n');
		for (abstract_data in abstract_pile) {
			final nargs = abstract_data.haxe_op.nargs;
			final haxe_op = abstract_data.haxe_op.mdata;

			final fn_name = abstract_data.fn_name;
			final fn_data = abstract_data.fn_data;

			// Creates filler params for op overloads
			final params = [ for(k in 0...nargs) String.fromCharCode(65+k) + ":Any" ].join(", ");

			genDocs(fn_data);
			// TODO: Replace :Any with our return checking, when SF has returns / args documented.
			haxePush('\t$haxe_op public function $fn_name(${params}):Any;\n');
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
	var body = Http.requestUrl('$REPO/gh-pages/sf_doc.json');

	var parser = new JsonParser<Doc>();
	var docs = parser.fromJson(body);

	FileSystem.createDirectory("sf_haxe");
		FileSystem.createDirectory("sf_haxe/library");
		FileSystem.createDirectory("sf_haxe/type");

	genTypes( docs.Types );
	genLibraries( docs.Libraries );

	Sys.println("Finished!");
}