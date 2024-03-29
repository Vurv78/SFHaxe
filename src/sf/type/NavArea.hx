// Generated by SFHaxe 0.3.3
package sf.type;
extern class NavAreaData {
	/**
		SERVER
		Returns the place of the NavArea
	**/
	#if SERVER @:native("getPlace") public function getPlace():std.String;#end
	/**
		SERVER
		Returns the amount of CNavAreas that have a connection ( one or two way ) from this CNavArea in given direction.
		See CNavArea:getAdjacentCount for a function that returns CNavArea count from/in all sides/directions.
	**/
	#if SERVER @:native("getAdjacentCountAtSide") public function getAdjacentCountAtSide(The:Float):Float;#end
	/**
		SERVER
		Returns if this position overlaps the NavArea within the given tolerance.
	**/
	#if SERVER @:native("isOverlapping") public function isOverlapping(pos:sf.type.Vector, ?tolerance:Null<Float>):Float;#end
	/**
		SERVER
		Sets the attributes for given CNavArea.
	**/
	#if SERVER @:native("setAttributes") public function setAttributes(attributes:Float):Void;#end
	/**
		SERVER
		Returns a random point on the nav area.
	**/
	#if SERVER @:native("getRandomPoint") public function getRandomPoint():sf.type.Vector;#end
	/**
		SERVER
		Adds a hiding spot onto this nav area.
		There's a limit of 255 hiding spots per area.
		0 = None (not recommended)
		1 = In Cover/basically a hiding spot, in a corner with good hard cover nearby
		2 = good sniper spot, had at least one decent sniping corridor
		4 = perfect sniper spot, can see either very far, or a large area, or both
		8 = exposed, spot in the open, usually on a ledge or cliff
		Values over 255 will be clamped.
	**/
	#if SERVER @:native("addHidingSpot") public function addHidingSpot(pos:Any, flags:Any):Void;#end
	/**
		SERVER
		Returns whether this node is in the Closed List.
	**/
	#if SERVER @:native("isClosed") public function isClosed():Bool;#end
	/**
		SERVER
		Returns the height difference between the edges of two connected navareas.
	**/
	#if SERVER @:native("computeAdjacentConnectionHeightChange") public function computeAdjacentConnectionHeightChange(other:sf.type.NavArea):Float;#end
	/**
		SERVER
		Returns the elevation of this Nav Area at the given position.
	**/
	#if SERVER @:native("getZ") public function getZ(The:sf.type.Vector):Float;#end
	/**
		SERVER
		Returns this CNavAreas unique ID.
	**/
	#if SERVER @:native("getID") public function getID():Float;#end
	/**
		SERVER
		Returns size info about the nav area.
		Vector hi
		Vector lo
		number SizeX
		number SizeY
		number SizeZ
	**/
	#if SERVER @:native("getExtentInfo") public function getExtentInfo():lua.Table<Dynamic,Dynamic>;#end
	/**
		SERVER
		Drops a corner or all corners of a CNavArea to the ground below it.
	**/
	#if SERVER @:native("placeOnGround") public function placeOnGround(corner:Float):Void;#end
	/**
		SERVER
		Returns whether this Nav Area is in the same plane as the given one.
	**/
	#if SERVER @:native("isCoplanar") public function isCoplanar(other:sf.type.NavArea):Bool;#end
	/**
		SERVER
		Returns whether this CNavArea can potentially see the given CNavArea.
	**/
	#if SERVER @:native("isPotentiallyVisible") public function isPotentiallyVisible(area:sf.type.NavArea):Bool;#end
	/**
		SERVER
		Adds this CNavArea to the Open List.
		Requires `navarea.openlist` permission
	**/
	#if SERVER @:native("addToOpenList") public function addToOpenList():Void;#end
	/**
		SERVER
		Sets the new parent of this CNavArea.
	**/
	#if SERVER @:native("setParent") public function setParent(parent:sf.type.NavArea, how:Float):Void;#end
	/**
		SERVER
		Returns a table of all the CNavAreas that have a one-way connection to this CNavArea.
		If a CNavArea has a two-way connection to or from this CNavArea then it will not be returned from this function, use CNavArea:GetAdjacentAreas to get outgoing ( one and two way ) connections.
		See CNavArea:getIncomingConnectionsAtSide for a function that returns one-way incoming connections from only one side/direction.
	**/
	#if SERVER @:native("getIncomingConnections") public function getIncomingConnections():lua.Table<Dynamic,Dynamic>;#end
	/**
		SERVER
		Whether this NavArea is placed underwater.
	**/
	#if SERVER @:native("isUnderwater") public function isUnderwater():Bool;#end
	/**
		SERVER
		Returns whether the Open List is empty or not.
		Used in pathfinding via the A* algorithm.
		More information can be found here: https://wiki.facepunch.com/gmod/Simple_Pathfinding
	**/
	#if SERVER @:native("isOpenListEmpty") public function isOpenListEmpty():Bool;#end
	/**
		SERVER
		Returns whether we can be seen from the given position.
	**/
	#if SERVER @:native("isVisible") public function isVisible(pos:sf.type.Vector):Bool;#end
	/**
		SERVER
		Returns whether this CNavArea can completely (i.e. all corners of this area can see all corners of the given area) see the given CNavArea.
	**/
	#if SERVER @:native("isCompletelyVisible") public function isCompletelyVisible(area:sf.type.NavArea):Bool;#end
	/**
		SERVER
		Returns whether this NavArea has an outgoing ( one or two way ) connection to given NavArea.
		See NavArea:isConnectedAtSide for a function that only checks for outgoing connections in one direction.
	**/
	#if SERVER @:native("isConnected") public function isConnected(other:Any):Bool;#end
	/**
		SERVER
		Returns true if the given CNavArea has this attribute flag set.
	**/
	#if SERVER @:native("hasAttributes") public function hasAttributes(attributes:Float):Bool;#end
	/**
		SERVER
		Sets the cost from starting area this area when pathfinding.
	**/
	#if SERVER @:native("setCostSoFar") public function setCostSoFar(cost:Float):Void;#end
	/**
		SERVER
		Disconnects this nav area from given area or ladder. (Only disconnects one way)
	**/
	#if SERVER @:native("disconnect") public function disconnect(other:sf.type.NavArea):Void;#end
	/**
		SERVER
		Returns a table of all the CNavAreas that have a ( one and two way ) connection from this CNavArea in given direction.
		If an area has a one-way incoming connection to this CNavArea, then it will not be returned from this function, use CNavArea:GetIncomingConnections to get all incoming connections.
		See CNavArea:getAdjacentAreas for a function that returns all areas from all sides/directions.
	**/
	#if SERVER @:native("getAdjacentAreasAtSide") public function getAdjacentAreasAtSide(navDir:Float):lua.Table<Dynamic,Dynamic>;#end
	/**
		SERVER
		Returns whether this Nav Area is flat within the tolerance of the nav_coplanar_slope_limit_displacement and nav_coplanar_slope_limit convars.
	**/
	#if SERVER @:native("isFlat") public function isFlat():Bool;#end
	/**
		SERVER
		Adds this CNavArea to the closed list, a list of areas that have been checked by A* pathfinding algorithm.
	**/
	#if SERVER @:native("addToClosedList") public function addToClosedList():Void;#end
	/**
		SERVER
		Returns whether this CNavArea can see given position.
	**/
	#if SERVER @:native("isPartiallyVisible") public function isPartiallyVisible(pos:sf.type.Vector, ?ignoreEnt:Null<sf.type.Entity>):Bool;#end
	/**
		SERVER
		Removes the given NavArea.
	**/
	#if SERVER @:native("remove") public function remove():Void;#end
	/**
		SERVER
		Returns if we're shaped like a square.
	**/
	#if SERVER @:native("isRoughlySquare") public function isRoughlySquare():Bool;#end
	/**
		SERVER
		Returns the parent NavArea
	**/
	#if SERVER @:native("getParent") public function getParent():sf.type.NavArea;#end
	/**
		SERVER
		Returns how this CNavArea is connected to its parent.
	**/
	#if SERVER @:native("getParentHow") public function getParentHow():Float;#end
	/**
		SERVER
		Returns the amount of CNavAreas that have a connection ( one and two way ) from this CNavArea.
		See CNavArea:GetAdjacentCountAtSide for a function that only returns area count from one side/direction.
	**/
	#if SERVER @:native("getAdjacentCount") public function getAdjacentCount():Float;#end
	/**
		SERVER
		Returns whether the nav area is blocked or not, i.e. whether it can be walked through or not.
	**/
	#if SERVER @:native("isBlocked") public function isBlocked(?teamID:Null<Float>, ?ignoreNavBlockers:Null<Bool>):Bool;#end
	/**
		SERVER
		Clears the open and closed lists for a new search.
	**/
	#if SERVER @:native("clearSearchLists") public function clearSearchLists():Void;#end
	/**
		SERVER
		Returns the total cost when passing from starting area to the goal area through this node. Set by NavArea:setTotalCost.
	**/
	#if SERVER @:native("getTotalCost") public function getTotalCost():Float;#end
	/**
		SERVER
		Returns the height difference on the Z axis of the two CNavAreas. This is calculated from the center most point on both CNavAreas.
	**/
	#if SERVER @:native("computeGroundHeightChange") public function computeGroundHeightChange(other:sf.type.NavArea):Float;#end
	/**
		SERVER
		Sets the position of a corner of a nav area.
	**/
	#if SERVER @:native("setCorner") public function setCorner(corner:Float, pos:sf.type.Vector):Void;#end
	/**
		SERVER
		Removes a CNavArea from the Open List with the lowest cost to traverse to from the starting node, and returns it.
		Requires the `navarea.openlist` permission
	**/
	#if SERVER @:native("popOpenList") public function popOpenList():sf.type.NavArea;#end
	/**
		SERVER
		Returns the closest point of this NavArea from the given position.
	**/
	#if SERVER @:native("getClosestPointOnArea") public function getClosestPointOnArea(pos:sf.type.Vector):sf.type.Vector;#end
	/**
		SERVER
		Sets the total cost when passing from starting area to the goal area through this node.
	**/
	#if SERVER @:native("setTotalCost") public function setTotalCost(cost:Float):Void;#end
	/**
		SERVER
		Returns the cost from starting area this area when pathfinding. Set by NavArea:setCostSoFar
	**/
	#if SERVER @:native("getCostSoFar") public function getCostSoFar():Float;#end
	/**
		SERVER
		Returns a table of very bad hiding spots in this area.
		See also NavArea:getHidingSpots
	**/
	#if SERVER @:native("getExposedSpots") public function getExposedSpots():lua.Table<Dynamic,Dynamic>;#end
	/**
		SERVER
		Returns the center position of the CNavArea.
	**/
	#if SERVER @:native("getCenter") public function getCenter():sf.type.Vector;#end
	/**
		SERVER
		Returns whether this area is in the Open List.
		Used in pathfinding via the A* algorithm.
		More information can be found here: https://wiki.facepunch.com/gmod/Simple_Pathfinding
	**/
	#if SERVER @:native("isOpen") public function isOpen():Bool;#end
	/**
		SERVER
		Returns a random CNavArea that has an outgoing ( one or two way ) connection from this CNavArea in given direction.
	**/
	#if SERVER @:native("getRandomAdjacentAreaAtSide") public function getRandomAdjacentAreaAtSide(navDir:Float):sf.type.NavArea;#end
	/**
		SERVER
		Removes the given NavArea from the Closed List
	**/
	#if SERVER @:native("removeFromClosedList") public function removeFromClosedList():Void;#end
	/**
		SERVER
		Returns the NAV_DIR direction that the given vector faces on this NavArea.
	**/
	#if SERVER @:native("computeDirection") public function computeDirection(pos:sf.type.Vector):Float;#end
	/**
		SERVER
		Returns the attribute mask for the given CNavArea.
	**/
	#if SERVER @:native("getAttributes") public function getAttributes():Float;#end
	/**
		SERVER
		Moves this open list to appropriate position based on its CNavArea:getTotalCost compared to the total cost of other areas in the open list.
	**/
	#if SERVER @:native("updateOnOpenList") public function updateOnOpenList():Void;#end
	/**
		SERVER
		Returns whether this NavArea has an outgoing ( one or two way ) connection to given NavArea in given direction.
	**/
	#if SERVER @:native("isConnectedAtSide") public function isConnectedAtSide(other:sf.type.NavArea, navDirType:Float):Bool;#end
	/**
		SERVER
		Returns the width this Nav Area.
	**/
	#if SERVER @:native("getSizeX") public function getSizeX():Float;#end
	/**
		SERVER
		Returns the height this Nav Area.
	**/
	#if SERVER @:native("getSizeY") public function getSizeY():Float;#end
	/**
		SERVER
		Returns true if this NavArea contains the given vector.
	**/
	#if SERVER @:native("contains") public function contains(v:sf.type.Vector):Bool;#end
	/**
		SERVER
		Returns true if this CNavArea is overlapping the given CNavArea.
	**/
	#if SERVER @:native("isOverlappingArea") public function isOverlappingArea(area:sf.type.NavArea):Bool;#end
	/**
		SERVER
		Returns a table of all the CNavAreas that have a ( one and two way ) connection from this NavArea.
		If an area has a one-way incoming connection to this NavArea, then it will not be returned from this function, use NavArea:getIncomingConnections to get all one-way incoming connections.
		See NavArea:getAdjacentAreasAtSide for a function that only returns areas from one side/direction.
	**/
	#if SERVER @:native("getAdjacentAreas") public function getAdjacentAreas():lua.Table<Dynamic,Dynamic>;#end
	/**
		SERVER
		Returns the vector position of the corner for the given CNavArea.
	**/
	#if SERVER @:native("getCorner") public function getCorner(cornerId:Float):sf.type.Vector;#end
	/**
		SERVER
		Connects this CNavArea to another CNavArea with a one way connection. ( From this area to the target )
	**/
	#if SERVER @:native("connectTo") public function connectTo(other:sf.type.NavArea):Void;#end
	/**
		SERVER
		Sets the Place of the nav area.
		There is a limit of 256 Places per nav file
	**/
	#if SERVER @:native("setPlace") public function setPlace(?place:Null<std.String>):Bool;#end
}

@:forward
extern abstract NavArea(NavAreaData) {
}

