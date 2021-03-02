package sf.type;
extern class ParticleData {
	/**
		CLIENT
		 Sets the velocity of the particle.
	**/
	@:native("setVelocity") public function setVelocity(vel:Any):Void;
	/**
		CLIENT
		 Sets the angular velocity of the the particle.
	**/
	@:native("setAngleVelocity") public function setAngleVelocity(angVel:Any):Void;
	/**
		CLIENT
		 Returns the absolute position of the particle.
	**/
	@:native("getPos") public function getPos():Any;
	/**
		CLIENT
		 Returns the current orientation of the particle.
	**/
	@:native("getAngles") public function getAngles():Any;
	/**
		CLIENT
		 Scales the velocity based on the particle speed.
	**/
	@:native("setVelocityScale") public function setVelocityScale(doScale:Any):Void;
	/**
		CLIENT
		 Sets the absolute position of the particle.
	**/
	@:native("setPos") public function setPos(pos:Any):Void;
	/**
		CLIENT
		 Returns the current rotation of the particle in radians, this should only be used for 2D particles.
	**/
	@:native("getRoll") public function getRoll():Any;
	/**
		CLIENT
		 Sets the directional gravity aka. acceleration of the particle.
	**/
	@:native("setGravity") public function setGravity(gravity:Any):Void;
	/**
		CLIENT
		 Returns the angular velocity of the particle
	**/
	@:native("getAngleVelocity") public function getAngleVelocity():Any;
	/**
		CLIENT
		 Sets the color of the particle.
	**/
	@:native("setColor") public function setColor(col:Any):Void;
	/**
		CLIENT
		 Returns the color of the particle.
	**/
	@:native("getColor") public function getColor():Any;
	/**
		CLIENT
		 Returns the current velocity of the particle.
	**/
	@:native("getVelocity") public function getVelocity():Any;
	/**
		CLIENT
		 Sets the rotation speed of the particle in radians. This should only be used for 2D particles.
	**/
	@:native("setRollDelta") public function setRollDelta(rollDelta:Any):Void;
	/**
		CLIENT
		 Sets whether the particle should be affected by lighting.
	**/
	@:native("setLighting") public function setLighting(useLighting:Any):Void;
	/**
		CLIENT
		 Sets the whether the particle should collide with the world or not.
	**/
	@:native("setCollide") public function setCollide(shouldCollide:Any):Void;
	/**
		CLIENT
		 Sets the material of the particle.
	**/
	@:native("setMaterial") public function setMaterial(mat:Any):Void;
	/**
		CLIENT
		 Sets the roll of the particle in radians. This should only be used for 2D particles.
	**/
	@:native("setRoll") public function setRoll(roll:Any):Void;
	/**
		CLIENT
		 Sets the 'bounciness' of the the particle.
	**/
	@:native("setBounce") public function setBounce(bounce:Any):Void;
	/**
		CLIENT
		 Sets the air resistance of the the particle.
	**/
	@:native("setAirResistance") public function setAirResistance(airResistance:Any):Void;
	/**
		CLIENT
		 Sets the angles of the particle.
	**/
	@:native("setAngles") public function setAngles(ang:Any):Void;
}

@:forward
extern abstract Particle(ParticleData) {
}

