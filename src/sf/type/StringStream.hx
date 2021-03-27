// Generated by SFHaxe 0.3.0
package sf.type;
extern class StringStreamData {
	/**
		SHARED
		 Writes an int to the buffer and advances the buffer pointer.
	**/
	@:native("writeInt32") public function writeInt32(x:Float):Void;
	/**
		SHARED
		 Reads an unsigned 32 bit (four byte) integer from the byte stream and advances the buffer pointer.
	**/
	@:native("readUInt32") public function readUInt32():Float;
	/**
		SHARED
		 Reads an unsigned 16 bit (two byte) integer from the byte stream and advances the buffer pointer.
	**/
	@:native("readUInt16") public function readUInt16():Float;
	/**
		SHARED
		 Reads the specified number of bytes from the buffer and advances the buffer pointer.
	**/
	@:native("read") public function read(length:Float):std.String;
	/**
		SHARED
		 Writes a 4 byte IEEE754 float to the byte stream and advances the buffer pointer.
	**/
	@:native("writeFloat") public function writeFloat(x:Float):Void;
	/**
		SHARED
		 Returns a null terminated string, reads until "\x00" and advances the buffer pointer.
	**/
	@:native("readString") public function readString():std.String;
	/**
		SHARED
		 Returns the buffer as a string
	**/
	@:native("getString") public function getString():std.String;
	/**
		SHARED
		 Writes a 8 byte IEEE754 double to the byte stream and advances the buffer pointer.
	**/
	@:native("writeDouble") public function writeDouble(x:Float):Void;
	/**
		SHARED
		 Reads a signed 8-bit (one byte) integer from the byte stream and advances the buffer pointer.
	**/
	@:native("readInt8") public function readInt8():Float;
	/**
		SHARED
		 Reads a signed 16-bit (two byte) integer from the byte stream and advances the buffer pointer.
	**/
	@:native("readInt16") public function readInt16():Float;
	/**
		SHARED
		 Reads a 4 byte IEEE754 float from the byte stream and advances the buffer pointer.
	**/
	@:native("readFloat") public function readFloat():Float;
	/**
		SHARED
		 Sets internal pointer to pos. The position will be clamped to [1, buffersize+1]
	**/
	@:native("seek") public function seek(pos:Float):Void;
	/**
		SHARED
		 Reads an unsigned 8-bit (one byte) integer from the byte stream and advances the buffer pointer.
	**/
	@:native("readUInt8") public function readUInt8():Float;
	/**
		SHARED
		 Writes a short to the buffer and advances the buffer pointer.
	**/
	@:native("writeInt16") public function writeInt16(x:Float):Void;
	/**
		SHARED
		 Writes a byte to the buffer and advances the buffer pointer.
	**/
	@:native("writeInt8") public function writeInt8(x:Float):Void;
	/**
		SHARED
		 Returns the internal position of the byte reader.
	**/
	@:native("tell") public function tell():Float;
	/**
		SHARED
		 Tells the size of the byte stream.
	**/
	@:native("size") public function size():Float;
	/**
		SHARED
		 Reads a 8 byte IEEE754 double from the byte stream and advances the buffer pointer.
	**/
	@:native("readDouble") public function readDouble():Float;
	/**
		SHARED
		 Reads a signed 32-bit (four byte) integer from the byte stream and advances the buffer pointer.
	**/
	@:native("readInt32") public function readInt32():Float;
	/**
		SHARED
		 Move the internal pointer by amount i
	**/
	@:native("skip") public function skip(length:Float):Void;
	/**
		SHARED
		 Writes a string to the buffer putting a null at the end and advances the buffer pointer.
	**/
	@:native("writeString") public function writeString(str:std.String):Void;
	/**
		SHARED
		 Reads until the given byte and advances the buffer pointer.
	**/
	@:native("readUntil") public function readUntil(byte:Float):std.String;
	/**
		SHARED
		 Sets the endianness of the string stream
	**/
	@:native("setEndian") public function setEndian(endian:std.String):Void;
	/**
		SHARED
		 Writes the given string and advances the buffer pointer.
	**/
	@:native("write") public function write(data:std.String):Void;
}

@:forward
extern abstract StringStream(StringStreamData) {
}
