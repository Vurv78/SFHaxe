package sf.library;
@:native("file") extern class File {
	//  CLIENT
	/*  Checks if a file exists */
	@:native("exists") public static function exists(path:Any):Any;
	//  CLIENT
	/*  Enumerates a directory */
	@:native("find") public static function find(path:Any,sorting:Any):Any;
	//  CLIENT
	/*  Writes to a file */
	@:native("write") public static function write(path:Any,data:Any):Any;
	//  CLIENT
	/*  Appends a string to the end of a file */
	@:native("append") public static function append(path:Any,data:Any):Void;
	//  CLIENT
	/*  Reads a file from path */
	@:native("read") public static function read(path:Any):Any;
	//  CLIENT
	/*  Writes a temporary file. Throws an error if it is unable to. */
	@:native("writeTemp") public static function writeTemp(filename:Any,data:Any):Any;
	//  CLIENT
	/*  Returns the path of a temp file if it exists. Otherwise returns nil */
	@:native("existsTemp") public static function existsTemp(filename:Any):Any;
	//  CLIENT
	/*  Opens and returns a file */
	@:native("open") public static function open(path:Any,mode:Any):Any;
	//  CLIENT
	/*  Deletes a file */
	@:native("delete") public static function delete(path:Any):Any;
	//  CLIENT
	/*  Creates a directory */
	@:native("createDir") public static function createDir(path:Any):Void;
	//  CLIENT
	/*  Reads a temp file's data if it exists. Otherwise returns nil */
	@:native("readTemp") public static function readTemp(filename:Any):Any;
	//  CLIENT
	/*  Enumerates a directory relative to gmod */
	@:native("findInGame") public static function findInGame(path:Any,sorting:Any):Any;
}

