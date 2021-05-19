// Generated by SFHaxe 0.3.2
package sf.type;
extern class PhysObjData {
	/**
		SERVER
		 Returns whether the physobj is asleep
	**/
	#if SERVER @:native("isAsleep") public function isAsleep():Bool;#end
	/**
		SHARED
		 Sets the movement damping of the bone. Unlike air drag, it doesn't take into account the cross-section of the object.
	**/
	@:native("setDamping") public function setDamping(linear:Float, angular:Float):Void;
	/**
		SHARED
		 Returns a normal vector in the local reference frame of the physicsobject from the world frame
	**/
	@:native("worldToLocalVector") public function worldToLocalVector(vec:sf.type.Vector):sf.type.Vector;
	/**
		SERVER
		 Sets the angles of the physics object. Will cause interpolation of the entity in clientside, use entity.setAngles to avoid this.
	**/
	#if SERVER @:native("setAngles") public function setAngles(ang:sf.type.Angle):Void;#end
	/**
		SHARED
		 Returns a table of MeshVertex structures where each 3 vertices represent a triangle. See: http://wiki.facepunch.com/gmod/Structures/MeshVertex
	**/
	@:native("getMesh") public function getMesh():lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Check if bone is affected by air resistance
	**/
	@:native("isDragEnabled") public function isDragEnabled():Bool;
	/**
		SHARED
		 Gets the inertia of the physics object
	**/
	@:native("getInertia") public function getInertia():sf.type.Vector;
	/**
		SERVER
		 Makes a sleeping physobj wakeup
	**/
	#if SERVER @:native("wake") public function wake():Void;#end
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
	@:native("clearGameFlags") public function clearGameFlags(flags:Float):Void;
	/**
		SHARED
		 Sets the physical material of a physics object
	**/
	@:native("setMaterial") public function setMaterial(materialName:std.String):Void;
	/**
		SERVER
		 Sets the buoyancy ratio of a physobject
	**/
	#if SERVER @:native("setBuoyancyRatio") public function setBuoyancyRatio(ratio:Float):Void;#end
	/**
		SHARED
		 Gets the velocity of the physics object at an arbitrary point in its local reference frame
		 This includes velocity at the point induced by rotational velocity
	**/
	@:native("getVelocityAtPoint") public function getVelocityAtPoint(vec:sf.type.Vector):sf.type.Vector;
	/**
		SHARED
		 Gets the mass of the physics object
	**/
	@:native("getMass") public function getMass():Float;
	/**
		SHARED
		 Sets bone gravity
	**/
	@:native("enableGravity") public function enableGravity(grav:Bool):Void;
	/**
		SHARED
		 Returns Movement damping of the bone.
	**/
	@:native("getDamping") public function getDamping():Float;
	/**
		SHARED
		 Returns a vector in the reference frame of the world from the local frame of the physicsobject
	**/
	@:native("localToWorld") public function localToWorld(vec:sf.type.Vector):sf.type.Vector;
	/**
		SERVER
		 Sets the angular velocity of an object
	**/
	#if SERVER @:native("setAngleVelocity") public function setAngleVelocity(angvel:sf.type.Vector):Void;#end
	/**
		SHARED
		 Returns a normal vector in the reference frame of the world from the local frame of the physicsobject
	**/
	@:native("localToWorldVector") public function localToWorldVector(vec:sf.type.Vector):sf.type.Vector;
	/**
		SERVER
		 Applies a angular velocity to an object
	**/
	#if SERVER @:native("addAngleVelocity") public function addAngleVelocity(angvel:sf.type.Vector):Void;#end
	/**
		SHARED
		 Sets coefficient of air resistance affecting the bone when rotating. Air resistance depends on the cross-section of the object.
	**/
	@:native("setAngleDragCoefficient") public function setAngleDragCoefficient(coeff:Float):Void;
	/**
		SHARED
		 Returns the volume in source units cubed. Or nil if the PhysObj is a generated sphere or box.
	**/
	@:native("getVolume") public function getVolume():Null<Float>;
	/**
		SERVER
		 Applies an offset force to a physics object
	**/
	#if SERVER @:native("applyForceOffset") public function applyForceOffset(force:sf.type.Vector, position:sf.type.Vector):Void;#end
	/**
		SHARED
		 Checks if the physics object is valid
	**/
	@:native("isValid") public function isValid():Bool;
	/**
		SERVER
		 Sets the position of the physics object. Will cause interpolation of the entity in clientside, use entity.setPos to avoid this.
	**/
	#if SERVER @:native("setPos") public function setPos(pos:sf.type.Vector):Void;#end
	/**
		SERVER
		 Applies a force to the center of the physics object
	**/
	#if SERVER @:native("applyForceCenter") public function applyForceCenter(force:sf.type.Vector):Void;#end
	/**
		SHARED
		 Gets the velocity of the physics object
	**/
	@:native("getVelocity") public function getVelocity():sf.type.Vector;
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
	@:native("addGameFlags") public function addGameFlags(flags:Float):Void;
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
	#if SERVER @:native("getFrictionSnapshot") public function getFrictionSnapshot():lua.Table<Dynamic,Dynamic>;#end
	/**
		SERVER
		 Sets the mass of a physics object
	**/
	#if SERVER @:native("setMass") public function setMass(mass:Float):Void;#end
	/**
		SHARED
		 Gets the axis aligned bounding box of the physics object
	**/
	@:native("getAABB") public function getAABB():sf.type.Vector;
	/**
		SHARED
		 Gets the angles of the physics object
	**/
	@:native("getAngles") public function getAngles():sf.type.Angle;
	/**
		SHARED
		 Returns the world transform matrix of the physobj
	**/
	@:native("getMatrix") public function getMatrix():sf.type.VMatrix;
	/**
		SERVER
		 Makes a physobj go to sleep. (like it's frozen but interacting wakes it back up)
	**/
	#if SERVER @:native("sleep") public function sleep():Void;#end
	/**
		SHARED
		 Sets the bone drag state
	**/
	@:native("enableDrag") public function enableDrag(drag:Bool):Void;
	/**
		SHARED
		 Returns a structured table, the physics mesh of the physics object. See: http://wiki.facepunch.com/gmod/Structures/MeshVertex
	**/
	@:native("getMeshConvexes") public function getMeshConvexes():lua.Table<Dynamic,Dynamic>;
	/**
		SERVER
		 Sets the inertia of a physics object
	**/
	#if SERVER @:native("setInertia") public function setInertia(inertia:sf.type.Vector):Void;#end
	/**
		SERVER
		 Applies a torque to a physics object
	**/
	#if SERVER @:native("applyTorque") public function applyTorque(torque:sf.type.Vector):Void;#end
	/**
		SHARED
		 Gets the entity attached to the physics object
	**/
	@:native("getEntity") public function getEntity():sf.type.Entity;
	/**
		SHARED
		 Sets the bone movement state
	**/
	@:native("enableMotion") public function enableMotion(move:Bool):Void;
	/**
		SHARED
		 Gets the angular velocity of the physics object
	**/
	@:native("getAngleVelocity") public function getAngleVelocity():sf.type.Vector;
	/**
		SHARED
		 Returns whether the game flags of the physics object are set.
	**/
	@:native("hasGameFlags") public function hasGameFlags(flags:Float):Bool;
	/**
		SHARED
		 Gets the material of the physics object
	**/
	@:native("getMaterial") public function getMaterial():std.String;
	/**
		SHARED
		 Returns a vector in the local reference frame of the physicsobject from the world frame
	**/
	@:native("worldToLocal") public function worldToLocal(vec:sf.type.Vector):sf.type.Vector;
	/**
		SHARED
		 Gets the position of the physics object
	**/
	@:native("getPos") public function getPos():sf.type.Vector;
	/**
		SERVER
		 Applies velocity to an object
	**/
	#if SERVER @:native("addVelocity") public function addVelocity(vel:sf.type.Vector):Void;#end
	/**
		SERVER
		 Sets the velocity of the physics object
	**/
	#if SERVER @:native("setVelocity") public function setVelocity(vel:sf.type.Vector):Void;#end
	/**
		SHARED
		 Sets coefficient of air resistance affecting the bone. Air resistance depends on the cross-section of the object.
	**/
	@:native("setDragCoefficient") public function setDragCoefficient(coeff:Float):Void;
	/**
		SHARED
		 Gets the center of mass of the physics object in the local reference frame.
	**/
	@:native("getMassCenter") public function getMassCenter():sf.type.Vector;
}

@:forward
extern abstract PhysObj(PhysObjData) {
}

