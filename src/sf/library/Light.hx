package sf.library;
@:native("light") extern class Light {
	/**
		CLIENT	
		 Creates a dynamic light (make sure to draw it)
	**/
	@:native("create") public static function create(pos:Any,size:Any,brightness:Any,color:Any):Any;
}

