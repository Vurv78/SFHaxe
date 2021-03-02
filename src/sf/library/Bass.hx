package sf.library;
@:native("bass") extern class Bass {
	/**
		CLIENT	
		 Loads a sound channel from an URL.
	**/
	@:native("loadURL") public static function loadURL(path:Any,flags:Any,callback:Any):Void;
	/**
		CLIENT	
		 Loads a sound channel from a file.
	**/
	@:native("loadFile") public static function loadFile(path:Any,flags:Any,callback:Any):Void;
	/**
		CLIENT	
		 Returns the number of sounds left that can be created
	**/
	@:native("soundsLeft") public static function soundsLeft():Any;
}

