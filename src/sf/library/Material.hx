package sf.library;
@:native("material") extern class Material {
	/**
		CLIENT	
		 Returns a float keyvalue of a material
	**/
	@:native("getFloat") public static function getFloat(path:Any,key:Any):Any;
	/**
		CLIENT	
		 Creates a .jpg or .png material from file
 Can't be modified
	**/
	@:native("createFromImage") public static function createFromImage(path:Any,params:Any):Void;
	/**
		CLIENT	
		 Returns a matrix keyvalue of a material
	**/
	@:native("getMatrix") public static function getMatrix(path:Any,key:Any):Any;
	/**
		CLIENT	
		 Returns a linear color-corrected vector keyvalue of a material
	**/
	@:native("getVectorLinear") public static function getVectorLinear(path:Any,key:Any):Any;
	/**
		CLIENT	
		 Returns the width of the member texture set for $basetexture of a material
	**/
	@:native("getWidth") public static function getWidth(path:Any):Any;
	/**
		CLIENT	
		 Returns a table of keyvalues from a material
	**/
	@:native("getKeyValues") public static function getKeyValues(path:Any):Any;
	/**
		CLIENT	
		 Returns a color pixel value of the $basetexture of a .png or .jpg material.
	**/
	@:native("getColor") public static function getColor(path:Any,x:Any,y:Any):Any;
	/**
		CLIENT	
		 Returns the shader name of a material
	**/
	@:native("getShader") public static function getShader(path:Any):Any;
	/**
		CLIENT	
		 Returns a material's engine name
	**/
	@:native("getName") public static function getName(path:Any):Any;
	/**
		CLIENT	
		 Loads a .vmt material or existing material. Throws an error if the material fails to load
 Existing created materials can be loaded with ! prepended to the name
 Can't be modified
	**/
	@:native("load") public static function load(path:Any):Any;
	/**
		CLIENT	
		 Gets a texture from a material
	**/
	@:native("getTexture") public static function getTexture(path:Any,texture:Any):Any;
	/**
		CLIENT	
		 Returns a string keyvalue
	**/
	@:native("getString") public static function getString(path:Any,key:Any):Any;
	/**
		CLIENT	
		 Returns a vector keyvalue of a material
	**/
	@:native("getVector") public static function getVector(path:Any,key:Any):Any;
	/**
		CLIENT	
		 Returns an int keyvalue of a material
	**/
	@:native("getInt") public static function getInt(path:Any,key:Any):Any;
	/**
		CLIENT	
		 Creates a new blank material
 UnlitGeneric
 VertexLitGeneric
 Refract_DX90
 Water_DX90
 Sky_DX9
 gmodscreenspace
 Modulate_DX9
	**/
	@:native("create") public static function create(shader:Any):Void;
	/**
		CLIENT	
		 Returns the height of the member texture set for $basetexture of a material
	**/
	@:native("getHeight") public static function getHeight(path:Any):Any;
}

