package sf.library;
@:native("team") extern class Team {
	//  SHARED
	/*  Returns the table of players on a team */
	@:native("getPlayers") public static function getPlayers(ind:Any):Any;
	//  SHARED
	/*  Returns the score of a team */
	@:native("getScore") public static function getScore(ind:Any):Any;
	//  SHARED
	/*  Returns number of players on a team */
	@:native("getNumPlayers") public static function getNumPlayers(ind:Any):Any;
	//  SHARED
	/*  Returns the name of a team */
	@:native("getName") public static function getName(ind:Any):Any;
	//  SHARED
	/*  Returns whether or not a team can be joined */
	@:native("getJoinable") public static function getJoinable(ind:Any):Any;
	//  SHARED
	/*  Returns the color of a team */
	@:native("getColor") public static function getColor(ind:Any):Any;
	//  SHARED
	/*  Returns whether or not the team exists */
	@:native("exists") public static function exists(ind:Any):Any;
	//  SHARED
	/*  Returns a table containing team information */
	@:native("getAllTeams") public static function getAllTeams():Any;
	//  SHARED
	/*  Returns number of frags of all players on a team */
	@:native("getNumFrags") public static function getNumFrags(ind:Any):Any;
	//  SHARED
	/*  Returns team with least players */
	@:native("bestAutoJoinTeam") public static function bestAutoJoinTeam():Any;
	//  SHARED
	/*  Returns number of deaths of all players on a team */
	@:native("getNumDeaths") public static function getNumDeaths(ind:Any):Any;
}

