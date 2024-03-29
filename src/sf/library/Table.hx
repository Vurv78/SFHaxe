// Generated by SFHaxe 0.3.3
package sf.library;
@:native("table") extern class Table {
	/**
		SHARED
		Empties the target table, and merges all values from the source table into it.
	**/
	@:native("copyFromTo") public static function copyFromTo(source:lua.Table<Dynamic,Dynamic>, target:lua.Table<Dynamic,Dynamic>):Void;
	/**
		SHARED
		Returns all keys of a table
	**/
	@:native("getKeys") public static function getKeys(tbl:lua.Table<Dynamic,Dynamic>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		Converts a table into a string
	**/
	@:native("toString") public static function toString(tbl:lua.Table<Dynamic,Dynamic>, ?displayName:Null<std.String>, ?niceFormatting:Null<Bool>):Void;
	/**
		SHARED
		Sorts a table in reverse order from table.sort
	**/
	@:native("sortDesc") public static function sortDesc(tbl:lua.Table<Dynamic,Dynamic>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		Counts the amount of keys in a table. This should only be used when a table is not numerically and sequentially indexed, for those table consider # operator
	**/
	@:native("count") public static function count(tbl:lua.Table<Dynamic,Dynamic>):Float;
	/**
		SHARED
		Returns the string address of the table
	**/
	@:native("address") public static function address(target:lua.Table<Dynamic,Dynamic>):std.String;
	/**
		SHARED
		Checks if a table contains any value.
	**/
	@:native("isEmpty") public static function isEmpty(tbl:lua.Table<Dynamic,Dynamic>):Bool;
	/**
		SHARED
		Merges the contents of the second table with the content in the first one.
	**/
	@:native("merge") public static function merge(dest:lua.Table<Dynamic,Dynamic>, source:lua.Table<Dynamic,Dynamic>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		Inserts a value in to the given table even if the table is non-existent
	**/
	@:native("forceInsert") public static function forceInsert(tbl:lua.Table<Dynamic,Dynamic>, val:Any):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		Sorts a table either ascending or by the given sort function
	**/
	@:native("sort") public static function sort(tbl:lua.Table<Dynamic,Dynamic>, ?sorter:Null<haxe.Constraints.Function>):Void;
	/**
		SHARED
		Sorts a table by a named member.
	**/
	@:native("sortByMember") public static function sortByMember(tbl:lua.Table<Dynamic,Dynamic>, member:Any, ?ascending:Null<Bool>):Void;
	/**
		SHARED
		Removes a value from a table and shifts any other values down to fill the gap.
	**/
	@:native("remove") public static function remove(tbl:lua.Table<Dynamic,Dynamic>, ?index:Null<Float>):Any;
	/**
		SHARED
		Returns a random value from the supplied table.
	**/
	@:native("random") public static function random(tbl:lua.Table<Dynamic,Dynamic>):Any;
	/**
		SHARED
		Adds the contents from one table into another. The target table will be modified.
	**/
	@:native("add") public static function add(target:lua.Table<Dynamic,Dynamic>, source:lua.Table<Dynamic,Dynamic>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		Copies any missing data from base to target, and sets the target's BaseClass member to the base table's pointer.
	**/
	@:native("inherit") public static function inherit(target:lua.Table<Dynamic,Dynamic>, base:lua.Table<Dynamic,Dynamic>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		Returns a copy of the input table with all string keys converted to be lowercase recursively.
	**/
	@:native("lowerKeyNames") public static function lowerKeyNames(tbl:lua.Table<Dynamic,Dynamic>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		Returns the first key found to be containing the supplied value.
	**/
	@:native("keyFromValue") public static function keyFromValue(tbl:lua.Table<Dynamic,Dynamic>, val:Any):Any;
	/**
		SHARED
		Removes the first instance of a given value from the specified table with table.remove, then returns the key that the value was found at
	**/
	@:native("removeByValue") public static function removeByValue(tbl:lua.Table<Dynamic,Dynamic>, val:Any):Any;
	/**
		SHARED
		Returns a table of keys containing the supplied value.
	**/
	@:native("keysFromValue") public static function keysFromValue(tbl:lua.Table<Dynamic,Dynamic>, val:Any):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		Returns the highest numerical key.
	**/
	@:native("maxn") public static function maxn(tbl:lua.Table<Dynamic,Dynamic>):Float;
	/**
		SHARED
		Changes all keys to sequential integers. This creates a new table object and does not affect the original.
	**/
	@:native("clearKeys") public static function clearKeys(tbl:lua.Table<Dynamic,Dynamic>, ?saveKeys:Null<Bool>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		Returns whether or not the table's keys are sequential.
	**/
	@:native("isSequential") public static function isSequential(tbl:lua.Table<Dynamic,Dynamic>):Bool;
	/**
		SHARED
		Returns a list of keys sorted based on values of those keys.
	**/
	@:native("sortByKey") public static function sortByKey(tbl:lua.Table<Dynamic,Dynamic>, ?descending:Null<Bool>):Void;
	/**
		SHARED
		Concatenates the contents of a table to a string.
	**/
	@:native("concat") public static function concat(tbl:lua.Table<Dynamic,Dynamic>, concatenator:std.String, ?startPos:Null<Float>, ?endPos:Null<Float>):std.String;
	/**
		SHARED
		Inserts a value into a table at the end of the table or at the given position.
	**/
	@:native("insert") public static function insert(tbl:lua.Table<Dynamic,Dynamic>, pos:Any, val:Any):Float;
	/**
		SHARED
		Returns a reversed copy of a sequential table. Any non-sequential and non-numeric keyvalue pairs will not be copied
	**/
	@:native("reverse") public static function reverse(tbl:lua.Table<Dynamic,Dynamic>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		Collapses a table with keyvalue structure
	**/
	@:native("collapseKeyValue") public static function collapseKeyValue(tbl:lua.Table<Dynamic,Dynamic>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		Checks if a table has a value. This function is very inefficient for large tables (O(n)).
	**/
	@:native("hasValue") public static function hasValue(tbl:lua.Table<Dynamic,Dynamic>, val:Any):Bool;
	/**
		SHARED
		Creates a deep copy and returns that copy. This function does NOT copy userdata, such as Vectors and Angles!
	**/
	@:native("copy") public static function copy(tbl:lua.Table<Dynamic,Dynamic>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		Removes all values from a table
	**/
	@:native("empty") public static function empty(tbl:lua.Table<Dynamic,Dynamic>):Void;
	/**
		SHARED
		Returns a key of the supplied table with the highest number value.
	**/
	@:native("getWinningKey") public static function getWinningKey(tbl:lua.Table<Dynamic,Dynamic>):Any;
}

