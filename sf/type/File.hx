package sf.type;
extern class File {
	//  CLIENT
	/*  Writes a string to the file and advances the file position */
	@:native("write") public function write(str:Any):Void;
	//  CLIENT
	/*  Reads a certain length of the file's bytes */
	@:native("read") public function read(n:Any):Any;
	//  CLIENT
	/*  Writes a float and advances the file position */
	@:native("writeFloat") public function writeFloat(x:Any):Void;
	//  CLIENT
	/*  Writes a byte and advances the file position */
	@:native("writeByte") public function writeByte(x:Any):Void;
	//  CLIENT
	/*  Writes a long and advances the file position */
	@:native("writeLong") public function writeLong(x:Any):Void;
	//  CLIENT
	/*  Wait until all changes to the file are complete */
	@:native("flush") public function flush():Void;
	//  CLIENT
	/*  Writes a double and advances the file position */
	@:native("writeDouble") public function writeDouble(x:Any):Void;
	//  CLIENT
	/*  Reads a line and advances the file position */
	@:native("readLine") public function readLine():Any;
	//  CLIENT
	/*  Reads a boolean and advances the file position */
	@:native("readBool") public function readBool():Any;
	//  CLIENT
	/*  Reads a float and advances the file position */
	@:native("readFloat") public function readFloat():Any;
	//  CLIENT
	/*  Reads a byte and advances the file position */
	@:native("readByte") public function readByte():Any;
	//  CLIENT
	/*  Returns the file's size in bytes */
	@:native("size") public function size():Any;
	//  CLIENT
	/*  Reads a short and advances the file position */
	@:native("readShort") public function readShort():Any;
	//  CLIENT
	/*  Flushes and closes the file. The file must be opened again to use a new file object. */
	@:native("close") public function close():Void;
	//  CLIENT
	/*  Reads a double and advances the file position */
	@:native("readDouble") public function readDouble():Any;
	//  CLIENT
	/*  Writes a boolean and advances the file position */
	@:native("writeBool") public function writeBool(x:Any):Void;
	//  CLIENT
	/*  Moves the file position relative to its current position */
	@:native("skip") public function skip(n:Any):Any;
	//  CLIENT
	/*  Writes a short and advances the file position */
	@:native("writeShort") public function writeShort(x:Any):Void;
	//  CLIENT
	/*  Returns the current file position */
	@:native("tell") public function tell():Any;
	//  CLIENT
	/*  Sets the file position */
	@:native("seek") public function seek(n:Any):Void;
	//  CLIENT
	/*  Reads a long and advances the file position */
	@:native("readLong") public function readLong():Any;
}

