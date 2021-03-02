package sf.library;
@:native("table") extern class Table {
	/**
		SHARED	
		 Merges the contents of the second table with the content in the first one.
	**/
	@:native("merge") public static function merge(dest:Any,source:Any):Any;
	/**
		SHARED	
		 Collapses a table with keyvalue structure
	**/
	@:native("collapseKeyValue") public static function collapseKeyValue(tbl:Any):Any;
	/**
		SHARED	
		 Returns whether or not the table's keys are sequential.
	**/
	@:native("isSequential") public static function isSequential(tbl:Any):Any;
	/**
		SHARED	
		 Sorts a table in reverse order from table.sort
	**/
	@:native("sortDesc") public static function sortDesc(tbl:Any):Any;
	/**
		SHARED	
		 Returns the length of the table. (DEPRECATED! Use the # operator instead)
	**/
	@:native("getn") public static function getn(tbl:Any):Any;
	/**
		SHARED	
		 Returns a table of keys containing the supplied value.
	**/
	@:native("keysFromValue") public static function keysFromValue(tbl:Any,val:Any):Any;
	/**
		SHARED	
		 Sorts a table by a named member.
	**/
	@:native("sortByMember") public static function sortByMember(tbl:Any,member:Any,ascending:Any):Void;
	/**
		SHARED	
		 Creates a deep copy and returns that copy. This function does NOT copy userdata, such as Vectors and Angles!
	**/
	@:native("copy") public static function copy(tbl:Any):Any;
	/**
		SHARED	
		 Inserts a value in to the given table even if the table is non-existent
	**/
	@:native("forceInsert") public static function forceInsert(tbl:Any,val:Any):Any;
	/**
		SHARED	
		 Returns the value positioned after the supplied value in a table. If it isn't found then the first element in the table is returned.
 (DEPRECATED! Iterate the table using ipairs or increment from the previous index using next(). Non-numerically indexed tables are not ordered)
	**/
	@:native("findNext") public static function findNext(tbl:Any,val:Any):Any;
	/**
		SHARED	
		 Returns the value positioned before the supplied value in a table. If it isn't found then the last element in the table is returned.
 (DEPRECATED! Iterate the table using ipairs, storing the previous value and checking for the target). Non-numerically indexed tables are not ordered)
	**/
	@:native("findPrev") public static function findPrev(tbl:Any,val:Any):Any;
	/**
		SHARED	
		 Returns the last value found in the given table. (DEPRECATED! Use the # operator instead)
 Non-numerically indexed tables are not ordered and do not have a last key
	**/
	@:native("getLastValue") public static function getLastValue(tbl:Any):Any;
	/**
		SHARED	
		 Iterates for each key-value pair in the table, calling the function with the key and value of the pair. If the function returns anything, the loop is broken.
 (DEPRECATED! You should use pairs() instead)
	**/
	@:native("forEach") public static function forEach(tbl:Any,func:Any):Void;
	/**
		SHARED	
		 Returns a reversed copy of a sequential table. Any non-sequential and non-numeric keyvalue pairs will not be copied
	**/
	@:native("reverse") public static function reverse(tbl:Any):Any;
	/**
		SHARED	
		 Removes all values from a table
	**/
	@:native("empty") public static function empty(tbl:Any):Void;
	/**
		SHARED	
		 Returns a random value from the supplied table.
	**/
	@:native("random") public static function random(tbl:Any):Any;
	/**
		SHARED	
		 Converts a table into a string
	**/
	@:native("toString") public static function toString(tbl:Any,displayName:Any,niceFormatting:Any):Void;
	/**
		SHARED	
		 Removes the first instance of a given value from the specified table with table.remove, then returns the key that the value was found at
	**/
	@:native("removeByValue") public static function removeByValue(tbl:Any,val:Any):Any;
	/**
		SHARED	
		 Checks if a table has a value. This function is very inefficient for large tables (O(n)).
	**/
	@:native("hasValue") public static function hasValue(tbl:Any,val:Any):Any;
	/**
		SHARED	
		 Copies any missing data from base to target, and sets the target's BaseClass member to the base table's pointer.
	**/
	@:native("inherit") public static function inherit(target:Any,base:Any):Any;
	/**
		SHARED	
		 Returns the last key found in the given table. (DEPRECATED! Use the # operator instead)
 Non-numerically indexed tables are not ordered and do not have a last key
	**/
	@:native("getLastKey") public static function getLastKey(tbl:Any):Any;
	/**
		SHARED	
		 Returns all keys of a table
	**/
	@:native("getKeys") public static function getKeys(tbl:Any):Any;
	/**
		SHARED	
		 Adds the contents from one table into another. The target table will be modified.
	**/
	@:native("add") public static function add(target:Any,source:Any):Any;
	/**
		SHARED	
		 Inserts a value into a table at the end of the table or at the given position.
	**/
	@:native("insert") public static function insert(tbl:Any,pos:Any,val:Any):Void;
	/**
		SHARED	
		 Returns first key of the table (DEPRECATED! It may be changed or removed in a future update. Instead, expect the first key to be 1)
 Non-numerically indexed tables are not ordered and do not have a first key.
	**/
	@:native("getFirstKey") public static function getFirstKey(tbl:Any):Any;
	/**
		SHARED	
		 Returns a key of the supplied table with the highest number value.
	**/
	@:native("getWinningKey") public static function getWinningKey(tbl:Any):Any;
	/**
		SHARED	
		 Iterates for each numeric index in the table in order (DEPRECATED! You should use ipairs() instead)
	**/
	@:native("foreachi") public static function foreachi(tbl:Any,func:Any):Void;
	/**
		SHARED	
		 Returns a copy of the input table with all string keys converted to be lowercase recursively.
	**/
	@:native("lowerKeyNames") public static function lowerKeyNames(tbl:Any):Any;
	/**
		SHARED	
		 Counts the amount of keys in a table. This should only be used when a table is not numerically and sequentially indexed, for those table consider # operator
	**/
	@:native("count") public static function count(tbl:Any):Any;
	/**
		SHARED	
		 Empties the target table, and merges all values from the source table into it.
	**/
	@:native("copyFromTo") public static function copyFromTo(source:Any,target:Any):Void;
	/**
		SHARED	
		 Returns the highest numerical key.
	**/
	@:native("maxn") public static function maxn(tbl:Any):Any;
	/**
		SHARED	
		 Removes a value from a table and shifts any other values down to fill the gap.
	**/
	@:native("remove") public static function remove(tbl:Any,index:Any):Any;
	/**
		SHARED	
		 Returns first value found in the table. (DEPRECATED! It may be changed or removed in a future update. Instead, index the table with a key of 1)
 Non-numerically indexed tables are not ordered and do not have a first key.
	**/
	@:native("getFirstValue") public static function getFirstValue(tbl:Any):Void;
	/**
		SHARED	
		 Changes all keys to sequential integers. This creates a new table object and does not affect the original.
	**/
	@:native("clearKeys") public static function clearKeys(tbl:Any,saveKeys:Any):Any;
	/**
		SHARED	
		 Sorts a table either ascending or by the given sort function
	**/
	@:native("sort") public static function sort(tbl:Any,If:Any):Void;
	/**
		SHARED	
		 Returns a list of keys sorted based on values of those keys.
	**/
	@:native("sortByKey") public static function sortByKey(tbl:Any,descending:Any):Void;
	/**
		SHARED	
		 Concatenates the contents of a table to a string.
	**/
	@:native("concat") public static function concat(tbl:Any,concatenator:Any,startPos:Any,endPos:Any):Any;
	/**
		SHARED	
		 Returns the first key found to be containing the supplied value.
	**/
	@:native("keyFromValue") public static function keyFromValue(tbl:Any,val:Any):Any;
}
