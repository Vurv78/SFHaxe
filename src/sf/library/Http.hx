package sf.library;
@:native("http") extern class Http {
	/**
		SHARED
		 Checks if a new http request can be started
	**/
	@:native("canRequest") public static function canRequest():Void;
	/**
		SHARED
		 Runs a new http POST request
	**/
	@:native("post") public static function post(url:Any,payload:Any,callbackSuccess:Any,callbackFail:Any,headers:Any):Void;
	/**
		SHARED
		 Converts data into base64 format or nil if the string is 0 length
	**/
	@:native("base64Encode") public static function base64Encode(data:Any):Any;
	/**
		SHARED
		 Encodes illegal url characters to be legal
	**/
	@:native("urlEncode") public static function urlEncode(data:Any):Any;
	/**
		SHARED
		 Converts data from base64 format
	**/
	@:native("base64Decode") public static function base64Decode(data:Any):Any;
	/**
		SHARED
		 Runs a new http GET request
	**/
	@:native("get") public static function get(url:Any,callbackSuccess:Any,callbackFail:Any,headers:Any):Void;
}

