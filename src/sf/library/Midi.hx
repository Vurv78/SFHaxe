// Generated by SFHaxe 0.3.3
package sf.library;
@:native("midi") extern class Midi {
	/**
		CLIENT
		Opens the midi port to make it available to grab events from.  This must be called before the hook.
	**/
	#if CLIENT @:native("openPort") public static function openPort(port:Float):std.String;#end
	/**
		CLIENT
		Grabs the midi channel from the command.
	**/
	#if CLIENT @:native("getChannel") public static function getChannel(command:Float):Float;#end
	/**
		CLIENT
		Grabs the midi command code from the command.
	**/
	#if CLIENT @:native("getCode") public static function getCode(command:Float):Float;#end
	/**
		CLIENT
		Grabs the command code in a readable name.
	**/
	#if CLIENT @:native("getName") public static function getName(command:Float):std.String;#end
	/**
		CLIENT
		Checks if the specified midi port is currently opened.
	**/
	#if CLIENT @:native("isPortOpen") public static function isPortOpen():Bool;#end
	/**
		CLIENT
		Closes the specified midi port.
	**/
	#if CLIENT @:native("closePort") public static function closePort(port:Float):std.String;#end
	/**
		CLIENT
		Closes all midi ports.
	**/
	#if CLIENT @:native("closeAllPorts") public static function closeAllPorts():Void;#end
	/**
		CLIENT
		Gets a table of all midi devices' ports.
	**/
	#if CLIENT @:native("getPorts") public static function getPorts():lua.Table<Dynamic,Dynamic>;#end
}

