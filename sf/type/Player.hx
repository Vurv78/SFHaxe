package sf.type;
extern class Player {
	//  SHARED
	/*  Returns the vehicle the player is driving */
	@:native("getVehicle") public function getVehicle():Any;
	//  SHARED
	/*  Returns the player's current team */
	@:native("getTeam") public function getTeam():Any;
	//  SHARED
	/*  Returns the player's steam ID */
	@:native("getSteamID") public function getSteamID():Any;
	//  CLIENT
	/*  Returns whether the local player has muted the player */
	@:native("isMuted") public function isMuted():Any;
	//  SHARED
	/*  Returns whether the player is crouching */
	@:native("isCrouching") public function isCrouching():Any;
	//  CLIENT
	/*  Gets whether a animation is playing */
	@:native("isPlayingAnimation") public function isPlayingAnimation():Any;
	//  SERVER
	/*  Sets a player's eye angles */
	@:native("setEyeAngles") public function setEyeAngles(ang:Any):Void;
	//  CLIENT
	/*  Gets the progress of the animation ranging 0-1 */
	@:native("getAnimationProgress") public function getAnimationProgress():Any;
	//  CLIENT
	/*  Gets the animation time */
	@:native("getAnimationTime") public function getAnimationTime():Any;
	//  SHARED
	/*  Returns the camera punch offset angle */
	@:native("getViewPunchAngles") public function getViewPunchAngles():Any;
	//  SERVER
	/*  Returns whether or not the player has godmode */
	@:native("hasGodMode") public function hasGodMode():Any;
	//  SHARED
	/*  Returns whether the player is a super admin */
	@:native("isSuperAdmin") public function isSuperAdmin():Any;
	//  SHARED
	/*  Returns the player's community ID */
	@:native("getSteamID64") public function getSteamID64():Any;
	//  SHARED
	/*  Returns whether the player is connected */
	@:native("isConnected") public function isConnected():Any;
	//  SHARED
	/*  Returns whether the player belongs to a usergroup */
	@:native("isUserGroup") public function isUserGroup(group:Any):Any;
	//  CLIENT
	/*  Returns the voice volume of the player */
	@:native("voiceVolume") public function voiceVolume():Any;
	//  CLIENT
	/*  Sets the animation playback rate */
	@:native("setAnimationRate") public function setAnimationRate(rate:Any):Void;
	//  CLIENT
	/*  Returns whether the player is heard by the local player. */
	@:native("isSpeaking") public function isSpeaking():Any;
	//  SHARED
	/*  Returns a table with information of what the player is looking at */
	@:native("getEyeTrace") public function getEyeTrace():Any;
	//  SERVER
	/*  Returns true if the player is timing out */
	@:native("isTimingOut") public function isTimingOut():Any;
	//  SHARED
	/*  Returns the entity that the player is standing on */
	@:native("getGroundEntity") public function getGroundEntity():Any;
	//  CLIENT
	/*  Sets the animation progress */
	@:native("setAnimationProgress") public function setAnimationProgress(progress:Any):Void;
	//  SHARED
	/*  Returns maximum armor capacity */
	@:native("getMaxArmor") public function getMaxArmor():Any;
	//  SHARED
	/*  Returns the player's field of view */
	@:native("getFOV") public function getFOV():Any;
	//  SHARED
	/*  Returns whether the player is frozen */
	@:native("isFrozen") public function isFrozen():Any;
	//  SHARED
	/*  Returns the player's maximum speed */
	@:native("getMaxSpeed") public function getMaxSpeed():Any;
	//  CLIENT
	/*  Resets the animation */
	@:native("resetAnimation") public function resetAnimation():Void;
	//  CLIENT
	/*  Sets the animation bounce */
	@:native("setAnimationBounce") public function setAnimationBounce(bounce:Any):Void;
	//  SHARED
	/*  Returns the player's unique ID */
	@:native("getUniqueID") public function getUniqueID():Any;
	//  SHARED
	/*  Returns the player's jump power */
	@:native("getJumpPower") public function getJumpPower():Any;
	//  SERVER
	/*  Drops the players' weapon */
	@:native("dropWeapon") public function dropWeapon(weapon:Any,target:Any,velocity:Any):Void;
	//  SHARED
	/*  Returns whether the player's flashlight is on */
	@:native("isFlashlightOn") public function isFlashlightOn():Any;
	//  SHARED
	/*  Returns whether the player is typing in their chat */
	@:native("isTyping") public function isTyping():Any;
	//  SHARED
	/*  Returns the amount of kills of the player */
	@:native("getFrags") public function getFrags():Any;
	//  SHARED
	/*  Returns a table of weapons the player is carrying */
	@:native("getWeapons") public function getWeapons():Any;
	//  SHARED
	/*  Gets the amount of ammo the player has. */
	@:native("getAmmoCount") public function getAmmoCount(id:Any):Any;
	//  SHARED
	/*  Returns the specified weapon or nil if the player doesn't have it */
	@:native("getWeapon") public function getWeapon(wep:Any):Any;
	//  SHARED
	/*  Returns whether the player is an admin */
	@:native("isAdmin") public function isAdmin():Any;
	//  SHARED
	/*  Returns the player's name */
	@:native("getName") public function getName():Any;
	//  SHARED
	/*  Returns true if the player is noclipped */
	@:native("isNoclipped") public function isNoclipped():Any;
	//  SHARED
	/*  Returns the name of the player's active weapon */
	@:native("getActiveWeapon") public function getActiveWeapon():Any;
	//  SHARED
	/*  Returns whether or not the player is pushing the key. */
	@:native("keyDown") public function keyDown(key:Any):Any;
	//  SERVER
	/*  Returns the number of seconds that the player has been timing out for */
	@:native("getTimeoutSeconds") public function getTimeoutSeconds():Any;
	//  SERVER
	/*  Lets you change the size of yourself if the server has sf_permissions_entity_owneraccess 1 */
	@:native("setModelScale") public function setModelScale(scale:Any):Void;
	//  SERVER
	/*  Sets the view entity of the player. Only works if they are linked to a hud. */
	@:native("setViewEntity") public function setViewEntity(ent:Any):Void;
	//  SHARED
	/*  Returns the player's running speed */
	@:native("getRunSpeed") public function getRunSpeed():Any;
	//  SHARED
	/*  Returns the player's current view entity */
	@:native("getViewEntity") public function getViewEntity():Any;
	//  SHARED
	/*  Returns whether the player is sprinting */
	@:native("isSprinting") public function isSprinting():Any;
	//  CLIENT
	/*  Sets the animation loop */
	@:native("setAnimationLoop") public function setAnimationLoop(loop:Any):Void;
	//  CLIENT
	/*  Sets the animation audo advance */
	@:native("setAnimationAutoAdvance") public function setAnimationAutoAdvance(auto_advance:Any):Void;
	//  SHARED
	/*  Returns the name of the player's current team */
	@:native("getTeamName") public function getTeamName():Any;
	//  CLIENT
	/*  Returns the relationship of the player to the local client */
	@:native("getFriendStatus") public function getFriendStatus():Any;
	//  SERVER
	/*  Returns the hitgroup where the player was last hit. */
	@:native("lastHitGroup") public function lastHitGroup():Any;
	//  SHARED
	/*  Returns the player's user ID */
	@:native("getUserID") public function getUserID():Any;
	//  SHARED
	/*  Returns whether the player is in a vehicle */
	@:native("inVehicle") public function inVehicle():Any;
	//  SHARED
	/*  Returns whether the player is alive */
	@:native("isAlive") public function isAlive():Any;
	//  CLIENT
	/*  Resets gesture animations on a player */
	@:native("resetGesture") public function resetGesture(slot:Any):Void;
	//  SHARED
	/*  Returns whether the player is an NPC */
	@:native("isNPC") public function isNPC():Any;
	//  CLIENT
	/*  Plays gesture animations on a player */
	@:native("playGesture") public function playGesture(animation:Any,loop:Any,slot:Any,weight:Any):Void;
	//  CLIENT
	/*  Plays an animation on the player */
	@:native("setAnimation") public function setAnimation(sequence:Any,progress:Any,rate:Any,loop:Any,auto_advance:Any,act:Any):Void;
	//  SHARED
	/*  Returns whether the player is a bot */
	@:native("isBot") public function isBot():Any;
	//  SERVER
	/*  Forces the player to say the first argument
 Only works on the chip's owner. */
	@:native("say") public function say(text:Any,teamOnly:Any):Void;
	//  SHARED
	/*  Returns the player's duck speed  */
	@:native("getDuckSpeed") public function getDuckSpeed():Any;
	//  SERVER
	/*  Returns the time in seconds since the player connected */
	@:native("getTimeConnected") public function getTimeConnected():Any;
	//  SHARED
	/*  Returns the entity the player is currently using, like func_tank mounted turrets or +use prop pickups. */
	@:native("getEntityInUse") public function getEntityInUse():Any;
	//  SERVER
	/*  Returns the packet loss of the client */
	@:native("getPacketLoss") public function getPacketLoss():Any;
	//  SHARED
	/*  Returns the player's current ping */
	@:native("getPing") public function getPing():Any;
	//  CLIENT
	/*  Sets the animation range */
	@:native("setAnimationRange") public function setAnimationRange(min:Any,max:Any):Void;
	//  SHARED
	/*  Returns the player's shoot position */
	@:native("getShootPos") public function getShootPos():Any;
	//  SHARED
	/*  Returns the players armor */
	@:native("getArmor") public function getArmor():Any;
	//  CLIENT
	/*  Sets the animation time */
	@:native("setAnimationTime") public function setAnimationTime(time:Any):Void;
	//  CLIENT
	/*  Sets the animation activity */
	@:native("setAnimationActivity") public function setAnimationActivity(activity:Any):Void;
	//  SHARED
	/*  Returns the player's view model
 In the Client realm, other players' viewmodels are not available unless they are being spectated */
	@:native("getViewModel") public function getViewModel():Any;
	//  SHARED
	/*  Returns the amount of deaths of the player */
	@:native("getDeaths") public function getDeaths():Any;
	//  SHARED
	/*  Returns the player's aim vector */
	@:native("getAimVector") public function getAimVector():Any;
	//  SHARED
	/*  Returns whether the player is a player */
	@:native("isPlayer") public function isPlayer():Any;
	//  CLIENT
	/*  Sets the weight of the gesture animation in the given gesture slot */
	@:native("setGestureWeight") public function setGestureWeight(slot:Any,weight:Any):Void;
}

