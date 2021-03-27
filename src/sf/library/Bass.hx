// Generated by SFHaxe 0.3.0
package sf.library;
@:native("bass") extern class Bass {
	/**
		CLIENT
		 Loads a sound channel from an URL.
	**/
	#if CLIENT @:native("loadURL") public static function loadURL(path:std.String, flags:std.String, callback:haxe.Constraints.Function):Void;#end
	/**
		CLIENT
		 Loads a sound channel from a file.
	**/
	#if CLIENT @:native("loadFile") public static function loadFile(path:std.String, flags:std.String, callback:haxe.Constraints.Function):Void;#end
	/**
		CLIENT
		 Returns the number of sounds left that can be created
	**/
	#if CLIENT @:native("soundsLeft") public static function soundsLeft():Float;#end
}

