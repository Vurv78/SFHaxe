package sf.library;
@:native("effect") extern class Effect {
	/**
		SHARED
		 Creates an effect data structure
	**/
	@:native("create") public static function create():Any;
	/**
		CLIENT
		 Returns number of particle emitters left able to be created
	**/
	@:native("particleEmittersLeft") public static function particleEmittersLeft():Any;
	/**
		SHARED
		 Returns number of effects able to be created
	**/
	@:native("effectsLeft") public static function effectsLeft():Any;
}

