// Generated by SFHaxe 0.3.3
package sf.library;
@:native("sounds") extern class Sounds {
	/**
		SHARED
		Returns the sound duration in seconds. May not work for all file-types on linux/macos
	**/
	@:native("duration") public static function duration(path:std.String):Float;
	/**
		SHARED
		Returns if a sound is able to be created
	**/
	@:native("canCreate") public static function canCreate():Bool;
	/**
		SHARED
		Creates a sound and attaches it to an entity
	**/
	@:native("create") public static function create(ent:sf.type.Entity, path:std.String, ?nofilter:Null<Bool>):sf.type.Sound;
	/**
		SHARED
		Returns the number of sounds left that can be created
	**/
	@:native("soundsLeft") public static function soundsLeft():Float;
}

