package sf.library;
@:native("json") extern class Json {
	/**
		SHARED	
		 Convert table to JSON string
	**/
	@:native("encode") public static function encode(tbl:Any,prettyPrint:Any):Any;
	/**
		SHARED	
		 Convert JSON string to table
	**/
	@:native("decode") public static function decode(s:Any):Any;
}

