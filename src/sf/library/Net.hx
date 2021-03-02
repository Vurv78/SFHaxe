package sf.library;
@:native("net") extern class Net {
	/**
		SHARED
		 Reads a vector from the net message
	**/
	@:native("readVector") public static function readVector():Any;
	/**
		SHARED
		 Writes an unsigned integer to the net message
	**/
	@:native("writeUInt") public static function writeUInt(t:Any,n:Any):Void;
	/**
		SHARED
		 Send a net message from client->server, or server->client.
	**/
	@:native("send") public static function send(target:Any,unreliable:Any):Void;
	/**
		SHARED
		 Reads an integer from the net message
	**/
	@:native("readInt") public static function readInt(n:Any):Any;
	/**
		SHARED
		 Reads a string from the net message
	**/
	@:native("readString") public static function readString():Any;
	/**
		SHARED
		 Reads a matrix from the net message
	**/
	@:native("readMatrix") public static function readMatrix():Any;
	/**
		SHARED
		 Writes a double to the net message
	**/
	@:native("writeDouble") public static function writeDouble(t:Any):Void;
	/**
		SHARED
		 Reads an object from a net message automatically typing it
 Will throw an error if invalid type is read. Make sure to pcall it
	**/
	@:native("readTable") public static function readTable():Any;
	/**
		SHARED
		 Reads a boolean from the net message
	**/
	@:native("readBool") public static function readBool():Any;
	/**
		SHARED
		 Writes string containing null characters to the net message
	**/
	@:native("writeData") public static function writeData(t:Any,n:Any):Void;
	/**
		SHARED
		 Reads an unsigned integer from the net message
	**/
	@:native("readUInt") public static function readUInt(n:Any):Any;
	/**
		SHARED
		 Reads a string from the net message
	**/
	@:native("readData") public static function readData(n:Any):Any;
	/**
		SHARED
		 Writes a table to a net message automatically typing it.
	**/
	@:native("writeTable") public static function writeTable(v:Any):Void;
	/**
		SHARED
		 Returns the progress of a running readStream
	**/
	@:native("getStreamProgress") public static function getStreamProgress():Any;
	/**
		SHARED
		 Reads a double from the net message
	**/
	@:native("readDouble") public static function readDouble():Any;
	/**
		SHARED
		 Returns available bandwidth in bits
	**/
	@:native("getBitsLeft") public static function getBitsLeft():Any;
	/**
		SHARED
		 Writes a string to the net message. Null characters will terminate the string.
	**/
	@:native("writeString") public static function writeString(t:Any):Void;
	/**
		SHARED
		 Reads a bit from the net message
	**/
	@:native("readBit") public static function readBit():Any;
	/**
		SHARED
		 Writes an entity to the net message
	**/
	@:native("writeEntity") public static function writeEntity(t:Any):Void;
	/**
		SHARED
		 Writes an integer to the net message
	**/
	@:native("writeInt") public static function writeInt(t:Any,n:Any):Void;
	/**
		SHARED
		 Writes a float to the net message
	**/
	@:native("writeFloat") public static function writeFloat(t:Any):Void;
	/**
		SHARED
		 Reads a entity from the net message
	**/
	@:native("readEntity") public static function readEntity(callback:Any):Any;
	/**
		SHARED
		 Reads an object from a net message automatically typing it
 Will throw an error if invalid type is read. Make sure to pcall it
	**/
	@:native("readType") public static function readType():Any;
	/**
		SHARED
		 Starts the net message
	**/
	@:native("start") public static function start(name:Any):Void;
	/**
		SHARED
		 Reads an angle from the net message
	**/
	@:native("readAngle") public static function readAngle():Any;
	/**
		SHARED
		 Writes an matrix to the net message
	**/
	@:native("writeMatrix") public static function writeMatrix(t:Any):Void;
	/**
		SHARED
		 Reads a float from the net message
	**/
	@:native("readFloat") public static function readFloat():Any;
	/**
		SHARED
		 Writes a bool to the net message
	**/
	@:native("writeBool") public static function writeBool(t:Any):Void;
	/**
		SHARED
		 Returns available bandwidth in bytes
	**/
	@:native("getBytesLeft") public static function getBytesLeft():Any;
	/**
		SHARED
		 Cancels a currently running readStream
	**/
	@:native("cancelStream") public static function cancelStream():Void;
	/**
		SHARED
		 Writes an vector to the net message. Has significantly lower precision than writeFloat
	**/
	@:native("writeVector") public static function writeVector(t:Any):Void;
	/**
		SHARED
		 Writes an angle to the net message
	**/
	@:native("writeAngle") public static function writeAngle(t:Any):Void;
	/**
		SHARED
		 Streams a large 20MB string.
	**/
	@:native("writeStream") public static function writeStream(str:Any,compress:Any):Void;
	/**
		SHARED
		 Reads a large string stream from the net message.
	**/
	@:native("readStream") public static function readStream(cb:Any):Void;
	/**
		SHARED
		 Writes an color to the net message
	**/
	@:native("writeColor") public static function writeColor(t:Any):Void;
	/**
		SHARED
		 Writes a bit to the net message
	**/
	@:native("writeBit") public static function writeBit(t:Any):Void;
	/**
		SHARED
		 Returns whether or not the library is currently reading data from a stream
	**/
	@:native("isStreaming") public static function isStreaming():Any;
	/**
		SHARED
		 Writes an object to a net message automatically typing it
	**/
	@:native("writeType") public static function writeType(v:Any):Void;
	/**
		SHARED
		 Like glua net.Receive, adds a callback that is called when a net message with the matching name is received. If this happens, the net hook won't be called.
	**/
	@:native("receive") public static function receive(name:Any,func:Any):Void;
	/**
		SHARED
		 Reads a color from the net message
	**/
	@:native("readColor") public static function readColor():Any;
}

