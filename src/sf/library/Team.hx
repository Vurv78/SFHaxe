// Generated by SFHaxe 0.3.3
package sf.library;
@:native("team") extern class Team {
	/**
		SHARED
		Returns the color of a team
	**/
	@:native("getColor") public static function getColor(ind:Float):sf.type.Color;
	/**
		SHARED
		Returns the table of players on a team
	**/
	@:native("getPlayers") public static function getPlayers(ind:Float):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		Returns team with least players
	**/
	@:native("bestAutoJoinTeam") public static function bestAutoJoinTeam():Float;
	/**
		SHARED
		Returns number of players on a team
	**/
	@:native("getNumPlayers") public static function getNumPlayers(ind:Float):Float;
	/**
		SHARED
		Returns number of frags of all players on a team
	**/
	@:native("getNumFrags") public static function getNumFrags(ind:Float):Float;
	/**
		SHARED
		Returns number of deaths of all players on a team
	**/
	@:native("getNumDeaths") public static function getNumDeaths(ind:Float):Float;
	/**
		SHARED
		Returns whether or not a team can be joined
	**/
	@:native("getJoinable") public static function getJoinable(ind:Float):Bool;
	/**
		SHARED
		Returns whether or not the team exists
	**/
	@:native("exists") public static function exists(ind:Float):Bool;
	/**
		SHARED
		Returns the score of a team
	**/
	@:native("getScore") public static function getScore(ind:Float):Float;
	/**
		SHARED
		Returns the name of a team
	**/
	@:native("getName") public static function getName(ind:Float):std.String;
	/**
		SHARED
		Returns a table containing team information
	**/
	@:native("getAllTeams") public static function getAllTeams():lua.Table<Dynamic,Dynamic>;
}

