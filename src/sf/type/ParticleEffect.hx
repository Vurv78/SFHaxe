// Generated by SFHaxe 0.3.3
package sf.type;
extern class ParticleEffectData {
	/**
		CLIENT
		Essentially makes child control point follow the parent entity.
	**/
	#if CLIENT @:native("setControlPointEntity") public function setControlPointEntity(id:Float, entity:sf.type.Entity):Void;#end
	/**
		CLIENT
		Starts emission of the particle effect.
	**/
	#if CLIENT @:native("startEmission") public function startEmission():Void;#end
	/**
		CLIENT
		Sets the up direction for given control point.
	**/
	#if CLIENT @:native("setUpVector") public function setUpVector(id:Float, up:sf.type.Vector):Void;#end
	/**
		CLIENT
		Sets the parent for given control point.
	**/
	#if CLIENT @:native("setControlPointParent") public function setControlPointParent(id:Float, parentid:Float):Void;#end
	/**
		CLIENT
		Returns if the particle effect is finished
	**/
	#if CLIENT @:native("isFinished") public function isFinished():Bool;#end
	/**
		CLIENT
		Sets the right direction for given control point.
	**/
	#if CLIENT @:native("setRightVector") public function setRightVector(id:Float, right:sf.type.Vector):Void;#end
	/**
		CLIENT
		Stops emission of the particle effect.
	**/
	#if CLIENT @:native("stopEmission") public function stopEmission():Void;#end
	/**
		CLIENT
		Sets the sort origin for given particle effect system. This is used as a helper to determine which particles are in front of which.
	**/
	#if CLIENT @:native("setSortOrigin") public function setSortOrigin(origin:sf.type.Vector):Void;#end
	/**
		CLIENT
		Sets the forward direction for given control point.
	**/
	#if CLIENT @:native("setForwardVector") public function setForwardVector(id:Float, fwd:sf.type.Vector):Void;#end
	/**
		CLIENT
		Stops emission of the particle effect and destroys the object.
	**/
	#if CLIENT @:native("destroy") public function destroy():Void;#end
	/**
		CLIENT
		Gets if the particle effect is valid or not.
	**/
	#if CLIENT @:native("isValid") public function isValid():Bool;#end
	/**
		CLIENT
		Sets a value for given control point.
	**/
	#if CLIENT @:native("setControlPoint") public function setControlPoint(id:Float, value:sf.type.Vector):Void;#end
	/**
		CLIENT
		Restarts emission of the particle effect.
	**/
	#if CLIENT @:native("restart") public function restart():Void;#end
}

@:forward
extern abstract ParticleEffect(ParticleEffectData) {
}

