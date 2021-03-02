package sf.library;
@:native("game") extern class Game {
	/**
		SHARED	
		 Returns AmmoData for given id
	**/
	@:native("getAmmoData") public static function getAmmoData(number:Any):Any;
	/**
		SHARED	
		 Returns the number of seconds between each gametick
	**/
	@:native("getTickInterval") public static function getTickInterval():Any;
	/**
		SHARED	
		 Given a STEAM_0 style Steam ID will return a 64bit Steam ID
	**/
	@:native("steamIDTo64") public static function steamIDTo64(id:Any):Any;
	/**
		SERVER	
		 Applies explosion damage to all entities in the specified radius
	**/
	@:native("blastDamage") public static function blastDamage(damageOrigin:Any,damageRadius:Any,damage:Any):Void;
	/**
		SHARED	
		 Returns The hostname
	**/
	@:native("getHostname") public static function getHostname():Any;
	/**
		SHARED	
		 Returns the maximum player limit
	**/
	@:native("getMaxPlayers") public static function getMaxPlayers():Any;
	/**
		SHARED	
		 Returns the worldspawn entity
	**/
	@:native("getWorld") public static function getWorld():Any;
	/**
		SHARED	
		 Returns whether or not the server is a dedicated server
	**/
	@:native("isDedicated") public static function isDedicated():Any;
	/**
		SHARED	
		 Returns true if the server is on a LAN
	**/
	@:native("isLan") public static function isLan():Any;
	/**
		SHARED	
		 Returns the game time scale
	**/
	@:native("getTimeScale") public static function getTimeScale():Any;
	/**
		CLIENT	
		 Check whether the skybox is visible from the point specified
	**/
	@:native("isSkyboxVisibleFromPoint") public static function isSkyboxVisibleFromPoint(position:Any):Any;
	/**
		SHARED	
		 Returns whether or not the current game is single player
	**/
	@:native("isSinglePlayer") public static function isSinglePlayer():Any;
	/**
		SHARED	
		 Given a 64bit SteamID will return a STEAM_0: style Steam ID
	**/
	@:native("steamIDFrom64") public static function steamIDFrom64(id:Any):Any;
	/**
		SHARED	
		 Returns the map name
	**/
	@:native("getMap") public static function getMap():Any;
	/**
		CLIENT	
		 Returns the direction and how obstructed the map's sun is or nil if it doesn't exist
	**/
	@:native("getSunInfo") public static function getSunInfo():Any;
	/**
		SHARED	
		 Checks whether the specified game is mounted
	**/
	@:native("isMounted") public static function isMounted(str:Any):Any;
	/**
		CLIENT	
		 Returns if the game has focus or not, i.e. will return false if the game is minimized
	**/
	@:native("hasFocus") public static function hasFocus():Any;
}

