package sf.library;
@:native("sql") extern class Sql {
	//  CLIENT
	/*  Performs a query on the local SQLite database. */
	@:native("query") public static function query(query:Any):Any;
	//  CLIENT
	/*  Escapes dangerous characters and symbols from user input used in an SQLite SQL Query. */
	@:native("SQLStr") public static function SQLStr(str:Any,bNoQuotes:Any):Any;
	//  CLIENT
	/*  Checks if a table exists within the local SQLite database. */
	@:native("tableExists") public static function tableExists(tabname:Any):Any;
	//  CLIENT
	/*  Removes a table within the local SQLite database. */
	@:native("tableRemove") public static function tableRemove(tabname:Any):Any;
}

