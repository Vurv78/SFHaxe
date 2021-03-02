package sf.type;
extern class ParticleEmitterData {
	/**
		CLIENT
		 Sets the bounding box for this emitter. Usually the bounding box is automatically determined by the particles, but this function overrides it.
	**/
	@:native("setBBox") public function setBBox(mins:Any,maxs:Any):Void;
	/**
		CLIENT
		 Returns whether this emitter is 3D or not. This is set when creating the emitter with ParticleEmitter.
	**/
	@:native("is3D") public function is3D():Any;
	/**
		CLIENT
		 Returns the position of this emitter. This is set when creating the emitter with ParticleEmitter.
	**/
	@:native("getPos") public function getPos():Any;
	/**
		CLIENT
		 Manually renders all particles the emitter has created.
	**/
	@:native("draw") public function draw():Void;
	/**
		CLIENT
		 Returns number of particles left able to be created from the emitter
	**/
	@:native("getParticlesLeft") public function getParticlesLeft():Any;
	/**
		CLIENT
		 The function name has not much in common with its actual function, it applies a radius to every particles that affects the building of the bounding box, as it, usually is constructed by the particle that has the lowest x, y and z and the highest x, y and z, this function just adds/subtracts the radius and inflates the bounding box.
	**/
	@:native("setParticleCullRadius") public function setParticleCullRadius(radius:Any):Void;
	/**
		CLIENT
		 Prevents all particles of the emitter from automatically drawing. They can be manually drawn with draw()
	**/
	@:native("setNoDraw") public function setNoDraw(noDraw:Any):Void;
	/**
		CLIENT
		 Creates a new Particle with the given material and position.
	**/
	@:native("add") public function add(material:Any,position:Any,startSize:Any,endSize:Any,startLength:Any,endLength:Any,startAlpha:Any,endAlpha:Any,dieTime:Any):Any;
	/**
		CLIENT
		 Removes the emitter, making it no longer usable from Lua. If particles remain, the emitter will be removed when all particles die.
	**/
	@:native("destroy") public function destroy():Void;
	/**
		CLIENT
		 Returns the amount of active particles of this emitter.
	**/
	@:native("getNumActiveParticles") public function getNumActiveParticles():Any;
	/**
		CLIENT
		 Sets the position of the particle emitter.
	**/
	@:native("setPos") public function setPos(position:Any):Void;
	/**
		CLIENT
		 This function sets the the distance between the render camera and the emitter at which the particles should start fading and at which distance fade ends ( alpha becomes 0 ).
	**/
	@:native("setNearClip") public function setNearClip(distanceMin:Any,distanceMax:Any):Void;
	/**
		CLIENT
		 Returns whether this object is valid or not.
	**/
	@:native("isValid") public function isValid():Any;
}

@:forward
extern abstract ParticleEmitter(ParticleEmitterData) {
}

