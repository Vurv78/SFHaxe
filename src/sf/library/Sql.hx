// Generated by SFHaxe 0.3.1
package sf.library;
@:native("sql") extern class Sql {
	/**
		CLIENT
		 Removes a table within the local SQLite database.
	**/
	#if CLIENT @:native("tableRemove") public static function tableRemove(tabname:std.String):Bool;#end
	/**
		CLIENT
		 Checks if a table exists within the local SQLite database.
	**/
	#if CLIENT @:native("tableExists") public static function tableExists(tabname:std.String):Bool;#end
	/**
		CLIENT
		 Performs a query on the local SQLite database.
	**/
	#if CLIENT @:native("query") public static function query(query:std.String):Null<lua.Table<Dynamic,Dynamic>>;#end
	/**
		CLIENT
		 Escapes dangerous characters and symbols from user input used in an SQLite SQL Query.
	**/
	#if CLIENT @:native("SQLStr") public static function SQLStr(str:std.String, bNoQuotes:Bool):std.String;#end
}

