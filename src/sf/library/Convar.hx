// Generated by SFHaxe 0.3.3
package sf.library;
@:native("convar") extern class Convar {
	/**
		CLIENT
		Returns value of the ConVar as a boolean.
		True for numeric ConVars with the value of 1, false otherwise.
	**/
	#if CLIENT @:native("getBool") public static function getBool(name:std.String):Bool;#end
	/**
		CLIENT
		Returns the maximum value of the convar
	**/
	#if CLIENT @:native("getMax") public static function getMax(name:std.String):Null<Float>;#end
	/**
		CLIENT
		Returns value of the ConVar as a whole number.
		Floats values will be floored.
	**/
	#if CLIENT @:native("getInt") public static function getInt(name:std.String):Float;#end
	/**
		CLIENT
		Check if the given ConVar exists
	**/
	#if CLIENT @:native("exists") public static function exists(name:std.String):Bool;#end
	/**
		CLIENT
		Returns value of the ConVar as a floating-point number.
	**/
	#if CLIENT @:native("getFloat") public static function getFloat(name:std.String):Float;#end
	/**
		CLIENT
		Returns FCVAR flags of the given ConVar.
		https://wiki.facepunch.com/gmod/Enums/FCVAR
	**/
	#if CLIENT @:native("getFlags") public static function getFlags(name:std.String):Float;#end
	/**
		CLIENT
		Returns the minimum value of the convar
	**/
	#if CLIENT @:native("getMin") public static function getMin(name:std.String):Float;#end
	/**
		CLIENT
		Returns default value of the ConVar
	**/
	#if CLIENT @:native("getDefault") public static function getDefault(name:std.String):std.String;#end
	/**
		CLIENT
		Returns value of the ConVar as a string.
	**/
	#if CLIENT @:native("getString") public static function getString(name:std.String):std.String;#end
	/**
		CLIENT
		Returns true if a given FCVAR flag is set for this ConVar.
	**/
	#if CLIENT @:native("hasFlag") public static function hasFlag(name:std.String, flag:Float):Bool;#end
}

