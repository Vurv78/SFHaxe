package sf.library;
@:native("sounds") extern class Sounds {
	/**
		SHARED	
		 Returns the number of sounds left that can be created
	**/
	@:native("soundsLeft") public static function soundsLeft():Any;
	/**
		SHARED	
		 Creates a sound and attaches it to an entity
	**/
	@:native("create") public static function create(ent:Any,path:Any,nofilter:Any):Any;
	/**
		SHARED	
		 Returns if a sound is able to be created
	**/
	@:native("canCreate") public static function canCreate():Any;
}

