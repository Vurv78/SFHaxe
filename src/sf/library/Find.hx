// Generated by SFHaxe 0.3.2
package sf.library;
@:native("find") extern class Find {
	/**
		SERVER
		 Finds entities that are in the PVS (Potentially Visible Set). See: https://developer.valvesoftware.com/wiki/PVS
	**/
	#if SERVER @:native("inPVS") public static function inPVS(pos:sf.type.Vector, ?filter:Null<haxe.Constraints.Function>):lua.Table<Dynamic,Dynamic>;#end
	/**
		SHARED
		 Finds entities in a cone
	**/
	@:native("inCone") public static function inCone(pos:sf.type.Vector, dir:sf.type.Vector, distance:Float, radius:Float, ?filter:Null<haxe.Constraints.Function>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Finds all players (including bots)
	**/
	@:native("allPlayers") public static function allPlayers(?filter:Null<haxe.Constraints.Function>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Finds entities by class name
	**/
	@:native("byClass") public static function byClass(_class:std.String, ?filter:Null<haxe.Constraints.Function>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Finds all entitites
	**/
	@:native("all") public static function all(?filter:Null<haxe.Constraints.Function>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Finds the closest entity to a point
	**/
	@:native("closest") public static function closest(ents:lua.Table<Dynamic,Dynamic>, pos:sf.type.Vector):sf.type.Entity;
	/**
		SHARED
		 Finds entities by model
	**/
	@:native("byModel") public static function byModel(model:std.String, ?filter:Null<haxe.Constraints.Function>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Finds entities by their targetname
	**/
	@:native("byName") public static function byName(name:std.String, ?filter:Null<haxe.Constraints.Function>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Finds entities in a sphere
	**/
	@:native("inSphere") public static function inSphere(center:sf.type.Vector, radius:Float, ?filter:Null<haxe.Constraints.Function>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Finds the first player with the given name
	**/
	@:native("playersByName") public static function playersByName(name:std.String, ?casesensitive:Null<Bool>, ?exact:Null<Bool>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Returns a sorted array of entities by how close they are to a point
	**/
	@:native("sortByClosest") public static function sortByClosest(ents:lua.Table<Dynamic,Dynamic>, pos:sf.type.Vector, furthest:Bool):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Finds entities in a ray
	**/
	@:native("inRay") public static function inRay(startpos:sf.type.Vector, endpos:sf.type.Vector, ?mins:Null<sf.type.Vector>, ?maxs:Null<sf.type.Vector>, ?filter:Null<haxe.Constraints.Function>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Finds entities in a box
	**/
	@:native("inBox") public static function inBox(min:sf.type.Vector, max:sf.type.Vector, ?filter:Null<haxe.Constraints.Function>):lua.Table<Dynamic,Dynamic>;
}

