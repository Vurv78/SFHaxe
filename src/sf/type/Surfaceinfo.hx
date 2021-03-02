package sf.type;
extern class SurfaceInfo {
	/**
		SHARED	
		 Returns the brush surface's material.
	**/
	@:native("getMaterial") public function getMaterial():Any;
	/**
		SHARED	
		 Checks if the brush surface is water.
 This internally checks the SURFDRAW_WATER flag.
	**/
	@:native("isWater") public function isWater():Any;
	/**
		SHARED	
		 Returns a list of vertices the brush surface is built from.
	**/
	@:native("getVertices") public function getVertices():Any;
	/**
		SHARED	
		 Checks if the brush surface is a nodraw surface, meaning it will not be drawn by the engine.
 This internally checks the SURFDRAW_NODRAW flag.
	**/
	@:native("isNoDraw") public function isNoDraw():Any;
	/**
		SHARED	
		 Checks if the brush surface is displaying the skybox.
 This internally checks the SURFDRAW_SKY flag.
	**/
	@:native("isSky") public function isSky():Any;
}

