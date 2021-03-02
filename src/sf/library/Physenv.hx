package sf.library;
@:native("physenv") extern class Physenv {
	/**
		SHARED
		 Gets the air density.
	**/
	@:native("getAirDensity") public static function getAirDensity():Any;
	/**
		SHARED
		 Gets the performance settings.</br>
 See http://wiki.facepunch.com/gmod/Structures/PhysEnvPerformanceSettings for table structure.
	**/
	@:native("getPerformanceSettings") public static function getPerformanceSettings():Any;
	/**
		SHARED
		 Gets the gravity vector
	**/
	@:native("getGravity") public static function getGravity():Any;
}

