// Generated by SFHaxe 0.3.2
package sf.library;
@:native("game") extern class Game {
	/**
		SHARED
		 Returns whether or not the current game is single player
	**/
	@:native("isSinglePlayer") public static function isSinglePlayer():Bool;
	/**
		SHARED
		 Given a 64bit SteamID will return a STEAM_0: style Steam ID
	**/
	@:native("steamIDFrom64") public static function steamIDFrom64(id:std.String):std.String;
	/**
		SHARED
		 Given a STEAM_0 style Steam ID will return a 64bit Steam ID
	**/
	@:native("steamIDTo64") public static function steamIDTo64(id:std.String):std.String;
	/**
		CLIENT
		 Returns the direction and how obstructed the map's sun is or nil if it doesn't exist
	**/
	#if CLIENT @:native("getSunInfo") public static function getSunInfo():sf.type.Vector;#end
	/**
		SHARED
		 Returns the maximum player limit
	**/
	@:native("getMaxPlayers") public static function getMaxPlayers():Float;
	/**
		SHARED
		 Returns whether or not the server is a dedicated server
	**/
	@:native("isDedicated") public static function isDedicated():Bool;
	/**
		SHARED
		 Returns the map name
	**/
	@:native("getMap") public static function getMap():std.String;
	/**
		SERVER
		 Applies explosion damage to all entities in the specified radius
	**/
	#if SERVER @:native("blastDamage") public static function blastDamage(damageOrigin:sf.type.Vector, damageRadius:Float, damage:Float):Void;#end
	/**
		SHARED
		 Returns the game time scale
	**/
	@:native("getTimeScale") public static function getTimeScale():Float;
	/**
		CLIENT
		 Returns the server's frame time and standard deviation
	**/
	#if CLIENT @:native("serverFrameTime") public static function serverFrameTime():Float;#end
	/**
		SHARED
		 Returns the number of seconds between each gametick
	**/
	@:native("getTickInterval") public static function getTickInterval():Float;
	/**
		CLIENT
		 Check whether the skybox is visible from the point specified
	**/
	#if CLIENT @:native("isSkyboxVisibleFromPoint") public static function isSkyboxVisibleFromPoint(position:sf.type.Vector):Bool;#end
	/**
		SHARED
		 Returns The hostname
	**/
	@:native("getHostname") public static function getHostname():std.String;
	/**
		SHARED
		 Returns the worldspawn entity
	**/
	@:native("getWorld") public static function getWorld():sf.type.Entity;
	/**
		CLIENT
		 Returns if the game has focus or not, i.e. will return false if the game is minimized
	**/
	#if CLIENT @:native("hasFocus") public static function hasFocus():Bool;#end
	/**
		SHARED
		 Checks whether the specified game is mounted
	**/
	@:native("isMounted") public static function isMounted(str:std.String):Bool;
	/**
		SHARED
		 Returns AmmoData for given id
	**/
	@:native("getAmmoData") public static function getAmmoData(id:Float):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Returns true if the server is on a LAN
	**/
	@:native("isLan") public static function isLan():Bool;
}

