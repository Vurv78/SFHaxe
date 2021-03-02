package sf.library;
@:native("find") extern class Find {
	/**
		SHARED	
		 Returns a sorted array of entities by how close they are to a point
	**/
	@:native("sortByClosest") public static function sortByClosest(ents:Any,pos:Any,furthest:Any):Any;
	/**
		SHARED	
		 Finds entities in a sphere
	**/
	@:native("inSphere") public static function inSphere(center:Any,radius:Any,filter:Any):Any;
	/**
		SHARED	
		 Finds entities in a ray
	**/
	@:native("inRay") public static function inRay(startpos:Any,endpos:Any,mins:Any,maxs:Any,filter:Any):Any;
	/**
		SHARED	
		 Finds the closest entity to a point
	**/
	@:native("closest") public static function closest(ents:Any,pos:Any):Any;
	/**
		SERVER	
		 Finds entities that are in the PVS (Potentially Visible Set). See: https://developer.valvesoftware.com/wiki/PVS
	**/
	@:native("inPVS") public static function inPVS(pos:Any,filter:Any):Any;
	/**
		SHARED	
		 Finds entities by their targetname
	**/
	@:native("byName") public static function byName(name:Any,filter:Any):Any;
	/**
		SHARED	
		 Finds all players (including bots)
	**/
	@:native("allPlayers") public static function allPlayers(filter:Any):Any;
	/**
		SHARED	
		 Finds all entitites
	**/
	@:native("all") public static function all(filter:Any):Any;
	/**
		SHARED	
		 Finds entities by class name
	**/
	@:native("byClass") public static function byClass(__class:Any,filter:Any):Any;
	/**
		SHARED	
		 Finds entities in a box
	**/
	@:native("inBox") public static function inBox(min:Any,max:Any,filter:Any):Any;
	/**
		SHARED	
		 Finds entities by model
	**/
	@:native("byModel") public static function byModel(model:Any,filter:Any):Any;
	/**
		SHARED	
		 Finds entities in a cone
	**/
	@:native("inCone") public static function inCone(pos:Any,dir:Any,distance:Any,radius:Any,filter:Any):Any;
	/**
		SHARED	
		 Finds the first player with the given name
	**/
	@:native("playersByName") public static function playersByName(name:Any,casesensitive:Any,exact:Any):Any;
}

