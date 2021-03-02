package sf.type;
extern class Material {
	/**
		CLIENT	
		 Returns a float keyvalue
	**/
	@:native("getFloat") public function getFloat(key:Any):Any;
	/**
		CLIENT	
		 Refreshes the material. Sometimes needed for certain parameters to update
	**/
	@:native("recompute") public function recompute():Void;
	/**
		CLIENT	
		 Returns a matrix keyvalue
	**/
	@:native("getMatrix") public function getMatrix(key:Any):Any;
	/**
		CLIENT	
		 Returns a color pixel value of the $basetexture of a .png or .jpg material.
	**/
	@:native("getColor") public function getColor(x:Any,y:Any):Any;
	/**
		CLIENT	
		 Returns an int keyvalue
	**/
	@:native("getInt") public function getInt(key:Any):Any;
	/**
		CLIENT	
		 Sets an int keyvalue
	**/
	@:native("setInt") public function setInt(key:Any,v:Any):Void;
	/**
		CLIENT	
		 Returns a texture id keyvalue
	**/
	@:native("getTexture") public function getTexture(key:Any):Any;
	/**
		CLIENT	
		 Sets a float keyvalue
	**/
	@:native("setFloat") public function setFloat(key:Any,v:Any):Void;
	/**
		CLIENT	
		 Gets the base texture set to the material's height
	**/
	@:native("getHeight") public function getHeight():Any;
	/**
		CLIENT	
		 Gets the base texture set to the material's width
	**/
	@:native("getWidth") public function getWidth():Any;
	/**
		CLIENT	
		 Sets a keyvalue to be undefined
	**/
	@:native("setUndefined") public function setUndefined(key:Any):Void;
	/**
		CLIENT	
		 Returns a linear color-corrected vector keyvalue
	**/
	@:native("getVectorLinear") public function getVectorLinear(key:Any):Any;
	/**
		CLIENT	
		 Sets a texture keyvalue
	**/
	@:native("setTexture") public function setTexture(key:Any,v:Any):Void;
	/**
		CLIENT	
		 Returns a table of material keyvalues
	**/
	@:native("getKeyValues") public function getKeyValues():Any;
	/**
		CLIENT	
		 Returns the material's engine name
	**/
	@:native("getName") public function getName():Any;
	/**
		CLIENT	
		 Free's a user created material allowing you to create others
	**/
	@:native("destroy") public function destroy():Void;
	/**
		CLIENT	
		 Sets a vector keyvalue
	**/
	@:native("setVector") public function setVector(key:Any,v:Any):Void;
	/**
		CLIENT	
		 Returns the shader name of the material
	**/
	@:native("getShader") public function getShader():Any;
	/**
		CLIENT	
		 Sets a matrix keyvalue
	**/
	@:native("setMatrix") public function setMatrix(key:Any,v:Any):Void;
	/**
		CLIENT	
		 Sets a string keyvalue
	**/
	@:native("setString") public function setString(key:Any,v:Any):Void;
	/**
		CLIENT	
		 Returns a vector keyvalue
	**/
	@:native("getVector") public function getVector(key:Any):Any;
	/**
		CLIENT	
		 Sets a rendertarget texture to the specified texture key
	**/
	@:native("setTextureRenderTarget") public function setTextureRenderTarget(key:Any,name:Any):Void;
	/**
		CLIENT	
		 Returns a string keyvalue
	**/
	@:native("getString") public function getString(key:Any):Any;
	/**
		CLIENT	
		 Loads an online image or base64 data to the specified texture key
 If the texture in key is not set to a rendertarget, a rendertarget will be created and used.
	**/
	@:native("setTextureURL") public function setTextureURL(key:Any,url:Any,cb:Any,done:Any):Void;
}

