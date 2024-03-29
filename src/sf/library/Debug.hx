// Generated by SFHaxe 0.3.3
package sf.library;
@:native("debug") extern class Debug {
	/**
		SHARED
		GLua's debug.getinfo()
		Returns a DebugInfo structure containing the passed function's info https://wiki.facepunch.com/gmod/Structures/DebugInfo
	**/
	@:native("getinfo") public static function getinfo(funcOrStackLevel:Dynamic, ?fields:Null<std.String>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		GLua's debug.traceback()
		Returns a string containing traceback info
	**/
	@:native("traceback") public static function traceback(?A:Null<lua.Thread>, ?message:Null<std.String>):Null<Float>;
	/**
		SHARED
		GLua's debug.getlocal()
		Returns the name of a function or stack's locals
	**/
	@:native("getlocal") public static function getlocal(funcOrStackLevel:Dynamic, index:Float):std.String;
}

