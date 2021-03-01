package sf.library;
@:native("bit") extern class Bit {
	//  SHARED
	/*  */
	@:native("rol") public static function rol():Void;
	//  SHARED
	/*  */
	@:native("ror") public static function ror():Void;
	//  SHARED
	/*  Compresses a string */
	@:native("compress") public static function compress(s:Any):Any;
	//  SHARED
	/*  */
	@:native("bnot") public static function bnot():Void;
	//  SHARED
	/*  */
	@:native("lshift") public static function lshift():Void;
	//  SHARED
	/*  */
	@:native("tohex") public static function tohex():Void;
	//  SHARED
	/*  Converts serialized string data to table */
	@:native("stringToTable") public static function stringToTable(s:Any):Any;
	//  SHARED
	/*  */
	@:native("bor") public static function bor():Void;
	//  SHARED
	/*  */
	@:native("bswap") public static function bswap():Void;
	//  SHARED
	/*  Converts a table to string serializing data types as best as it can */
	@:native("tableToString") public static function tableToString(t:Any):Any;
	//  SHARED
	/*  */
	@:native("rshift") public static function rshift():Void;
	//  SHARED
	/*  */
	@:native("arshift") public static function arshift():Void;
	//  SHARED
	/*  */
	@:native("bxor") public static function bxor():Void;
	//  SHARED
	/*  */
	@:native("tobit") public static function tobit():Void;
	//  SHARED
	/*  Creates a StringStream object */
	@:native("stringstream") public static function stringstream(stream:Any,i:Any,endian:Any):Void;
	//  SHARED
	/*  Decompresses a string */
	@:native("decompress") public static function decompress(s:Any):Any;
	//  SHARED
	/*  */
	@:native("band") public static function band():Void;
}
