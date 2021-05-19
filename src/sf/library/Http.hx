// Generated by SFHaxe 0.3.2
package sf.library;
@:native("http") extern class Http {
	/**
		SHARED
		 Runs a new http POST request
	**/
	@:native("post") public static function post(url:std.String, ?payload:Null<lua.Table<Dynamic,Dynamic>>, ?callbackSuccess:Null<haxe.Constraints.Function>, ?callbackFail:Null<haxe.Constraints.Function>, ?headers:Null<lua.Table<Dynamic,Dynamic>>):Void;
	/**
		SHARED
		 Converts data from base64 format
	**/
	@:native("base64Decode") public static function base64Decode(data:std.String):std.String;
	/**
		SHARED
		 Encodes illegal url characters to be legal
	**/
	@:native("urlEncode") public static function urlEncode(data:std.String):std.String;
	/**
		SHARED
		 Converts data into base64 format or nil if the string is 0 length
	**/
	@:native("base64Encode") public static function base64Encode(data:std.String):std.String;
	/**
		SHARED
		 Runs a new http GET request
	**/
	@:native("get") public static function get(url:std.String, callbackSuccess:haxe.Constraints.Function, ?callbackFail:Null<haxe.Constraints.Function>, ?headers:Null<lua.Table<Dynamic,Dynamic>>):Void;
	/**
		SHARED
		 Checks if a new http request can be started
	**/
	@:native("canRequest") public static function canRequest():Void;
}

