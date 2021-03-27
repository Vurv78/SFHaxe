// Generated by SFHaxe 0.3.0
package sf.type;
extern class PlayerData {
	/**
		CLIENT
		 Plays an animation on the player
	**/
	#if CLIENT @:native("setAnimation") public function setAnimation(sequence:Dynamic, ?progress:Null<Float>, ?rate:Null<Float>, ?loop:Null<Bool>, ?auto:Null<Bool>, ?act:Dynamic):Void;#end
	/**
		SHARED
		 Returns true if the player is noclipped
	**/
	@:native("isNoclipped") public function isNoclipped():Bool;
	/**
		CLIENT
		 Sets the animation time
	**/
	#if CLIENT @:native("setAnimationTime") public function setAnimationTime(time:Float):Void;#end
	/**
		CLIENT
		 Returns whether the local player has muted the player
	**/
	#if CLIENT @:native("isMuted") public function isMuted():Bool;#end
	/**
		SHARED
		 Returns whether the player is crouching
	**/
	@:native("isCrouching") public function isCrouching():Bool;
	/**
		CLIENT
		 Gets whether a animation is playing
	**/
	#if CLIENT @:native("isPlayingAnimation") public function isPlayingAnimation():Bool;#end
	/**
		SERVER
		 Sets a player's eye angles
	**/
	#if SERVER @:native("setEyeAngles") public function setEyeAngles(ang:sf.type.Angle):Void;#end
	/**
		CLIENT
		 Gets the progress of the animation ranging 0-1
	**/
	#if CLIENT @:native("getAnimationProgress") public function getAnimationProgress():Float;#end
	/**
		CLIENT
		 Gets the animation time
	**/
	#if CLIENT @:native("getAnimationTime") public function getAnimationTime():Float;#end
	/**
		SHARED
		 Returns the camera punch offset angle
	**/
	@:native("getViewPunchAngles") public function getViewPunchAngles():sf.type.Angle;
	/**
		SERVER
		 Returns whether or not the player has godmode
	**/
	#if SERVER @:native("hasGodMode") public function hasGodMode():Bool;#end
	/**
		SHARED
		 Returns whether the player is a super admin
	**/
	@:native("isSuperAdmin") public function isSuperAdmin():Bool;
	/**
		SHARED
		 Returns the player's UserID
	**/
	@:native("getUserID") public function getUserID():Float;
	/**
		SHARED
		 Returns whether the player is connected
	**/
	@:native("isConnected") public function isConnected():Bool;
	/**
		SHARED
		 Returns whether the player belongs to a usergroup
	**/
	@:native("isUserGroup") public function isUserGroup(groupName:std.String):Bool;
	/**
		CLIENT
		 Returns the voice volume of the player
	**/
	#if CLIENT @:native("voiceVolume") public function voiceVolume():Float;#end
	/**
		CLIENT
		 Sets the animation playback rate
	**/
	#if CLIENT @:native("setAnimationRate") public function setAnimationRate(rate:Float):Void;#end
	/**
		SHARED
		 Returns the name of the player's current team
	**/
	@:native("getTeamName") public function getTeamName():std.String;
	/**
		SHARED
		 Returns a table with information of what the player is looking at
	**/
	@:native("getEyeTrace") public function getEyeTrace():lua.Table<Dynamic,Dynamic>;
	/**
		SERVER
		 Returns true if the player is timing out
	**/
	#if SERVER @:native("isTimingOut") public function isTimingOut():Bool;#end
	/**
		SHARED
		 Returns the entity that the player is standing on
	**/
	@:native("getGroundEntity") public function getGroundEntity():sf.type.Entity;
	/**
		CLIENT
		 Sets the animation progress
	**/
	#if CLIENT @:native("setAnimationProgress") public function setAnimationProgress(progress:Float):Void;#end
	/**
		SHARED
		 Returns maximum armor capacity
	**/
	@:native("getMaxArmor") public function getMaxArmor():Float;
	/**
		SHARED
		 Returns the player's aim vector
	**/
	@:native("getAimVector") public function getAimVector():sf.type.Vector;
	/**
		SHARED
		 Returns whether the player is frozen
	**/
	@:native("isFrozen") public function isFrozen():Bool;
	/**
		SHARED
		 Returns the player's maximum speed
	**/
	@:native("getMaxSpeed") public function getMaxSpeed():Float;
	/**
		CLIENT
		 Resets the animation
	**/
	#if CLIENT @:native("resetAnimation") public function resetAnimation():Void;#end
	/**
		CLIENT
		 Sets the animation bounce
	**/
	#if CLIENT @:native("setAnimationBounce") public function setAnimationBounce(bounce:Bool):Void;#end
	/**
		SHARED
		 Returns the player's unique ID. Returns 1 in singleplayer.
		 Returns a Int32 that remains constant for a player across joins/leaves and across different servers.
		 This can be used when a string is inappropriate - e.g. in a database primary key.
		 Deprecated! You should use the SteamID functions instead.
	**/
	@:native("getUniqueID") public function getUniqueID():Float;
	/**
		SHARED
		 Returns the player's jump power
	**/
	@:native("getJumpPower") public function getJumpPower():Float;
	/**
		SERVER
		 Drops the players' weapon
	**/
	#if SERVER @:native("dropWeapon") public function dropWeapon(weapon:Dynamic, ?target:Null<sf.type.Vector>, ?velocity:Null<sf.type.Vector>):Void;#end
	/**
		SHARED
		 Returns whether the player's flashlight is on
	**/
	@:native("isFlashlightOn") public function isFlashlightOn():Bool;
	/**
		SHARED
		 Returns whether the player is typing in their chat
	**/
	@:native("isTyping") public function isTyping():Bool;
	/**
		SERVER
		 Returns the packet loss of the client
	**/
	#if SERVER @:native("getPacketLoss") public function getPacketLoss():Float;#end
	/**
		SHARED
		 Returns a table of weapons the player is carrying
	**/
	@:native("getWeapons") public function getWeapons():lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Gets the amount of ammo the player has.
	**/
	@:native("getAmmoCount") public function getAmmoCount(idOrName:Dynamic):Float;
	/**
		SHARED
		 Returns the specified weapon or nil if the player doesn't have it
	**/
	@:native("getWeapon") public function getWeapon(wep:std.String):sf.type.Weapon;
	/**
		SHARED
		 Returns whether the player is an admin
	**/
	@:native("isAdmin") public function isAdmin():Bool;
	/**
		SHARED
		 Returns the player's name
	**/
	@:native("getName") public function getName():std.String;
	/**
		CLIENT
		 Resets gesture animations on a player
	**/
	#if CLIENT @:native("resetGesture") public function resetGesture(?slot:Null<Float>):Void;#end
	/**
		SHARED
		 Returns whether the player is sprinting
	**/
	@:native("isSprinting") public function isSprinting():Bool;
	/**
		SHARED
		 Returns the player's shoot position
	**/
	@:native("getShootPos") public function getShootPos():sf.type.Vector;
	/**
		SERVER
		 Lets you change the size of yourself if the server has sf_permissions_entity_owneraccess 1
	**/
	#if SERVER @:native("setModelScale") public function setModelScale(scale:Float):Void;#end
	/**
		SHARED
		 Returns the player's running speed
	**/
	@:native("getRunSpeed") public function getRunSpeed():Float;
	/**
		SHARED
		 Returns the player's current view entity
	**/
	@:native("getViewEntity") public function getViewEntity():sf.type.Entity;
	/**
		SHARED
		 Returns the player's field of view
	**/
	@:native("getFOV") public function getFOV():Float;
	/**
		CLIENT
		 Sets the animation loop
	**/
	#if CLIENT @:native("setAnimationLoop") public function setAnimationLoop(loop:Bool):Void;#end
	/**
		SHARED
		 Returns whether or not the player is pushing the key.
	**/
	@:native("keyDown") public function keyDown(key:Float):Bool;
	/**
		SHARED
		 Returns the player's view model
		 In the Client realm, other players' viewmodels are not available unless they are being spectated
	**/
	@:native("getViewModel") public function getViewModel():sf.type.Entity;
	/**
		CLIENT
		 Returns the relationship of the player to the local client
	**/
	#if CLIENT @:native("getFriendStatus") public function getFriendStatus():std.String;#end
	/**
		SERVER
		 Returns the hitgroup where the player was last hit.
	**/
	#if SERVER @:native("lastHitGroup") public function lastHitGroup():Float;#end
	/**
		SERVER
		 Forces the player to say the first argument
		 Only works on the chip's owner.
	**/
	#if SERVER @:native("say") public function say(text:std.String, ?teamOnly:Null<Bool>):Void;#end
	/**
		SHARED
		 Returns whether the player is in a vehicle
	**/
	@:native("inVehicle") public function inVehicle():Bool;
	/**
		CLIENT
		 Sets the animation activity
	**/
	#if CLIENT @:native("setAnimationActivity") public function setAnimationActivity(?activity:Dynamic):Void;#end
	/**
		SHARED
		 Returns whether the player is alive
	**/
	@:native("isAlive") public function isAlive():Bool;
	/**
		CLIENT
		 Sets the animation range
	**/
	#if CLIENT @:native("setAnimationRange") public function setAnimationRange(min:Float, max:Float):Void;#end
	/**
		CLIENT
		 Plays gesture animations on a player
	**/
	#if CLIENT @:native("playGesture") public function playGesture(animation:Dynamic, ?loop:Null<Bool>, ?slot:Null<Float>, ?weight:Null<Float>):Void;#end
	/**
		SHARED
		 Returns the player's current ping
	**/
	@:native("getPing") public function getPing():Float;
	/**
		SHARED
		 Returns whether the player is a bot
	**/
	@:native("isBot") public function isBot():Bool;
	/**
		SHARED
		 Returns the amount of deaths of the player
	**/
	@:native("getDeaths") public function getDeaths():Float;
	/**
		SHARED
		 Returns the player's duck speed
	**/
	@:native("getDuckSpeed") public function getDuckSpeed():Float;
	/**
		SERVER
		 Returns the time in seconds since the player connected
	**/
	#if SERVER @:native("getTimeConnected") public function getTimeConnected():Float;#end
	/**
		SHARED
		 Returns the entity the player is currently using, like func_tank mounted turrets or +use prop pickups.
	**/
	@:native("getEntityInUse") public function getEntityInUse():sf.type.Entity;
	/**
		SHARED
		 Returns the vehicle the player is driving
	**/
	@:native("getVehicle") public function getVehicle():sf.type.Vehicle;
	/**
		SHARED
		 Returns the amount of kills of the player
	**/
	@:native("getFrags") public function getFrags():Float;
	/**
		SHARED
		 Returns the player's current team
	**/
	@:native("getTeam") public function getTeam():Float;
	/**
		SHARED
		 Returns the player's SteamID
	**/
	@:native("getSteamID") public function getSteamID():std.String;
	/**
		SHARED
		 Returns the players armor
	**/
	@:native("getArmor") public function getArmor():Float;
	/**
		SERVER
		 Returns the number of seconds that the player has been timing out for
	**/
	#if SERVER @:native("getTimeoutSeconds") public function getTimeoutSeconds():Float;#end
	/**
		SHARED
		 Returns the player's SteamID64 / Community ID
		 In singleplayer, this will return no value serverside.
		 For bots, this will return 90071996842377216 (equivalent to STEAM_0:0:0) for the first bot to join, and adds 1 to the id for the bot id.
		 Returns no value for bots clientside.
	**/
	@:native("getSteamID64") public function getSteamID64():std.String;
	/**
		CLIENT
		 Returns whether the player is heard by the local player.
	**/
	#if CLIENT @:native("isSpeaking") public function isSpeaking():Bool;#end
	/**
		CLIENT
		 Sets the animation audo advance
	**/
	#if CLIENT @:native("setAnimationAutoAdvance") public function setAnimationAutoAdvance(auto:Bool):Void;#end
	/**
		SERVER
		 Sets the view entity of the player. Only works if they are linked to a hud.
	**/
	#if SERVER @:native("setViewEntity") public function setViewEntity(ent:sf.type.Entity):Void;#end
	/**
		SHARED
		 Returns the name of the player's active weapon
	**/
	@:native("getActiveWeapon") public function getActiveWeapon():sf.type.Weapon;
	/**
		CLIENT
		 Sets the weight of the gesture animation in the given gesture slot
	**/
	#if CLIENT @:native("setGestureWeight") public function setGestureWeight(?slot:Null<Float>, ?weight:Null<Float>):Void;#end
}

@:forward
extern abstract Player(PlayerData) {
}

