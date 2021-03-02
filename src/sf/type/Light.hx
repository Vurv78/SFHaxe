package sf.type;
extern class LightData {
	/**
		CLIENT
		 Sets whether the light should cast onto the world or not
	**/
	@:native("setNoWorld") public function setNoWorld(on:Any):Void;
	/**
		CLIENT
		 Sets the light outer angle (used with setDirection and setInnerAngle)
	**/
	@:native("setOuterAngle") public function setOuterAngle(ang:Any):Void;
	/**
		CLIENT
		 Sets the light inner angle (used with setDirection and setOuterAngle)
	**/
	@:native("setInnerAngle") public function setInnerAngle(ang:Any):Void;
	/**
		CLIENT
		 Sets the flicker style of the light https://developer.valvesoftware.com/wiki/Light_dynamic#Appearances
	**/
	@:native("setStyle") public function setStyle(style:Any):Void;
	/**
		CLIENT
		 Sets the color of the light
	**/
	@:native("setColor") public function setColor(color:Any):Void;
	/**
		CLIENT
		 Sets the light brightness
	**/
	@:native("setBrightness") public function setBrightness(brightness:Any):Void;
	/**
		CLIENT
		 Sets the light lifespan (Required for fade effect i.e. decay)
	**/
	@:native("setDieTime") public function setDieTime(dietime:Any):Void;
	/**
		CLIENT
		 Draws the light. Typically used in the think hook. Will throw an error if it fails (use pcall)
	**/
	@:native("draw") public function draw():Void;
	/**
		CLIENT
		 Sets the size of the light (max is sf_light_maxsize)
	**/
	@:native("setSize") public function setSize(size:Any):Void;
	/**
		CLIENT
		 Sets the minimum light amount
	**/
	@:native("setMinLight") public function setMinLight(min:Any):Void;
	/**
		CLIENT
		 Sets the light decay speed in thousandths per second. 1000 lasts for 1 second, 2000 lasts for 0.5 seconds
	**/
	@:native("setDecay") public function setDecay(decay:Any):Void;
	/**
		CLIENT
		 Sets the light position
	**/
	@:native("setPos") public function setPos(pos:Any):Void;
	/**
		CLIENT
		 Sets whether the light should cast onto models or not
	**/
	@:native("setNoModel") public function setNoModel(on:Any):Void;
	/**
		CLIENT
		 Sets the light direction (used with setInnerAngle and setOuterAngle)
	**/
	@:native("setDirection") public function setDirection(dir:Any):Void;
}

@:forward
extern abstract Light(LightData) {
}

