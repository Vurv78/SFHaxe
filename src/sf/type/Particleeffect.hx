package sf.type;
extern class ParticleEffect {
	/**
		CLIENT	
		 Sets the sort origin for given particle effect system. This is used as a helper to determine which particles are in front of which.
	**/
	@:native("setSortOrigin") public function setSortOrigin(vector:Any):Void;
	/**
		CLIENT	
		 Restarts emission of the particle effect.
	**/
	@:native("restart") public function restart():Void;
	/**
		CLIENT	
		 Stops emission of the particle effect.
	**/
	@:native("stopEmission") public function stopEmission():Void;
	/**
		CLIENT	
		 Essentially makes child control point follow the parent entity.
	**/
	@:native("setControlPointEntity") public function setControlPointEntity(number:Any,entity:Any):Void;
	/**
		CLIENT	
		 Restarts emission of the particle effect.
	**/
	@:native("isFinished") public function isFinished():Any;
	/**
		CLIENT	
		 Sets the forward direction for given control point.
	**/
	@:native("setControlPointParent") public function setControlPointParent(number:Any,number:Any):Void;
	/**
		CLIENT	
		 Sets a value for given control point.
	**/
	@:native("setControlPoint") public function setControlPoint(number:Any,vector:Any):Void;
	/**
		CLIENT	
		 Sets the right direction for given control point.
	**/
	@:native("setUpVector") public function setUpVector(number:Any,vector:Any):Void;
	/**
		CLIENT	
		 Stops emission of the particle effect and destroys the object.
	**/
	@:native("destroy") public function destroy():Void;
	/**
		CLIENT	
		 Sets the forward direction for given control point.
	**/
	@:native("setForwardVector") public function setForwardVector(number:Any,vector:Any):Void;
	/**
		CLIENT	
		 Starts emission of the particle effect.
	**/
	@:native("startEmission") public function startEmission():Void;
	/**
		CLIENT	
		 Sets the right direction for given control point.
	**/
	@:native("setRightVector") public function setRightVector(number:Any,vector:Any):Void;
	/**
		CLIENT	
		 Gets if the particle effect is valid or not.
	**/
	@:native("isValid") public function isValid():Any;
}

