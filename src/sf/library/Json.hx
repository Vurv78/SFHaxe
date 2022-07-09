// Generated by SFHaxe 0.3.3
package sf.library;
@:native("json") extern class Json {
	/**
		SHARED
		Convert JSON string to table
	**/
	@:native("decode") public static function decode(s:std.String):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		Convert table to JSON string
	**/
	@:native("encode") public static function encode(tbl:lua.Table<Dynamic,Dynamic>, ?prettyPrint:Null<Bool>):std.String;
}

