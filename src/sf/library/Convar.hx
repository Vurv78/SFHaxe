package sf.library;
@:native("convar") extern class Convar {
	/**
		CLIENT
		 Check if the given ConVar exists
	**/
	@:native("exists") public static function exists(name:Any):Any;
	/**
		CLIENT
		 Returns true if a given FCVAR flag is set for this ConVar.
 https://wiki.facepunch.com/gmod/Enums/FCVAR
	**/
	@:native("hasFlag") public static function hasFlag(name:Any):Any;
	/**
		CLIENT
		 Returns value of the ConVar as a whole number.
 Floats values will be floored.
	**/
	@:native("getInt") public static function getInt(name:Any):Any;
	/**
		CLIENT
		 Returns the maximum value of the convar
	**/
	@:native("getMax") public static function getMax(name:Any):Any;
	/**
		CLIENT
		 Returns value of the ConVar as a string.
	**/
	@:native("getString") public static function getString(name:Any):Any;
	/**
		CLIENT
		 Returns value of the ConVar as a boolean.
 True for numeric ConVars with the value of 1, false otherwise.
	**/
	@:native("getBool") public static function getBool(name:Any):Any;
	/**
		CLIENT
		 Returns value of the ConVar as a floating-point number.
	**/
	@:native("getFloat") public static function getFloat(name:Any):Any;
	/**
		CLIENT
		 Returns FCVAR flags of the given ConVar.
 https://wiki.facepunch.com/gmod/Enums/FCVAR
	**/
	@:native("getFlags") public static function getFlags(name:Any):Any;
	/**
		CLIENT
		 Returns default value of the ConVar
	**/
	@:native("getDefault") public static function getDefault(name:Any):Any;
	/**
		CLIENT
		 Returns the minimum value of the convar
	**/
	@:native("getMin") public static function getMin(name:Any):Any;
}

