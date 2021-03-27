// Generated by SFHaxe 0.3.0
package sf.library;
@:native("holograms") extern class Holograms {
	/**
		SHARED
		 Removes all holograms created by the calling chip
	**/
	@:native("removeAll") public static function removeAll():Void;
	/**
		SHARED
		 Checks if a user can spawn anymore holograms.
	**/
	@:native("canSpawn") public static function canSpawn():Bool;
	/**
		SHARED
		 Creates a hologram.
	**/
	@:native("create") public static function create(pos:sf.type.Vector, ang:sf.type.Angle, model:std.String, ?scale:Null<sf.type.Vector>):sf.type.Hologram;
	/**
		SHARED
		 Checks how many holograms can be spawned
	**/
	@:native("hologramsLeft") public static function hologramsLeft():Float;
}

