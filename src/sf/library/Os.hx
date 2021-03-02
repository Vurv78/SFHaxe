package sf.library;
@:native("os") extern class Os {
	/**
		SHARED
		 Returns the date/time as a formatted string or in a table.
 See https://wiki.facepunch.com/gmod/Structures/DateData for the table structure
	**/
	@:native("date") public static function date(format:Any,time:Any):Any;
	/**
		SHARED
		 Returns the system time in seconds past the unix epoch.
 If a table is supplied, the function attempts to build a system time with the specified table members
	**/
	@:native("time") public static function time(dateData:Any):Any;
	/**
		SHARED
		 Returns the approximate cpu time the application ran.
 This function has different precision on Linux (1/100).
	**/
	@:native("clock") public static function clock():Any;
	/**
		SHARED
		 Subtracts the second of the first value and rounds the result
	**/
	@:native("difftime") public static function difftime(timeA:Any,timeB:Any):Any;
}

