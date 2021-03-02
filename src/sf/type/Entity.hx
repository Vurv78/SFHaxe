package sf.type;
extern class EntityData {
	/**
		SHARED
		 Converts a vector in entity local space to world space
	**/
	@:native("localToWorld") public function localToWorld(data:Any):Any;
	/**
		SERVER
		 Sets the entity's linear velocity
	**/
	@:native("setVelocity") public function setVelocity(vel:Any):Void;
	/**
		SHARED
		 Returns min local bounding box vector of the entity
	**/
	@:native("obbMins") public function obbMins():Any;
	/**
		SHARED
		 Gets the entity's forward vector
	**/
	@:native("getForward") public function getForward():Any;
	/**
		SHARED
		 Plays a sound on the entity
	**/
	@:native("emitSound") public function emitSound(snd:Any,lvl:Any,pitch:Any,volume:Any,channel:Any):Void;
	/**
		SHARED
		 Returns the timer.curtime() time the entity was created on
	**/
	@:native("getCreationTime") public function getCreationTime():Any;
	/**
		SHARED
		 Gets a networked variable of an entity
	**/
	@:native("getNWVar") public function getNWVar(key:Any):Any;
	/**
		SERVER
		 Adds a trail to the entity with the specified attributes.
	**/
	@:native("setTrails") public function setTrails(startSize:Any,endSize:Any,length:Any,material:Any,color:Any,attachmentID:Any,additive:Any):Void;
	/**
		SHARED
		 Gets the bounds (min and max corners) of a hit box.
	**/
	@:native("getHitBoxBounds") public function getHitBoxBounds(hitbox:Any,group:Any):Any;
	/**
		SERVER
		 Sets a prop_physics to be unbreakable
	**/
	@:native("setUnbreakable") public function setUnbreakable(on:Any):Void;
	/**
		SERVER
		 Allows detecting collisions on an entity. You can only do this once for the entity's entire lifespan so use it wisely.
	**/
	@:native("addCollisionListener") public function addCollisionListener(func:Any):Void;
	/**
		SHARED
		 Returns a list of components linked to a processor. Can also return vehicles linked to a HUD, but only through the server.
	**/
	@:native("getLinkedComponents") public function getLinkedComponents():Any;
	/**
		SHARED
		 Returns the velocity of the entity
	**/
	@:native("getVelocity") public function getVelocity():Any;
	/**
		SHARED
		 Returns the angular velocity of the entity
	**/
	@:native("getAngleVelocityAngle") public function getAngleVelocityAngle():Any;
	/**
		SHARED
		 Returns the contents of the entity's current model
	**/
	@:native("getModelContents") public function getModelContents():Any;
	/**
		SHARED
		 Returns the current count for this Think's CPU Time of the specified starfall.
 This value increases as more executions are done, may not be exactly as you want.
 If used on screens, will show 0 if only rendering is done. Operations must be done in the Think loop for them to be counted.
	**/
	@:native("getQuotaUsed") public function getQuotaUsed():Any;
	/**
		SHARED
		 Gets an entities' material list
	**/
	@:native("getMaterials") public function getMaterials():Any;
	/**
		SHARED
		 Returns the local position of the entity's mass center
	**/
	@:native("getMassCenter") public function getMassCenter():Any;
	/**
		CLIENT
		 Sets a hologram or custom_prop model to a custom Mesh
	**/
	@:native("setMesh") public function setMesh(mesh:Any):Void;
	/**
		SERVER
		 Sets a component's ability to lock a player's controls
	**/
	@:native("setComponentLocksControls") public function setComponentLocksControls(enable:Any):Void;
	/**
		SHARED
		 Returns the amount of planes of the brush entity
	**/
	@:native("getBrushPlaneCount") public function getBrushPlaneCount():Any;
	/**
		SHARED
		 Gets the collision group enum of the entity
	**/
	@:native("getCollisionGroup") public function getCollisionGroup():Any;
	/**
		SERVER
		 Sets whether an entity's shadow should be drawn
	**/
	@:native("setDrawShadow") public function setDrawShadow(ply:Any):Void;
	/**
		SHARED
		 Returns the bone's position and angle in world coordinates
	**/
	@:native("getBonePosition") public function getBonePosition(bone:Any):Any;
	/**
		SHARED
		 Returns the mass of the entity
	**/
	@:native("getMass") public function getMass():Any;
	/**
		SHARED
		 Checks if entity is marked as persistent
	**/
	@:native("getPersistent") public function getPersistent():Any;
	/**
		SHARED
		 Returns the principle moments of inertia of the entity
	**/
	@:native("getInertia") public function getInertia():Any;
	/**
		SHARED
		 Returns the name of an entity's bone
	**/
	@:native("getBoneName") public function getBoneName(bone:Any):Any;
	/**
		SHARED
		 Returns the elasticity of the entity
	**/
	@:native("getElasticity") public function getElasticity():Any;
	/**
		SHARED
		 Gets a datatable boolean
	**/
	@:native("getDTBool") public function getDTBool(key:Any):Any;
	/**
		SHARED
		 Gets the entity's up vector
	**/
	@:native("getUp") public function getUp():Any;
	/**
		SHARED
		 Gets the render mode of the entity
	**/
	@:native("getRenderMode") public function getRenderMode():Any;
	/**
		SHARED
		 Gets number of hitboxes in a group.
	**/
	@:native("getHitBoxCount") public function getHitBoxCount(group:Any):Any;
	/**
		SHARED
		 Returns the vector manipulate position of the bone (relative to its default position)
	**/
	@:native("getManipulateBonePosition") public function getManipulateBonePosition(bone:Any):Any;
	/**
		SHARED
		 Returns the world transform matrix of the entity
	**/
	@:native("getMatrix") public function getMatrix():Any;
	/**
		SERVER
		 Set's the entity to collide with nothing but the world. Alias to entity:setCollisionGroup(COLLISION_GROUP_WORLD)
	**/
	@:native("setNocollideAll") public function setNocollideAll(nocollide:Any):Void;
	/**
		SHARED
		 Gets the attachment index the entity is parented to
	**/
	@:native("getAttachmentParent") public function getAttachmentParent():Any;
	/**
		SHARED
		 Gets a datatable int
	**/
	@:native("getDTInt") public function getDTInt(key:Any):Any;
	/**
		SHARED
		 Returns the manipulate angle of the bone (relative to its default angle)
	**/
	@:native("getManipulateBoneAngles") public function getManipulateBoneAngles(bone:Any):Any;
	/**
		SERVER
		 Returns entity's creation ID (similar to entIndex, but increments monotonically)
	**/
	@:native("getCreationID") public function getCreationID():Any;
	/**
		SHARED
		 Gets the scale of the entity flexes
	**/
	@:native("getFlexScale") public function getFlexScale():Any;
	/**
		SHARED
		 Gets a physics objects of an entity
	**/
	@:native("getPhysicsObjectNum") public function getPhysicsObjectNum(id:Any):Any;
	/**
		SHARED
		 Returns the bodygroup index of the entity with given name
	**/
	@:native("lookupBodygroup") public function lookupBodygroup(name:Any):Any;
	/**
		SHARED
		 Checks if an entity is a vehicle.
	**/
	@:native("isVehicle") public function isVehicle():Any;
	/**
		SHARED
		 Converts an angle in entity local space to world space
	**/
	@:native("localToWorldAngles") public function localToWorldAngles(data:Any):Any;
	/**
		SERVER
		 Gets what the entity is welded to. If the entity is parented, returns the parent.
	**/
	@:native("isWeldedTo") public function isWeldedTo():Any;
	/**
		SHARED
		 Gets the entity's right vector
	**/
	@:native("getRight") public function getRight():Any;
	/**
		SHARED
		 Gets the animation number from the animation name
	**/
	@:native("lookupSequence") public function lookupSequence(animation:Any):Any;
	/**
		SHARED
		 Sets the scale of the entity flexes
	**/
	@:native("setFlexScale") public function setFlexScale(scale:Any):Void;
	/**
		SHARED
		 Returns the class of the entity
	**/
	@:native("getClass") public function getClass():Any;
	/**
		SHARED
		 Returns the world position of the entity's mass center
	**/
	@:native("getMassCenterW") public function getMassCenterW():Any;
	/**
		SERVER
		Returns if the entity is a constraint.
	**/
	@:native("isConstraint") public function isConstraint():Any;
	/**
		SHARED
		 Sets the bodygroup of the entity
	**/
	@:native("setBodygroup") public function setBodygroup(bodygroup:Any,value:Any):Void;
	/**
		SHARED
		 Returns the model's scale
	**/
	@:native("getModelScale") public function getModelScale():Any;
	/**
		SHARED
		 Gets the number of physicsobjects of an entity
	**/
	@:native("getPhysicsObjectCount") public function getPhysicsObjectCount():Any;
	/**
		SHARED
		 Returns a table of attachments
	**/
	@:native("getAttachments") public function getAttachments():Any;
	/**
		SERVER
		 Ignites an entity
	**/
	@:native("ignite") public function ignite(length:Any,radius:Any):Void;
	/**
		SHARED
		 Gets the model of an entity
	**/
	@:native("getModel") public function getModel():Any;
	/**
		SHARED
		 Returns the number of an entity's bones
	**/
	@:native("getBoneCount") public function getBoneCount():Any;
	/**
		SHARED
		 Returns entity's number of hitbox sets.
	**/
	@:native("getHitBoxSetCount") public function getHitBoxSetCount():Any;
	/**
		SHARED
		 Returns the entity's model bounds. This is different than the collision bounds/hull.
 This is not scaled with Entity:SetModelScale and will return the model's original, unmodified mins and maxs.
	**/
	@:native("getModelBounds") public function getModelBounds():Any;
	/**
		SHARED
		 Gets the current playing sequence
	**/
	@:native("getSequence") public function getSequence():Any;
	/**
		SERVER
		 Returns how much friction the entity has, default is 1 (100%)
	**/
	@:native("getFriction") public function getFriction():Any;
	/**
		SHARED
		 Gets a datatable angle
	**/
	@:native("getDTAngle") public function getDTAngle(key:Any):Any;
	/**
		SHARED
		 Gets a datatable vector
	**/
	@:native("getDTVector") public function getDTVector(key:Any):Any;
	/**
		SHARED
		 Checks if an entity is a weapon.
	**/
	@:native("isWeapon") public function isWeapon():Any;
	/**
		SHARED
		 Gets the attachment index via the entity and it's attachment name
	**/
	@:native("lookupAttachment") public function lookupAttachment(name:Any):Any;
	/**
		SERVER
		 Sets the elasticity of the entity
	**/
	@:native("setElasticity") public function setElasticity(number:Any):Void;
	/**
		SERVER
		 Removes a collision listening hook from the entity so that a new one can be added
	**/
	@:native("removeCollisionListener") public function removeCollisionListener():Void;
	/**
		SERVER
		 Get the physical material of the entity
	**/
	@:native("getPhysMaterial") public function getPhysMaterial():Any;
	/**
		SHARED
		 Returns the angle of the entity
	**/
	@:native("getAngles") public function getAngles():Any;
	/**
		SHARED
		 Returns the bodygroup name of the entity with given index
	**/
	@:native("getBodygroupName") public function getBodygroupName(id:Any):Any;
	/**
		SHARED
		 Returns a table of flexname -> flexid pairs for use in flex functions.
	**/
	@:native("getFlexes") public function getFlexes():Void;
	/**
		SHARED
		 Converts a physobject id to the corresponding ragdoll bone id
	**/
	@:native("translatePhysBoneToBone") public function translatePhysBoneToBone(boneid:Any):Any;
	/**
		SHARED
		 Sets the renderfx of the entity, most effects require entity's alpha to be less than 255 to take effect
	**/
	@:native("setRenderFX") public function setRenderFX(renderfx:Any):Void;
	/**
		SERVER
		 Sets the physical material of the entity
	**/
	@:native("setPhysMaterial") public function setPhysMaterial(mat:Any):Void;
	/**
		SHARED
		 Gets the position and angle of an attachment
	**/
	@:native("getAttachment") public function getAttachment(index:Any):Any;
	/**
		SERVER
		 Gets a table of all constrained entities to each other
	**/
	@:native("getAllConstrained") public function getAllConstrained(filter:Any):Void;
	/**
		SHARED
		 Gets the entity's eye position
	**/
	@:native("getEyePos") public function getEyePos():Any;
	/**
		SERVER
		 Invokes the entity's breaking animation and removes it.
	**/
	@:native("breakEnt") public function breakEnt():Void;
	/**
		SERVER
		 Sets the entity drag state
	**/
	@:native("enableDrag") public function enableDrag(drag:Any):Void;
	/**
		SHARED
		 Returns the local position of the entity's outer bounding box
	**/
	@:native("obbCenter") public function obbCenter():Any;
	/**
		SHARED
		 Gets the CPU Time max of the specified starfall of the specified starfall or expression2.
 CPU Time is stored in a buffer of N elements, if the average of this exceeds quotaMax, the chip will error.
	**/
	@:native("getQuotaMax") public function getQuotaMax():Any;
	/**
		SHARED
		 Returns a table of brushes surfaces for brush model entities.
	**/
	@:native("getBrushSurfaces") public function getBrushSurfaces():Any;
	/**
		SHARED
		 Gets the table of all networked things on an entity
	**/
	@:native("getNWVarTable") public function getNWVarTable():Any;
	/**
		SHARED
		 Checks if an entity is an npc.
	**/
	@:native("isNPC") public function isNPC():Any;
	/**
		SHARED
		 Gets the clipping of an entity
	**/
	@:native("getClipping") public function getClipping():Any;
	/**
		SHARED
		 Gets the movetype enum of the entity
	**/
	@:native("getMoveType") public function getMoveType():Any;
	/**
		SERVER
		 Extinguishes an entity
	**/
	@:native("extinguish") public function extinguish():Void;
	/**
		SHARED
		 Converts a vector in world space to entity local space
	**/
	@:native("worldToLocal") public function worldToLocal(data:Any):Any;
	/**
		SHARED
		 Returns the matrix of the entity's bone. Note: this method is slow/doesnt work well if the entity isn't animated.
	**/
	@:native("getBoneMatrix") public function getBoneMatrix(bone:Any):Any;
	/**
		SHARED
		 Gets the owner of the entity
	**/
	@:native("getOwner") public function getOwner():Any;
	/**
		SHARED
		 Gets the main physics objects of an entity
	**/
	@:native("getPhysicsObject") public function getPhysicsObject():Any;
	/**
		SHARED
		 Marks entity as persistent, disallowing players from physgunning it. Persistent entities save on server shutdown when sbox_persist is set
	**/
	@:native("setPersistent") public function setPersistent(persist:Any):Void;
	/**
		SERVER
		 Sets the entity's angles
	**/
	@:native("setAngles") public function setAngles(ang:Any):Void;
	/**
		SHARED
		 Set the pose value of an animation. Turret/Head angles for example.
	**/
	@:native("setPose") public function setPose(pose:Any,value:Any):Void;
	/**
		SHARED
		 Gets the bone the given hitbox is attached to.
	**/
	@:native("getHitBoxBone") public function getHitBoxBone(hitbox:Any,group:Any):Any;
	/**
		SHARED
		 Returns entity's current hit box set.
	**/
	@:native("getHitBoxSet") public function getHitBoxSet():Any;
	/**
		SHARED
		 Sets the render mode of the entity
	**/
	@:native("setRenderMode") public function setRenderMode(rendermode:Any):Void;
	/**
		SERVER
		 Removes trails from the entity
	**/
	@:native("removeTrails") public function removeTrails():Void;
	/**
		SERVER
		 Applies damage to an entity
	**/
	@:native("applyDamage") public function applyDamage(amt:Any,attacker:Any,inflictor:Any):Void;
	/**
		SHARED
		 Sets the material of the entity
	**/
	@:native("setMaterial") public function setMaterial(material:Any):Void;
	/**
		SHARED
		 Returns if the entity is ignited
	**/
	@:native("isOnFire") public function isOnFire():Any;
	/**
		SERVER
		 Check if the given Entity or Vector is within this entity's PVS (Potentially Visible Set). See: https://developer.valvesoftware.com/wiki/PVS
	**/
	@:native("testPVS") public function testPVS(other:Any):Any;
	/**
		SHARED
		 Sets the skin of the entity
	**/
	@:native("setSkin") public function setSkin(skinIndex:Any):Void;
	/**
		CLIENT
		 Draws the entity, requires 3D rendering context
 Only certain, whitelisted entities can be drawn. They can't be parented or have RenderOverride defined
 Use Entity.canDraw to check if you can draw the entity
	**/
	@:native("draw") public function draw():Void;
	/**
		SHARED
		 Converts a ragdoll bone id to the corresponding physobject id
	**/
	@:native("translateBoneToPhysBone") public function translateBoneToPhysBone(boneid:Any):Any;
	/**
		SHARED
		 Returns info about the given brush plane
	**/
	@:native("getBrushPlane") public function getBrushPlane(id:Any):Any;
	/**
		SHARED
		 Returns a list of all bodygroups of the entity
	**/
	@:native("getBodygroups") public function getBodygroups():Any;
	/**
		SHARED
		 Returns the bodygroup value of the entity with given index
	**/
	@:native("getBodygroup") public function getBodygroup(id:Any):Any;
	/**
		SHARED
		 Returns the model's radius
	**/
	@:native("getModelRadius") public function getModelRadius():Any;
	/**
		SHARED
		 Converts an angle in world space to entity local space
	**/
	@:native("worldToLocalAngles") public function worldToLocalAngles(data:Any):Any;
	/**
		SERVER
		 Sets a custom prop's physics simulation forces. Thrusters and balloons use this.
	**/
	@:native("setCustomPropForces") public function setCustomPropForces(ang:Any,lin:Any,mode:Any):Void;
	/**
		SERVER
		 Sets the entity's inertia
	**/
	@:native("setInertia") public function setInertia(vec:Any):Void;
	/**
		SHARED
		 Returns the amount of skins of the entity
	**/
	@:native("getSkinCount") public function getSkinCount():Any;
	/**
		SHARED
		 Sets the color of the entity
	**/
	@:native("setColor") public function setColor(clr:Any):Void;
	/**
		SHARED
		 Gets a datatable string
	**/
	@:native("getDTString") public function getDTString(key:Any):Any;
	/**
		SHARED
		 Returns the EntIndex of the entity
	**/
	@:native("entIndex") public function entIndex():Any;
	/**
		SHARED
		 Get the length of an animation
	**/
	@:native("sequenceDuration") public function sequenceDuration(id:Any):Any;
	/**
		CLIENT
		 Allows manipulation of an entity's bones' angles
	**/
	@:native("manipulateBoneAngles") public function manipulateBoneAngles(bone:Any,ang:Any):Void;
	/**
		SHARED
		 Get the pose value of an animation
	**/
	@:native("getPose") public function getPose(pose:Any):Any;
	/**
		SHARED
		 Gets an entities' material
	**/
	@:native("getMaterial") public function getMaterial():Any;
	/**
		SHARED
		 Gets the author of the specified starfall.
	**/
	@:native("getChipAuthor") public function getChipAuthor():Any;
	/**
		SERVER
		 Parents the entity to another entity
	**/
	@:native("setParent") public function setParent(parent:Any,attachment:Any):Void;
	/**
		SHARED
		 Converts entity angles to a quaternion
	**/
	@:native("getQuaternion") public function getQuaternion():Any;
	/**
		SHARED
		 Gets the skin number of the entity
	**/
	@:native("getSkin") public function getSkin():Any;
	/**
		SERVER
		 Returns true if the entity is being held by a player. Either by Physics gun, Gravity gun or Use-key.
	**/
	@:native("isPlayerHolding") public function isPlayerHolding():Any;
	/**
		SHARED
		 Gets the health of an entity
	**/
	@:native("getHealth") public function getHealth():Any;
	/**
		SHARED
		 Returns the parent index of an entity's bone
	**/
	@:native("getBoneParent") public function getBoneParent(bone:Any):Any;
	/**
		CLIENT
		 Sets a hologram or custom_prop's renderbounds
	**/
	@:native("setRenderBounds") public function setRenderBounds(mins:Any,maxs:Any):Void;
	/**
		SERVER
		 Sets the entity frozen state
	**/
	@:native("setFrozen") public function setFrozen(freeze:Any):Void;
	/**
		SHARED
		 Returns the game assigned owner of an entity. This doesn't take CPPI into account and will return nil for most standard entities.
 Used on entities with custom physics like held SWEPs and fired bullets in which case player entity should be returned.
	**/
	@:native("entOwner") public function entOwner():Any;
	/**
		SERVER
		 Set the angular velocity of an object
	**/
	@:native("setAngleVelocity") public function setAngleVelocity(angvel:Any):Void;
	/**
		SHARED
		 Returns the position of the entity
	**/
	@:native("getPos") public function getPos():Any;
	/**
		SHARED
		 Returns the number manipulate jiggle of the bone (0 - 255)
	**/
	@:native("getManipulateBoneJiggle") public function getManipulateBoneJiggle(bone:Any):Any;
	/**
		SHARED
		 Returns the starfall or expression2's name
	**/
	@:native("getChipName") public function getChipName():Any;
	/**
		SHARED
		 Returns the x, y, z size of the entity's outer bounding box (local to the entity)
	**/
	@:native("obbSize") public function obbSize():Any;
	/**
		SHARED
		 Checks if the entity ONGROUND flag is set
	**/
	@:native("isOnGround") public function isOnGround():Any;
	/**
		SERVER
		 Sets the entity's mass
	**/
	@:native("setMass") public function setMass(mass:Any):Void;
	/**
		SERVER
		 Sets the entity movement state
	**/
	@:native("enableMotion") public function enableMotion(move:Any):Void;
	/**
		CLIENT
		 Allows manipulation of an entity's bones' scale
	**/
	@:native("manipulateBoneScale") public function manipulateBoneScale(bone:Any,vec:Any):Void;
	/**
		SERVER
		 Sets the entitiy's position. No interpolation will occur clientside, use physobj.setPos to have interpolation.
	**/
	@:native("setPos") public function setPos(vec:Any):Void;
	/**
		SHARED
		 Gets the hit group of a given hitbox in a given hitbox set.
	**/
	@:native("getHitBoxHitGroup") public function getHitBoxHitGroup(hitbox:Any,hitboxset:Any):Any;
	/**
		CLIENT
		 Sets a hologram or custom_prop's custom mesh material
	**/
	@:native("setMeshMaterial") public function setMeshMaterial(material:Any):Void;
	/**
		SHARED
		 To string
	**/
	@:native("__tostring") public function __tostring():Void;
	/**
		SERVER
		 Simulate a Use action on the entity by the chip owner
	**/
	@:native("use") public function use(usetype:Any,value:Any):Void;
	/**
		SERVER
		 Sets the entity's friction multiplier
	**/
	@:native("setFriction") public function setFriction(number:Any):Void;
	/**
		SHARED
		 Returns Entity axis aligned bounding box in world coordinates
	**/
	@:native("worldSpaceAABB") public function worldSpaceAABB():Any;
	/**
		SERVER
		 Applies torque
	**/
	@:native("applyTorque") public function applyTorque(torque:Any):Void;
	/**
		SERVER
		 Sets the entity to be Solid or not.
	**/
	@:native("setSolid") public function setSolid(solid:Any):Void;
	/**
		SHARED
		 Gets a datatable float
	**/
	@:native("getDTFloat") public function getDTFloat(key:Any):Any;
	/**
		SHARED
		 Stops a sound on the entity
	**/
	@:native("stopSound") public function stopSound(snd:Any):Void;
	/**
		CLIENT
		 Allows manipulation of an entity's bones' jiggle status
	**/
	@:native("manipulateBoneJiggle") public function manipulateBoneJiggle(bone:Any,enabled:Any):Void;
	/**
		SERVER
		 Applies angular force to the entity (This function is garbage, use applyTorque instead)
	**/
	@:native("applyAngForce") public function applyAngForce(ang:Any):Void;
	/**
		SHARED
		 Gets the weight (value) of a flex.
	**/
	@:native("getFlexWeight") public function getFlexWeight(flexid:Any):Any;
	/**
		CLIENT
		 Allows manipulation of an entity's bones' positions
	**/
	@:native("manipulateBonePosition") public function manipulateBonePosition(bone:Any,vec:Any):Void;
	/**
		SERVER
		 Checks the entities frozen state
	**/
	@:native("isFrozen") public function isFrozen():Any;
	/**
		SHARED
		 Gets the parent of an entity
	**/
	@:native("getParent") public function getParent():Any;
	/**
		SHARED
		 Returns the vector manipulate scale of the bone 
	**/
	@:native("getManipulateBoneScale") public function getManipulateBoneScale(bone:Any):Any;
	/**
		SHARED
		 Returns max local bounding box vector of the entity
	**/
	@:native("obbMaxs") public function obbMaxs():Any;
	/**
		SERVER
		 Applys a angular velocity to an object
	**/
	@:native("addAngleVelocity") public function addAngleVelocity(angvel:Any):Void;
	/**
		SHARED
		 Gets the renderfx of the entity
	**/
	@:native("getRenderFX") public function getRenderFX():Any;
	/**
		SHARED
		 Gets the children (the parented entities) of an entity
	**/
	@:native("getChildren") public function getChildren():Any;
	/**
		SERVER
		 Applies linear force to the entity with an offset
	**/
	@:native("applyForceOffset") public function applyForceOffset(force:Any,position:Any):Void;
	/**
		SERVER
		 Removes an entity
	**/
	@:native("remove") public function remove():Void;
	/**
		SHARED
		 Returns the world position of the entity's outer bounding box
	**/
	@:native("obbCenterW") public function obbCenterW():Any;
	/**
		SHARED
		 Sets the weight (value) of a flex.
	**/
	@:native("setFlexWeight") public function setFlexWeight(flexid:Any,weight:Any):Void;
	/**
		CLIENT
		 Returns whether or not the entity can be drawn using Entity.draw function
 Checks Entity against a predefined class whitelist
 Entities that have RenderOverride defined or are parented cannot be drawn
	**/
	@:native("canDraw") public function canDraw():Void;
	/**
		SHARED
		 Gets a datatable entity
	**/
	@:native("getDTEntity") public function getDTEntity(key:Any):Any;
	/**
		SHARED
		 Sets the whether an entity should be drawn or not
	**/
	@:native("setNoDraw") public function setNoDraw(draw:Any):Void;
	/**
		SHARED
		 Sets the submaterial of the entity
	**/
	@:native("setSubMaterial") public function setSubMaterial(index:Any,material:Any):Void;
	/**
		SERVER
		 Unparents the entity from another entity
	**/
	@:native("unparent") public function unparent():Void;
	/**
		SERVER
		 Sets the physics of an entity to be a sphere
	**/
	@:native("enableSphere") public function enableSphere(enabled:Any):Void;
	/**
		SERVER
		 Applies linear force to the entity
	**/
	@:native("applyForceCenter") public function applyForceCenter(vec:Any):Void;
	/**
		SERVER
		 Links starfall components to a starfall processor or vehicle. Screen can only connect to processor. HUD can connect to processor and vehicle.
	**/
	@:native("linkComponent") public function linkComponent(e:Any):Void;
	/**
		SHARED
		 Gets the color of an entity
	**/
	@:native("getColor") public function getColor():Any;
	/**
		SHARED
		 Returns the angular velocity of the entity
	**/
	@:native("getAngleVelocity") public function getAngleVelocity():Any;
	/**
		SHARED
		 Gets the Average CPU Time in the buffer of the specified starfall or expression2.
	**/
	@:native("getQuotaAverage") public function getQuotaAverage():Any;
	/**
		SERVER
		 Returns an entities wirelink
	**/
	@:native("getWirelink") public function getWirelink():Any;
	/**
		SERVER
		 Checks whether entity has physics
	**/
	@:native("isValidPhys") public function isValidPhys():Any;
	/**
		SHARED
		 Checks if an entity is valid.
	**/
	@:native("isValid") public function isValid():Any;
	/**
		SERVER
		 Gets all players the specified starfall errored for.
 This excludes the owner of the starfall chip.
	**/
	@:native("getErroredPlayers") public function getErroredPlayers():Any;
	/**
		SHARED
		 Checks if an engine effect is applied to the entity
	**/
	@:native("isEffectActive") public function isEffectActive(effect:Any):Any;
	/**
		SERVER
		 Sets the entity's collision group
	**/
	@:native("setCollisionGroup") public function setCollisionGroup(group:Any):Void;
	/**
		SHARED
		 Casts a hologram entity into the hologram type
	**/
	@:native("toHologram") public function toHologram():Any;
	/**
		SHARED
		 Gets the max health of an entity
	**/
	@:native("getMaxHealth") public function getMaxHealth():Any;
	/**
		SHARED
		 Returns the ragdoll bone index given a bone name
	**/
	@:native("lookupBone") public function lookupBone(name:Any):Any;
	/**
		SHARED
		 Gets the entitiy's eye angles
	**/
	@:native("getEyeAngles") public function getEyeAngles():Any;
	/**
		SHARED
		 Returns how submerged the entity is in water
	**/
	@:native("getWaterLevel") public function getWaterLevel():Any;
	/**
		SERVER
		 Sets entity gravity
	**/
	@:native("enableGravity") public function enableGravity(grav:Any):Void;
	/**
		SHARED
		 Checks if an entity is a player.
	**/
	@:native("isPlayer") public function isPlayer():Any;
	/**
		SHARED
		 Gets an entities' submaterial
	**/
	@:native("getSubMaterial") public function getSubMaterial(index:Any):Any;
}

@:forward
extern abstract Entity(EntityData) {
}

