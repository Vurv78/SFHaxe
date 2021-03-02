package sf.type;
extern class PhysObj {
	/**
		SHARED	
		 Returns a vector in the reference frame of the world from the local frame of the physicsobject
	**/
	@:native("localToWorld") public function localToWorld(vec:Any):Any;
	/**
		SHARED	
		 Sets the movement damping of the bone. Unlike air drag, it doesn't take into account the cross-section of the object.
	**/
	@:native("setDamping") public function setDamping(linear:Any,angular:Any):Void;
	/**
		SHARED	
		 Returns the world transform matrix of the physobj
	**/
	@:native("getMatrix") public function getMatrix():Any;
	/**
		SERVER	
		 Sets the angular velocity of an object
	**/
	@:native("setAngleVelocity") public function setAngleVelocity(angvel:Any):Void;
	/**
		SHARED	
		 Gets the position of the physics object
	**/
	@:native("getPos") public function getPos():Any;
	/**
		SHARED	
		 Gets the angles of the physics object
	**/
	@:native("getAngles") public function getAngles():Any;
	/**
		SHARED	
		 Adds game flags to the physics object. Some flags cannot be modified. Can be:
 FVPHYSICS.DMG_DISSOLVE
 FVPHYSICS.DMG_SLICE
 FVPHYSICS.HEAVY_OBJECT
 FVPHYSICS.NO_IMPACT_DMG
 FVPHYSICS.NO_NPC_IMPACT_DMG
 FVPHYSICS.NO_PLAYER_PICKUP
	**/
	@:native("addGameFlags") public function addGameFlags(flags:Any):Void;
	/**
		SHARED	
		 Sets the bone movement state
	**/
	@:native("enableMotion") public function enableMotion(move:Any):Void;
	/**
		SERVER	
		 Sets the position of the physics object. Will cause interpolation of the entity in clientside, use entity.setPos to avoid this.
	**/
	@:native("setPos") public function setPos(pos:Any):Void;
	/**
		SHARED	
		 Check if bone is affected by air resistance
	**/
	@:native("isDragEnabled") public function isDragEnabled():Any;
	/**
		SHARED	
		 Sets coefficient of air resistance affecting the bone when rotating. Air resistance depends on the cross-section of the object.
	**/
	@:native("setAngleDragCoefficient") public function setAngleDragCoefficient(coeff:Any):Void;
	/**
		SERVER	
		 Applys a torque to a physics object
	**/
	@:native("applyTorque") public function applyTorque(torque:Any):Void;
	/**
		SHARED	
		 Gets the velocity of the physics object
	**/
	@:native("getVelocity") public function getVelocity():Any;
	/**
		SHARED	
		 Returns a vector in the local reference frame of the physicsobject from the world frame
	**/
	@:native("worldToLocal") public function worldToLocal(vec:Any):Any;
	/**
		SHARED	
		 Gets the center of mass of the physics object in the local reference frame.
	**/
	@:native("getMassCenter") public function getMassCenter():Any;
	/**
		SERVER	
		 Makes a physobj go to sleep. (like it's frozen but interacting wakes it back up)
	**/
	@:native("sleep") public function sleep():Void;
	/**
		SERVER	
		 Applys a angular velocity to an object
	**/
	@:native("addAngleVelocity") public function addAngleVelocity(angvel:Any):Void;
	/**
		SHARED	
		 Returns a normal vector in the local reference frame of the physicsobject from the world frame
	**/
	@:native("worldToLocalVector") public function worldToLocalVector(vec:Any):Any;
	/**
		SERVER	
		 Applys an offset force to a physics object
	**/
	@:native("applyForceOffset") public function applyForceOffset(force:Any,position:Any):Void;
	/**
		SERVER	
		 Sets the buoyancy ratio of a physobject
	**/
	@:native("setBuoyancyRatio") public function setBuoyancyRatio(ratio:Any):Void;
	/**
		SHARED	
		 Sets the physical material of a physics object
	**/
	@:native("setMaterial") public function setMaterial(material:Any):Void;
	/**
		SERVER	
		 Sets the mass of a physics object
	**/
	@:native("setMass") public function setMass(mass:Any):Void;
	/**
		SHARED	
		 Gets the mass of the physics object
	**/
	@:native("getMass") public function getMass():Any;
	/**
		SERVER	
		 Makes a sleeping physobj wakeup
	**/
	@:native("wake") public function wake():Void;
	/**
		SHARED	
		 Returns a normal vector in the reference frame of the world from the local frame of the physicsobject
	**/
	@:native("localToWorldVector") public function localToWorldVector(vec:Any):Any;
	/**
		SHARED	
		 Gets the inertia of the physics object
	**/
	@:native("getInertia") public function getInertia():Any;
	/**
		SHARED	
		 Clears game flags from the physics object. Some flags cannot be modified. Can be:
 FVPHYSICS.DMG_DISSOLVE
 FVPHYSICS.DMG_SLICE
 FVPHYSICS.HEAVY_OBJECT
 FVPHYSICS.NO_IMPACT_DMG
 FVPHYSICS.NO_NPC_IMPACT_DMG
 FVPHYSICS.NO_PLAYER_PICKUP
	**/
	@:native("clearGameFlags") public function clearGameFlags(flags:Any):Void;
	/**
		SERVER	
		 Applys a force to the center of the physics object
	**/
	@:native("applyForceCenter") public function applyForceCenter(force:Any):Void;
	/**
		SHARED	
		 Gets the velocity of the physics object at an arbitrary point in its local reference frame
 This includes velocity at the point induced by rotational velocity
	**/
	@:native("getVelocityAtPoint") public function getVelocityAtPoint(vec:Any):Any;
	/**
		SERVER	
		 Sets the velocity of the physics object
	**/
	@:native("setVelocity") public function setVelocity(vel:Any):Void;
	/**
		SHARED	
		 Gets the angular velocity of the physics object
	**/
	@:native("getAngleVelocity") public function getAngleVelocity():Any;
	/**
		SERVER	
		 Sets the inertia of a physics object
	**/
	@:native("setInertia") public function setInertia(inertia:Any):Void;
	/**
		SERVER	
		 Sets the angles of the physics object. Will cause interpolation of the entity in clientside, use entity.setAngles to avoid this.
	**/
	@:native("setAngles") public function setAngles(ang:Any):Void;
	/**
		SHARED	
		 Gets the entity attached to the physics object
	**/
	@:native("getEntity") public function getEntity():Any;
	/**
		SHARED	
		 Gets the axis aligned bounding box of the physics object
	**/
	@:native("getAABB") public function getAABB():Any;
	/**
		SHARED	
		 Returns Movement damping of the bone.
	**/
	@:native("getDamping") public function getDamping():Any;
	/**
		SHARED	
		 Returns a structured table, the physics mesh of the physics object. See: http://wiki.facepunch.com/gmod/Structures/MeshVertex
	**/
	@:native("getMeshConvexes") public function getMeshConvexes():Any;
	/**
		SHARED	
		 Checks if the physics object is valid
	**/
	@:native("isValid") public function isValid():Any;
	/**
		SHARED	
		 Returns whether the game flags of the physics object are set.
	**/
	@:native("hasGameFlags") public function hasGameFlags(flags:Any):Any;
	/**
		SHARED	
		 Gets the material of the physics object
	**/
	@:native("getMaterial") public function getMaterial():Any;
	/**
		SHARED	
		 Sets bone gravity
	**/
	@:native("enableGravity") public function enableGravity(grav:Any):Void;
	/**
		SHARED	
		 Sets the bone drag state
	**/
	@:native("enableDrag") public function enableDrag(drag:Any):Void;
	/**
		SHARED	
		 Sets coefficient of air resistance affecting the bone. Air resistance depends on the cross-section of the object.
	**/
	@:native("setDragCoefficient") public function setDragCoefficient(coeff:Any):Void;
	/**
		SHARED	
		 Returns a table of MeshVertex structures where each 3 vertices represent a triangle. See: http://wiki.facepunch.com/gmod/Structures/MeshVertex
	**/
	@:native("getMesh") public function getMesh():Any;
	/**
		SERVER	
		 Returns table of tables of friction data of a contact against the physobj
 PhysObj Other - The other physics object we came in contact with
 number EnergyAbsorbed -
 number FrictionCoefficient -
 number NormalForce -
 Vector Normal - Direction of the friction event
 Vector ContactPoint - Contact point of the friction event
 number Material - Surface Property ID of our physics obj
 number MaterialOther - Surface Property ID of the physics obj we came in contact with
	**/
	@:native("getFrictionSnapshot") public function getFrictionSnapshot():Any;
	/**
		SERVER	
		 Returns whether the physobj is asleep
	**/
	@:native("isAsleep") public function isAsleep():Any;
}

