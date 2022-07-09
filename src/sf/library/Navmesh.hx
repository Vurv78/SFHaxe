// Generated by SFHaxe 0.3.3
package sf.library;
@:native("navmesh") extern class Navmesh {
	/**
		SERVER
		Returns the NavArea at the given id.
	**/
	#if SERVER @:native("getNavAreaByID") public static function getNavAreaByID(id:Float):sf.type.NavArea;#end
	/**
		SERVER
		Returns the classname of the player spawn entity.
	**/
	#if SERVER @:native("getPlayerSpawnName") public static function getPlayerSpawnName():std.String;#end
	/**
		SERVER
		Creates a new NavArea
	**/
	#if SERVER @:native("createNavArea") public static function createNavArea(corner:sf.type.Vector, opposite_corner:sf.type.Vector):Null<sf.type.NavArea>;#end
	/**
		SERVER
		Starts the generation of a new navmesh
	**/
	#if SERVER @:native("beginGeneration") public static function beginGeneration():Void;#end
	/**
		SERVER
		Returns true if a navmesh has been loaded when loading the map.
	**/
	#if SERVER @:native("isLoaded") public static function isLoaded():Bool;#end
	/**
		SERVER
		Returns the NavArea contained in this position that also satisfies the elevation limit.
	**/
	#if SERVER @:native("getNavArea") public static function getNavArea(pos:sf.type.Vector, limit:Float):sf.type.NavArea;#end
	/**
		SERVER
		Whether we're currently generating a new navmesh with navmesh.beginGeneration
	**/
	#if SERVER @:native("isGenerating") public static function isGenerating():Bool;#end
	/**
		SERVER
		Deletes every NavArea and NavLadder on the map without saving the changes.
		Requires the 'navmesh.reset' privilege
	**/
	#if SERVER @:native("reset") public static function reset():Void;#end
	/**
		SERVER
		Returns an integer indexed table of all `NavArea`s on the current map.
		If the map doesn't have a navmesh generated then this will return an empty table.
		The navareas will be immutable.
	**/
	#if SERVER @:native("getAllNavAreas") public static function getAllNavAreas():lua.Table<Dynamic,Dynamic>;#end
	/**
		SERVER
		Returns the position of the edit cursor when nav_edit is set to 1.
	**/
	#if SERVER @:native("getGetEditCursorPosition") public static function getGetEditCursorPosition():sf.type.Vector;#end
	/**
		SERVER
		Clears all the walkable positions, used before calling navmesh.beginGeneration.
		Requires the `navmesh.modify` permission
	**/
	#if SERVER @:native("clearWalkableSeeds") public static function clearWalkableSeeds():Void;#end
	/**
		SERVER
		Sets the classname of the default spawn point entity, used before generating a new navmesh with navmesh.beginGeneration.
	**/
	#if SERVER @:native("setPlayerSpawnName") public static function setPlayerSpawnName(spawnPointClass:std.String):Void;#end
	/**
		SERVER
		Returns the closest NavArea to given position at the same height, or beneath it.
		This function will ignore blocked NavAreas.
		See navmesh.getNavArea for a function that does see blocked areas.
	**/
	#if SERVER @:native("getNearestNavArea") public static function getNearestNavArea(pos:sf.type.Vector, maxDist:Float, checkLOS:Bool, checkGround:Bool):sf.type.NavArea;#end
	/**
		SERVER
		Add this position and normal to the list of walkable positions, used before map generation with navmesh.beginGeneration
		Requires the `navmesh.modify` permission
	**/
	#if SERVER @:native("addWalkableSeed") public static function addWalkableSeed(pos:sf.type.Vector, normal:sf.type.Vector):Void;#end
	/**
		SERVER
		Loads a new navmesh from the .nav file for current map discarding any changes made to the navmesh previously.
		Requires the 'navmesh.load' privilege
	**/
	#if SERVER @:native("load") public static function load():Void;#end
	/**
		SERVER
		Returns the currently marked NavArea, for use with editing console commands.
	**/
	#if SERVER @:native("getMarkedArea") public static function getMarkedArea():sf.type.NavArea;#end
	/**
		SERVER
		Returns the highest ID of all nav areas on the map.
		While this can be used to get all nav areas, this number may not actually be the actual number of nav areas on the map.
	**/
	#if SERVER @:native("getNavAreaCount") public static function getNavAreaCount():Float;#end
	/**
		SERVER
		Sets the CNavArea as marked, so it can be used with editing console commands.
		Requires the `navmesh.modify` permission
	**/
	#if SERVER @:native("setMarkedArea") public static function setMarkedArea(area:sf.type.NavArea):Void;#end
	/**
		SERVER
		Saves any changes made to navmesh to the .nav file.
		Requires the 'navmesh.save' privilege
	**/
	#if SERVER @:native("save") public static function save():Void;#end
	/**
		SERVER
		Returns a bunch of areas within distance, used to find hiding spots by NextBots for example.
	**/
	#if SERVER @:native("find") public static function find(pos:sf.type.Vector, radius:Float, stepdown:Float, stepup:Float):lua.Table<Dynamic,Dynamic>;#end
}

