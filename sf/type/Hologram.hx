package sf.type;
extern class Hologram {
	//  SERVER
	/*  Sets the hologram's angular velocity. */
	@:native("setAngVel") public function setAngVel(angvel:Any):Void;
	//  SHARED
	/*  Animates a hologram */
	@:native("setAnimation") public function setAnimation(animation:Any,frame:Any,rate:Any):Void;
	//  SHARED
	/*  Suppress Engine Lighting of a hologram. Disabled by default. */
	@:native("suppressEngineLighting") public function suppressEngineLighting(suppress:Any):Void;
	//  SHARED
	/*  Sets the hologram scale. Basically the same as setRenderMatrix() with a scaled matrix */
	@:native("setScale") public function setScale(scale:Any):Void;
	//  SHARED
	/*  Gets the hologram scale. */
	@:native("getScale") public function getScale():Any;
	//  CLIENT
	/*  Manually draws a hologram, requires a 3d render context */
	@:native("draw") public function draw():Void;
	//  CLIENT
	/*  Sets the texture filtering function when viewing a close texture */
	@:native("setFilterMag") public function setFilterMag(val:Any):Void;
	//  SHARED
	/*  Applies engine effects to the hologram */
	@:native("addEffects") public function addEffects(effect:Any):Void;
	//  CLIENT
	/*  Sets a hologram entity's rendermatrix */
	@:native("setRenderMatrix") public function setRenderMatrix(mat:Any):Void;
	//  SHARED
	/*  Sets the hologram's position. */
	@:native("setPos") public function setPos(vec:Any):Void;
	//  SHARED
	/*  Sets the hologram's angles. */
	@:native("setAngles") public function setAngles(ang:Any):Void;
	//  SHARED
	/*  Sets the model of a hologram */
	@:native("setModel") public function setModel(model:Any):Void;
	//  SHARED
	/*  Suppress Engine Lighting of a hologram. Disabled by default. */
	@:native("getSuppressEngineLighting") public function getSuppressEngineLighting(suppress:Any):Void;
	//  SHARED
	/*  Removes engine effects from the hologram */
	@:native("removeEffects") public function removeEffects(effect:Any):Void;
	//  SHARED
	/*  Removes a hologram */
	@:native("remove") public function remove():Void;
	//  SERVER
	/*  Sets the hologram linear velocity */
	@:native("setVel") public function setVel(vel:Any):Void;
	//  SHARED
	/*  Parents a hologram */
	@:native("setParent") public function setParent(ent:Any,attachment:Any):Void;
	//  SHARED
	/*  Sets the hologram size in game units */
	@:native("setSize") public function setSize(size:Any):Void;
	//  SHARED
	/*  Updates a clip plane */
	@:native("setClip") public function setClip(index:Any,enabled:Any,origin:Any,normal:Any,entity:Any):Void;
	//  CLIENT
	/*  Sets the texture filtering function when viewing a far texture */
	@:native("setFilterMin") public function setFilterMin(val:Any):Void;
}

