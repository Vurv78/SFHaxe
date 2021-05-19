// Generated by SFHaxe 0.3.2
package sf.type;
extern class EntityData {
	/**
		SHARED
		 Gets the CPU Time max of the specified starfall of the specified starfall or expression2.
		 CPU Time is stored in a buffer of N elements, if the average of this exceeds quotaMax, the chip will error.
	**/
	@:native("getQuotaMax") public function getQuotaMax():Float;
	/**
		SERVER
		 Sets the entity's angles
	**/
	#if SERVER @:native("setAngles") public function setAngles(ang:sf.type.Angle):Void;#end
	/**
		SHARED
		 Returns the timer.curtime() time the entity was created on
	**/
	@:native("getCreationTime") public function getCreationTime():Float;
	/**
		SHARED
		 Returns the bodygroup index of the entity with given name
	**/
	@:native("lookupBodygroup") public function lookupBodygroup(name:std.String):Float;
	/**
		SERVER
		 Sets a component's ability to lock a player's controls
	**/
	#if SERVER @:native("setComponentLocksControls") public function setComponentLocksControls(enable:Bool):Void;#end
	/**
		CLIENT
		 Draws the entity, requires 3D rendering context
		 Only certain, whitelisted entities can be drawn. They can't be parented or have RenderOverride defined
		 Use Entity.canDraw to check if you can draw the entity
	**/
	#if CLIENT @:native("draw") public function draw():Void;#end
	/**
		SHARED
		 Returns the principle moments of inertia of the entity
	**/
	@:native("getInertia") public function getInertia():sf.type.Vector;
	/**
		SHARED
		 Returns a list of components linked to a processor. Can also return vehicles linked to a HUD, but only through the server.
	**/
	@:native("getLinkedComponents") public function getLinkedComponents():lua.Table<Dynamic,Dynamic>;
	/**
		SERVER
		 Set's the entity to collide with nothing but the world. Alias to entity:setCollisionGroup(COLLISION_GROUP_WORLD)
	**/
	#if SERVER @:native("setNocollideAll") public function setNocollideAll(nocollide:Bool):Void;#end
	/**
		SHARED
		 Get the pose value of an animation
	**/
	@:native("getPose") public function getPose(pose:std.String):Float;
	/**
		SHARED
		 Returns the entity's model bounds. This is different than the collision bounds/hull.
		 This is not scaled with Entity:SetModelScale and will return the model's original, unmodified mins and maxs.
	**/
	@:native("getModelBounds") public function getModelBounds():sf.type.Vector;
	/**
		SHARED
		 Gets a datatable vector
	**/
	@:native("getDTVector") public function getDTVector(key:Float):Null<sf.type.Vector>;
	/**
		SERVER
		 Sets entity gravity
	**/
	#if SERVER @:native("enableGravity") public function enableGravity(grav:Bool):Void;#end
	/**
		SHARED
		 Returns the number manipulate jiggle of the bone (0 - 255)
	**/
	@:native("getManipulateBoneJiggle") public function getManipulateBoneJiggle(?bone:Null<Float>):Float;
	/**
		SHARED
		 Converts an angle in entity local space to world space
	**/
	@:native("localToWorldAngles") public function localToWorldAngles(data:sf.type.Angle):sf.type.Angle;
	/**
		SHARED
		 Checks if entity is marked as persistent
	**/
	@:native("getPersistent") public function getPersistent():Bool;
	/**
		SERVER
		 Set the angular velocity of an object
	**/
	#if SERVER @:native("setAngleVelocity") public function setAngleVelocity(angvel:sf.type.Vector):Void;#end
	/**
		SHARED
		 Sets the scale of the entity flexes
	**/
	@:native("setFlexScale") public function setFlexScale(scale:Float):Void;
	/**
		SHARED
		 Gets the render mode of the entity
	**/
	@:native("getRenderMode") public function getRenderMode():Float;
	/**
		SHARED
		 Checks if the entity ONGROUND flag is set
	**/
	@:native("isOnGround") public function isOnGround():Bool;
	/**
		SERVER
		 Applies linear force to the entity with an offset
	**/
	#if SERVER @:native("applyForceOffset") public function applyForceOffset(force:sf.type.Vector, position:sf.type.Vector):Void;#end
	/**
		SHARED
		 Gets the entity's up vector
	**/
	@:native("getUp") public function getUp():sf.type.Vector;
	/**
		SERVER
		 Sets the entitiy's position. No interpolation will occur clientside, use physobj.setPos to have interpolation.
	**/
	#if SERVER @:native("setPos") public function setPos(vec:sf.type.Vector):Void;#end
	/**
		SHARED
		 Gets the bone the given hitbox is attached to.
	**/
	@:native("getHitBoxBone") public function getHitBoxBone(hitbox:Float, group:Float):Float;
	/**
		SHARED
		 Set the pose value of an animation. Turret/Head angles for example.
	**/
	@:native("setPose") public function setPose(pose:std.String, value:Float):Void;
	/**
		SHARED
		 Returns entity's current hit box set.
	**/
	@:native("getHitBoxSet") public function getHitBoxSet():Null<Float>;
	/**
		SHARED
		 Gets a datatable float
	**/
	@:native("getDTFloat") public function getDTFloat(key:Float):Null<Float>;
	/**
		SHARED
		 Checks if an entity is an npc.
	**/
	@:native("isNPC") public function isNPC():Bool;
	/**
		SERVER
		 Sets the entity drag state
	**/
	#if SERVER @:native("enableDrag") public function enableDrag(drag:Bool):Void;#end
	/**
		SHARED
		 Gets a datatable string
	**/
	@:native("getDTString") public function getDTString(key:Float):Null<std.String>;
	/**
		SHARED
		 Gets the position and angle of an attachment
	**/
	@:native("getAttachment") public function getAttachment(index:Float):Null<sf.type.Vector>;
	/**
		SERVER
		 Sets the entity movement state
	**/
	#if SERVER @:native("enableMotion") public function enableMotion(move:Bool):Void;#end
	/**
		SHARED
		 Marks entity as persistent, disallowing players from physgunning it. Persistent entities save on server shutdown when sbox_persist is set
	**/
	@:native("setPersistent") public function setPersistent(persist:Bool):Void;
	/**
		SHARED
		 Returns the angular velocity of the entity
	**/
	@:native("getAngleVelocity") public function getAngleVelocity():sf.type.Vector;
	/**
		SHARED
		 Sets the render mode of the entity
	**/
	@:native("setRenderMode") public function setRenderMode(rendermode:Float):Void;
	/**
		SHARED
		 Gets the entity's eye angles
	**/
	@:native("getEyeAngles") public function getEyeAngles():sf.type.Angle;
	/**
		SHARED
		 Returns entity's number of hitbox sets.
	**/
	@:native("getHitBoxSetCount") public function getHitBoxSetCount():Float;
	/**
		SHARED
		 Gets the scale of the entity flexes
	**/
	@:native("getFlexScale") public function getFlexScale():Float;
	/**
		SHARED
		 Returns the amount of skins of the entity
	**/
	@:native("getSkinCount") public function getSkinCount():Float;
	/**
		SHARED
		 Returns a table of flexname -> flexid pairs for use in flex functions.
	**/
	@:native("getFlexes") public function getFlexes():lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Returns the position of the entity
	**/
	@:native("getPos") public function getPos():sf.type.Vector;
	/**
		SHARED
		 Converts an angle in world space to entity local space
	**/
	@:native("worldToLocalAngles") public function worldToLocalAngles(data:sf.type.Angle):sf.type.Angle;
	/**
		SHARED
		 Returns the local position of the entity's mass center
	**/
	@:native("getMassCenter") public function getMassCenter():sf.type.Vector;
	/**
		SHARED
		 Returns the current count for this Think's CPU Time of the specified starfall.
		 This value increases as more executions are done, may not be exactly as you want.
		 If used on screens, will show 0 if only rendering is done. Operations must be done in the Think loop for them to be counted.
	**/
	@:native("getQuotaUsed") public function getQuotaUsed():Float;
	/**
		SHARED
		 Gets the movetype enum of the entity
	**/
	@:native("getMoveType") public function getMoveType():Float;
	/**
		SERVER
		 Removes a collision listening hook from the entity so that a new one can be added
	**/
	#if SERVER @:native("removeCollisionListener") public function removeCollisionListener():Void;#end
	/**
		SHARED
		 Converts a ragdoll bone id to the corresponding physobject id
	**/
	@:native("translateBoneToPhysBone") public function translateBoneToPhysBone(boneid:Float):Float;
	/**
		SHARED
		 Converts a physobject id to the corresponding ragdoll bone id
	**/
	@:native("translatePhysBoneToBone") public function translatePhysBoneToBone(boneid:Float):Float;
	/**
		SHARED
		 Gets the collision group enum of the entity
	**/
	@:native("getCollisionGroup") public function getCollisionGroup():Float;
	/**
		SHARED
		 Returns how submerged the entity is in water
	**/
	@:native("getWaterLevel") public function getWaterLevel():Float;
	/**
		SHARED
		 Gets the attachment index the entity is parented to
	**/
	@:native("getAttachmentParent") public function getAttachmentParent():Float;
	/**
		SERVER
		 Checks whether entity has physics
	**/
	#if SERVER @:native("isValidPhys") public function isValidPhys():Bool;#end
	/**
		SHARED
		 Returns the local position of the entity's outer bounding box
	**/
	@:native("obbCenter") public function obbCenter():sf.type.Vector;
	/**
		SERVER
		 Allows detecting collisions on an entity. You can only do this once for the entity's entire lifespan so use it wisely.
	**/
	#if SERVER @:native("addCollisionListener") public function addCollisionListener(func:haxe.Constraints.Function):Void;#end
	/**
		SHARED
		 Gets the table of all networked things on an entity
	**/
	@:native("getNWVarTable") public function getNWVarTable():lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Sets the whether an entity should be drawn or not
	**/
	@:native("setNoDraw") public function setNoDraw(draw:Bool):Void;
	/**
		SHARED
		 Returns the EntIndex of the entity
	**/
	@:native("entIndex") public function entIndex():Float;
	/**
		CLIENT
		 Allows manipulation of an entity's bones' positions
	**/
	#if CLIENT @:native("manipulateBonePosition") public function manipulateBonePosition(bone:Float, vec:sf.type.Vector):Void;#end
	/**
		SERVER
		 Sets the entity to be Solid or not.
	**/
	#if SERVER @:native("setSolid") public function setSolid(solid:Bool):Void;#end
	/**
		SERVER
		 Checks the entities frozen state
	**/
	#if SERVER @:native("isFrozen") public function isFrozen():Bool;#end
	/**
		SHARED
		 Returns the mass of the entity
	**/
	@:native("getMass") public function getMass():Float;
	/**
		SHARED
		 Gets the string representation of the entity
	**/
	@:native("__tostring") public function __tostring():std.String;
	/**
		SHARED
		 Returns a list of all bodygroups of the entity
	**/
	@:native("getBodygroups") public function getBodygroups():lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Converts a vector in entity local space to world space
	**/
	@:native("localToWorld") public function localToWorld(data:sf.type.Vector):sf.type.Vector;
	/**
		CLIENT
		 Sets a hologram or custom_prop's renderbounds
	**/
	#if CLIENT @:native("setRenderBounds") public function setRenderBounds(mins:sf.type.Vector, maxs:sf.type.Vector):Void;#end
	/**
		SHARED
		 Gets the author of the specified starfall.
	**/
	@:native("getChipAuthor") public function getChipAuthor():sf.type.Entity;
	/**
		SERVER
		 Applies a angular velocity to an object
	**/
	#if SERVER @:native("addAngleVelocity") public function addAngleVelocity(angvel:sf.type.Vector):Void;#end
	/**
		SERVER
		 Sets the entity's collision group
	**/
	#if SERVER @:native("setCollisionGroup") public function setCollisionGroup(group:Float):Void;#end
	/**
		SERVER
		 Adds a trail to the entity with the specified attributes.
	**/
	#if SERVER @:native("setTrails") public function setTrails(startSize:Float, endSize:Float, length:Float, material:std.String, color:sf.type.Color, ?attachmentID:Null<Float>, ?additive:Null<Bool>):Void;#end
	/**
		CLIENT
		 Sets a hologram or custom_prop model to a custom Mesh
	**/
	#if CLIENT @:native("setMesh") public function setMesh(?mesh:Null<sf.type.Mesh>):Void;#end
	/**
		SHARED
		 Returns the elasticity of the entity
	**/
	@:native("getElasticity") public function getElasticity():Float;
	/**
		SHARED
		 Returns min local bounding box vector of the entity
	**/
	@:native("obbMins") public function obbMins():sf.type.Vector;
	/**
		SERVER
		 Returns how much friction the entity has, default is 1 (100%)
	**/
	#if SERVER @:native("getFriction") public function getFriction():Float;#end
	/**
		SHARED
		 Checks if an entity is valid.
	**/
	@:native("isValid") public function isValid():Bool;
	/**
		SHARED
		 Gets the skin number of the entity
	**/
	@:native("getSkin") public function getSkin():Float;
	/**
		SHARED
		 Returns the world position of the entity's outer bounding box
	**/
	@:native("obbCenterW") public function obbCenterW():sf.type.Vector;
	/**
		SHARED
		 Gets the model of an entity
	**/
	@:native("getModel") public function getModel():std.String;
	/**
		SHARED
		 Returns Entity axis aligned bounding box in world coordinates
	**/
	@:native("worldSpaceAABB") public function worldSpaceAABB():sf.type.Vector;
	/**
		CLIENT
		 Returns whether or not the entity can be drawn using Entity.draw function
		 Checks Entity against a predefined class whitelist
		 Entities that have RenderOverride defined or are parented cannot be drawn
	**/
	#if CLIENT @:native("canDraw") public function canDraw():Bool;#end
	/**
		SHARED
		 Get the length of an animation
	**/
	@:native("sequenceDuration") public function sequenceDuration(?id:Null<Float>):Float;
	/**
		SERVER
		 Sets the entity's mass
	**/
	#if SERVER @:native("setMass") public function setMass(mass:Float):Void;#end
	/**
		SHARED
		 Gets a physics objects of an entity
	**/
	@:native("getPhysicsObjectNum") public function getPhysicsObjectNum(id:Float):sf.type.PhysObj;
	/**
		SHARED
		 Returns info about the given brush plane
	**/
	@:native("getBrushPlane") public function getBrushPlane(id:Float):sf.type.Vector;
	/**
		SHARED
		 Returns a table of attachments
	**/
	@:native("getAttachments") public function getAttachments():Null<lua.Table<Dynamic,Dynamic>>;
	/**
		SHARED
		 Gets the hit group of a given hitbox in a given hitbox set.
	**/
	@:native("getHitBoxHitGroup") public function getHitBoxHitGroup(hitbox:Float, hitboxset:Float):Float;
	/**
		SHARED
		 Gets the Average CPU Time in the buffer of the specified starfall or expression2.
	**/
	@:native("getQuotaAverage") public function getQuotaAverage():Float;
	/**
		SERVER
		 Sets the elasticity of the entity
	**/
	#if SERVER @:native("setElasticity") public function setElasticity(elasticity:Float):Void;#end
	/**
		SERVER
		 Sets the entity's friction multiplier
	**/
	#if SERVER @:native("setFriction") public function setFriction(friction:Float):Void;#end
	/**
		SHARED
		 Casts a hologram entity into the hologram type
	**/
	@:native("toHologram") public function toHologram():sf.type.Hologram;
	/**
		SHARED
		 Gets the owner of the entity
	**/
	@:native("getOwner") public function getOwner():sf.type.Entity;
	/**
		CLIENT
		 Allows manipulation of an entity's bones' angles
	**/
	#if CLIENT @:native("manipulateBoneAngles") public function manipulateBoneAngles(bone:Float, ang:sf.type.Angle):Void;#end
	/**
		SHARED
		 Converts a vector in world space to entity local space
	**/
	@:native("worldToLocal") public function worldToLocal(data:sf.type.Vector):sf.type.Vector;
	/**
		SERVER
		 Applies angular force to the entity (This function is garbage, use applyTorque instead)
	**/
	#if SERVER @:native("applyAngForce") public function applyAngForce(ang:sf.type.Angle):Void;#end
	/**
		SHARED
		 Sets the skin of the entity
	**/
	@:native("setSkin") public function setSkin(skinIndex:Float):Void;
	/**
		SHARED
		 Gets the number of physicsobjects of an entity
	**/
	@:native("getPhysicsObjectCount") public function getPhysicsObjectCount():sf.type.PhysObj;
	/**
		SHARED
		 Gets number of hitboxes in a group.
	**/
	@:native("getHitBoxCount") public function getHitBoxCount(group:Float):Float;
	/**
		SERVER
		 Gets all players the specified starfall errored for.
		 This excludes the owner of the starfall chip.
	**/
	#if SERVER @:native("getErroredPlayers") public function getErroredPlayers():lua.Table<Dynamic,Dynamic>;#end
	/**
		SHARED
		 Checks if an engine effect is applied to the entity
	**/
	@:native("isEffectActive") public function isEffectActive(effect:Float):Bool;
	/**
		SHARED
		 Returns the class of the entity
	**/
	@:native("getClass") public function getClass():std.String;
	/**
		SHARED
		 Gets the bounds (min and max corners) of a hit box.
	**/
	@:native("getHitBoxBounds") public function getHitBoxBounds(hitbox:Float, group:Float):sf.type.Vector;
	/**
		SHARED
		 Returns the bone's position and angle in world coordinates
	**/
	@:native("getBonePosition") public function getBonePosition(?bone:Null<Float>):sf.type.Vector;
	/**
		SERVER
		 Unparents the entity from another entity
	**/
	#if SERVER @:native("unparent") public function unparent():Void;#end
	/**
		SHARED
		 Returns the parent index of an entity's bone
	**/
	@:native("getBoneParent") public function getBoneParent(?bone:Null<Float>):Float;
	/**
		SERVER
		 Removes an entity
	**/
	#if SERVER @:native("remove") public function remove():Void;#end
	/**
		SHARED
		 Sets the submaterial of the entity
	**/
	@:native("setSubMaterial") public function setSubMaterial(index:Float, material:std.String):Void;
	/**
		SERVER
		 Sets whether an entity's shadow should be drawn
	**/
	#if SERVER @:native("setDrawShadow") public function setDrawShadow(draw:Bool, ?ply:Null<sf.type.Player>):Void;#end
	/**
		SERVER
		 Simulate a Use action on the entity by the chip owner
	**/
	#if SERVER @:native("use") public function use(?usetype:Null<Float>, ?value:Null<Float>):Void;#end
	/**
		SHARED
		 Gets the weight (value) of a flex.
	**/
	@:native("getFlexWeight") public function getFlexWeight(flexid:Float):Float;
	/**
		SHARED
		 Gets a networked variable of an entity
	**/
	@:native("getNWVar") public function getNWVar(key:std.String):Any;
	/**
		SHARED
		 Returns the game assigned owner of an entity. This doesn't take CPPI into account and will return nil for most standard entities.
		 Used on entities with custom physics like held SWEPs and fired bullets in which case player entity should be returned.
	**/
	@:native("entOwner") public function entOwner():sf.type.Entity;
	/**
		SERVER
		 Extinguishes an entity
	**/
	#if SERVER @:native("extinguish") public function extinguish():Void;#end
	/**
		SERVER
		 Gets what the entity is welded to. If the entity is parented, returns the parent.
	**/
	#if SERVER @:native("isWeldedTo") public function isWeldedTo():sf.type.Entity;#end
	/**
		SERVER
		 Ignites an entity
	**/
	#if SERVER @:native("ignite") public function ignite(length:Float, ?radius:Null<Float>):Void;#end
	/**
		SHARED
		 Returns a table of brushes surfaces for brush model entities.
	**/
	@:native("getBrushSurfaces") public function getBrushSurfaces():lua.Table<Dynamic,Dynamic>;
	/**
		CLIENT
		 Allows manipulation of an entity's bones' scale
	**/
	#if CLIENT @:native("manipulateBoneScale") public function manipulateBoneScale(bone:Float, vec:sf.type.Vector):Void;#end
	/**
		SHARED
		 Gets a datatable angle
	**/
	@:native("getDTAngle") public function getDTAngle(key:Float):Null<sf.type.Angle>;
	/**
		SHARED
		 Gets the entity's forward vector
	**/
	@:native("getForward") public function getForward():sf.type.Vector;
	/**
		SERVER
		 Get the physical material of the entity
	**/
	#if SERVER @:native("getPhysMaterial") public function getPhysMaterial():std.String;#end
	/**
		SHARED
		 Returns the x, y, z size of the entity's outer bounding box (local to the entity)
	**/
	@:native("obbSize") public function obbSize():sf.type.Vector;
	/**
		SHARED
		 Gets an entities' submaterial
	**/
	@:native("getSubMaterial") public function getSubMaterial(index:Float):std.String;
	/**
		SERVER
		 Removes trails from the entity
	**/
	#if SERVER @:native("removeTrails") public function removeTrails():Void;#end
	/**
		SERVER
		 Applies linear force to the entity
	**/
	#if SERVER @:native("applyForceCenter") public function applyForceCenter(vec:sf.type.Vector):Void;#end
	/**
		SHARED
		 Returns the bodygroup name of the entity with given index
	**/
	@:native("getBodygroupName") public function getBodygroupName(id:Float):std.String;
	/**
		SHARED
		 Gets the health of an entity
	**/
	@:native("getHealth") public function getHealth():Float;
	/**
		SHARED
		 Sets the weight (value) of a flex.
	**/
	@:native("setFlexWeight") public function setFlexWeight(flexid:Float, weight:Float):Void;
	/**
		SHARED
		 Returns the velocity of the entity
	**/
	@:native("getVelocity") public function getVelocity():sf.type.Vector;
	/**
		SHARED
		 Converts entity angles to a quaternion
	**/
	@:native("getQuaternion") public function getQuaternion():sf.type.Quaternion;
	/**
		SHARED
		 Returns the vector manipulate scale of the bone
	**/
	@:native("getManipulateBoneScale") public function getManipulateBoneScale(bone:Float):sf.type.Vector;
	/**
		CLIENT
		 Allows manipulation of an entity's bones' jiggle status
	**/
	#if CLIENT @:native("manipulateBoneJiggle") public function manipulateBoneJiggle(bone:Float, enabled:Bool):Void;#end
	/**
		SHARED
		 Returns the model's scale
	**/
	@:native("getModelScale") public function getModelScale():Float;
	/**
		SERVER
		 Returns true if the entity is being held by a player. Either by Physics gun, Gravity gun or Use-key.
	**/
	#if SERVER @:native("isPlayerHolding") public function isPlayerHolding():Bool;#end
	/**
		SERVER
		 Applies torque
	**/
	#if SERVER @:native("applyTorque") public function applyTorque(torque:sf.type.Vector):Void;#end
	/**
		SHARED
		 Returns the world position of the entity's mass center
	**/
	@:native("getMassCenterW") public function getMassCenterW():sf.type.Vector;
	/**
		SHARED
		 Gets the entity's eye position
	**/
	@:native("getEyePos") public function getEyePos():sf.type.Vector;
	/**
		SHARED
		 Returns the angular velocity of the entity
	**/
	@:native("getAngleVelocityAngle") public function getAngleVelocityAngle():sf.type.Angle;
	/**
		SERVER
		 Sets the physical material of the entity
	**/
	#if SERVER @:native("setPhysMaterial") public function setPhysMaterial(materialName:std.String):Void;#end
	/**
		SHARED
		 Sets the bodygroup of the entity
	**/
	@:native("setBodygroup") public function setBodygroup(bodygroup:Float, value:Float):Void;
	/**
		SHARED
		 Returns the matrix of the entity's bone. Note: this method is slow/doesnt work well if the entity isn't animated.
	**/
	@:native("getBoneMatrix") public function getBoneMatrix(?bone:Null<Float>):sf.type.VMatrix;
	/**
		SHARED
		 Gets the animation number from the animation name
	**/
	@:native("lookupSequence") public function lookupSequence(animation:std.String):Float;
	/**
		SHARED
		 Returns the vector manipulate position of the bone (relative to its default position)
	**/
	@:native("getManipulateBonePosition") public function getManipulateBonePosition(bone:Float):sf.type.Vector;
	/**
		SHARED
		 Gets an entities' material
	**/
	@:native("getMaterial") public function getMaterial():std.String;
	/**
		SHARED
		 Returns the ragdoll bone index given a bone name
	**/
	@:native("lookupBone") public function lookupBone(name:std.String):Float;
	/**
		SHARED
		 Returns max local bounding box vector of the entity
	**/
	@:native("obbMaxs") public function obbMaxs():sf.type.Vector;
	/**
		SERVER
		 Applies velocity to an object
	**/
	#if SERVER @:native("addVelocity") public function addVelocity(vel:sf.type.Vector):Void;#end
	/**
		SERVER
		 Sets a prop_physics to be unbreakable
	**/
	#if SERVER @:native("setUnbreakable") public function setUnbreakable(on:Bool):Void;#end
	/**
		SHARED
		 Gets the renderfx of the entity
	**/
	@:native("getRenderFX") public function getRenderFX():Float;
	/**
		SERVER
		 Sets the entity's linear velocity
	**/
	#if SERVER @:native("setVelocity") public function setVelocity(vel:sf.type.Vector):Void;#end
	/**
		SHARED
		 Gets the parent of an entity
	**/
	@:native("getParent") public function getParent():Null<sf.type.Entity>;
	/**
		SHARED
		 Sets the color of the entity
	**/
	@:native("setColor") public function setColor(clr:sf.type.Color):Void;
	/**
		SERVER
		 Sets the entity frozen state
	**/
	#if SERVER @:native("setFrozen") public function setFrozen(freeze:Bool):Void;#end
	/**
		SHARED
		 Checks if an entity is a vehicle.
	**/
	@:native("isVehicle") public function isVehicle():Bool;
	/**
		SERVER
		 Links starfall components to a starfall processor or vehicle. Screen can only connect to processor. HUD can connect to processor and vehicle.
	**/
	#if SERVER @:native("linkComponent") public function linkComponent(?e:Null<sf.type.Entity>):Void;#end
	/**
		SHARED
		 Returns the name of an entity's bone
	**/
	@:native("getBoneName") public function getBoneName(?bone:Null<Float>):std.String;
	/**
		SHARED
		 Returns the model's radius
	**/
	@:native("getModelRadius") public function getModelRadius():Float;
	/**
		SHARED
		 Gets the entity's right vector
	**/
	@:native("getRight") public function getRight():sf.type.Vector;
	/**
		SHARED
		 Checks if an entity is a weapon.
	**/
	@:native("isWeapon") public function isWeapon():Bool;
	/**
		SHARED
		 Returns the bodygroup value of the entity with given index
	**/
	@:native("getBodygroup") public function getBodygroup(id:Float):Float;
	/**
		SERVER
		Returns if the entity is a constraint.
	**/
	#if SERVER @:native("isConstraint") public function isConstraint():Bool;#end
	/**
		SHARED
		 Gets a datatable int
	**/
	@:native("getDTInt") public function getDTInt(key:Float):Null<Float>;
	/**
		SHARED
		 Gets a datatable entity
	**/
	@:native("getDTEntity") public function getDTEntity(key:Float):Null<sf.type.Entity>;
	/**
		SHARED
		 Sets the material of the entity
	**/
	@:native("setMaterial") public function setMaterial(material:std.String):Void;
	/**
		SHARED
		 Sets the renderfx of the entity, most effects require entity's alpha to be less than 255 to take effect
	**/
	@:native("setRenderFX") public function setRenderFX(renderfx:Float):Void;
	/**
		SHARED
		 Gets the max health of an entity
	**/
	@:native("getMaxHealth") public function getMaxHealth():Float;
	/**
		SHARED
		 Checks if an entity is a player.
	**/
	@:native("isPlayer") public function isPlayer():Bool;
	/**
		SERVER
		 Gets a table of all constrained entities to each other
	**/
	#if SERVER @:native("getAllConstrained") public function getAllConstrained(?filter:Null<lua.Table<Dynamic,Dynamic>>):Void;#end
	/**
		SERVER
		 Parents the entity to another entity
	**/
	#if SERVER @:native("setParent") public function setParent(?parent:Null<sf.type.Entity>, ?attachment:Null<std.String>):Void;#end
	/**
		SERVER
		 Invokes the entity's breaking animation and removes it.
	**/
	#if SERVER @:native("breakEnt") public function breakEnt():Void;#end
	/**
		SHARED
		 Stops a sound on the entity
	**/
	@:native("stopSound") public function stopSound(snd:std.String):Void;
	/**
		SHARED
		 Returns the starfall or expression2's name
	**/
	@:native("getChipName") public function getChipName():std.String;
	/**
		SHARED
		 Gets the color of an entity
	**/
	@:native("getColor") public function getColor():sf.type.Color;
	/**
		SHARED
		 Returns the contents of the entity's current model
	**/
	@:native("getModelContents") public function getModelContents():Float;
	/**
		SHARED
		 Gets the main physics objects of an entity
	**/
	@:native("getPhysicsObject") public function getPhysicsObject():sf.type.PhysObj;
	/**
		SERVER
		 Sets the physics of an entity to be a sphere
	**/
	#if SERVER @:native("enableSphere") public function enableSphere(enabled:Bool):Void;#end
	/**
		SERVER
		 Returns entity's creation ID (similar to entIndex, but increments monotonically)
	**/
	#if SERVER @:native("getCreationID") public function getCreationID():Float;#end
	/**
		SHARED
		 Gets a datatable boolean
	**/
	@:native("getDTBool") public function getDTBool(key:Float):Null<Bool>;
	/**
		SHARED
		 Returns the manipulate angle of the bone (relative to its default angle)
	**/
	@:native("getManipulateBoneAngles") public function getManipulateBoneAngles(bone:Float):sf.type.Angle;
	/**
		SHARED
		 Gets the children (the parented entities) of an entity
	**/
	@:native("getChildren") public function getChildren():lua.Table<Dynamic,Dynamic>;
	/**
		SERVER
		 Returns an entities wirelink
	**/
	#if SERVER @:native("getWirelink") public function getWirelink():sf.type.Wirelink;#end
	/**
		SHARED
		 Returns the number of an entity's bones
	**/
	@:native("getBoneCount") public function getBoneCount():Float;
	/**
		CLIENT
		 Sets a hologram or custom_prop's custom mesh material
	**/
	#if CLIENT @:native("setMeshMaterial") public function setMeshMaterial(?material:Null<sf.type.Material>):Void;#end
	/**
		SHARED
		 Gets an entities' material list
	**/
	@:native("getMaterials") public function getMaterials():lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Returns the angle of the entity
	**/
	@:native("getAngles") public function getAngles():sf.type.Angle;
	/**
		SHARED
		 Gets the current playing sequence
	**/
	@:native("getSequence") public function getSequence():Float;
	/**
		SHARED
		 Returns the world transform matrix of the entity
	**/
	@:native("getMatrix") public function getMatrix():sf.type.VMatrix;
	/**
		SHARED
		 Returns the amount of planes of the brush entity
	**/
	@:native("getBrushPlaneCount") public function getBrushPlaneCount():Float;
	/**
		SHARED
		 Gets the clipping of an entity
	**/
	@:native("getClipping") public function getClipping():lua.Table<Dynamic,Dynamic>;
	/**
		SERVER
		 Sets the entity's inertia
	**/
	#if SERVER @:native("setInertia") public function setInertia(vec:sf.type.Vector):Void;#end
	/**
		SERVER
		 Check if the given Entity or Vector is within this entity's PVS (Potentially Visible Set). See: https://developer.valvesoftware.com/wiki/PVS
	**/
	#if SERVER @:native("testPVS") public function testPVS(other:Dynamic):Bool;#end
	/**
		SHARED
		 Plays a sound on the entity
	**/
	@:native("emitSound") public function emitSound(snd:std.String, soundLevel:Float, pitchPercent:Float, volume:Float, channel:Float):Void;
	/**
		SERVER
		 Applies damage to an entity
	**/
	#if SERVER @:native("applyDamage") public function applyDamage(amt:Float, attacker:sf.type.Entity, inflictor:sf.type.Entity):Void;#end
	/**
		SHARED
		 Gets the attachment index via the entity and it's attachment name
	**/
	@:native("lookupAttachment") public function lookupAttachment(name:std.String):Float;
	/**
		SERVER
		 Sets a custom prop's physics simulation forces. Thrusters and balloons use this.
	**/
	#if SERVER @:native("setCustomPropForces") public function setCustomPropForces(ang:sf.type.Vector, lin:sf.type.Vector, mode:Float):Void;#end
	/**
		SHARED
		 Returns if the entity is ignited
	**/
	@:native("isOnFire") public function isOnFire():Bool;
}

@:forward
extern abstract Entity(EntityData) {
}

