package sf.type;
extern class StringStreamData {
	/**
		SHARED
		 Writes an int to the buffer and advances the buffer pointer.
	**/
	@:native("writeInt32") public function writeInt32(x:Any):Void;
	/**
		SHARED
		 Reads an unsigned 32 bit (four byte) integer from the byte stream and advances the buffer pointer.
	**/
	@:native("readUInt32") public function readUInt32():Any;
	/**
		SHARED
		 Reads an unsigned 16 bit (two byte) integer from the byte stream and advances the buffer pointer.
	**/
	@:native("readUInt16") public function readUInt16():Any;
	/**
		SHARED
		 Reads the specified number of bytes from the buffer and advances the buffer pointer.
	**/
	@:native("read") public function read(length:Any):Any;
	/**
		SHARED
		 Writes a 4 byte IEEE754 float to the byte stream and advances the buffer pointer.
	**/
	@:native("writeFloat") public function writeFloat(x:Any):Void;
	/**
		SHARED
		 returns a null terminated string, reads until "\x00" and advances the buffer pointer.
	**/
	@:native("readString") public function readString():Any;
	/**
		SHARED
		 Returns the buffer as a string
	**/
	@:native("getString") public function getString():Any;
	/**
		SHARED
		 Writes a 8 byte IEEE754 double to the byte stream and advances the buffer pointer.
	**/
	@:native("writeDouble") public function writeDouble(x:Any):Void;
	/**
		SHARED
		 Reads a signed 8-bit (one byte) integer from the byte stream and advances the buffer pointer.
	**/
	@:native("readInt8") public function readInt8():Any;
	/**
		SHARED
		 Reads a signed 16-bit (two byte) integer from the byte stream and advances the buffer pointer.
	**/
	@:native("readInt16") public function readInt16():Any;
	/**
		SHARED
		 Sets the endianness of the string stream
	**/
	@:native("setEndian") public function setEndian(endian:Any):Void;
	/**
		SHARED
		 Reads a 4 byte IEEE754 float from the byte stream and advances the buffer pointer.
	**/
	@:native("readFloat") public function readFloat():Any;
	/**
		SHARED
		 Reads an unsigned 8-bit (one byte) integer from the byte stream and advances the buffer pointer.
	**/
	@:native("readUInt8") public function readUInt8():Any;
	/**
		SHARED
		 Writes a short to the buffer and advances the buffer pointer.
	**/
	@:native("writeInt16") public function writeInt16(x:Any):Void;
	/**
		SHARED
		 Writes the given string and advances the buffer pointer.
	**/
	@:native("write") public function write(data:Any):Void;
	/**
		SHARED
		 Reads until the given byte and advances the buffer pointer.
	**/
	@:native("readUntil") public function readUntil(byte:Any):Any;
	/**
		SHARED
		 Tells the size of the byte stream.
	**/
	@:native("size") public function size():Any;
	/**
		SHARED
		 Reads a 8 byte IEEE754 double from the byte stream and advances the buffer pointer.
	**/
	@:native("readDouble") public function readDouble():Any;
	/**
		SHARED
		 Reads a signed 32-bit (four byte) integer from the byte stream and advances the buffer pointer.
	**/
	@:native("readInt32") public function readInt32():Any;
	/**
		SHARED
		 Move the internal pointer by amount i
	**/
	@:native("skip") public function skip(length:Any):Void;
	/**
		SHARED
		 Writes a string to the buffer putting a null at the end and advances the buffer pointer.
	**/
	@:native("writeString") public function writeString(string:Any):Void;
	/**
		SHARED
		 Returns the internal position of the byte reader.
	**/
	@:native("tell") public function tell():Any;
	/**
		SHARED
		 Writes a byte to the buffer and advances the buffer pointer.
	**/
	@:native("writeInt8") public function writeInt8(x:Any):Void;
	/**
		SHARED
		 Sets internal pointer to i. The position will be clamped to [1, buffersize+1]
	**/
	@:native("seek") public function seek(i:Any):Void;
}

@:forward
extern abstract StringStream(StringStreamData) {
}

