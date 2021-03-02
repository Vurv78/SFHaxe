package sf.type;
extern class Markup {
	/**
		CLIENT	
		 Get the object size
	**/
	@:native("getSize") public function getSize():Any;
	/**
		CLIENT	
		 Draw the markup object
	**/
	@:native("draw") public function draw(x:Any,y:Any,xalign:Any,yalign:Any,a:Any):Void;
	/**
		CLIENT	
		 Get the object width
	**/
	@:native("getWidth") public function getWidth():Any;
	/**
		CLIENT	
		 Get the object height
	**/
	@:native("getHeight") public function getHeight():Any;
}

