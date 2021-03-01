package sf.library;
@:native("holograms") extern class Holograms {
	//  SHARED
	/*  Removes all holograms created by the calling chip */
	@:native("removeAll") public static function removeAll():Void;
	//  SHARED
	/*  Checks if a user can spawn anymore holograms. */
	@:native("canSpawn") public static function canSpawn():Any;
	//  SHARED
	/*  Creates a hologram. */
	@:native("create") public static function create(pos:Any,ang:Any,model:Any,scale:Any):Any;
	//  SHARED
	/*  Checks how many holograms can be spawned */
	@:native("hologramsLeft") public static function hologramsLeft():Any;
}

