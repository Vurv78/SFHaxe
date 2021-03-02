package sf.library;
@:native("wire") extern class Wire {
	/**
		SERVER
		 Returns the wirelink representing this entity.
	**/
	@:native("self") public static function self():Void;
	/**
		SERVER
		 Returns a wirelink to a wire entity
	**/
	@:native("getWirelink") public static function getWirelink(ent:Any):Any;
	/**
		SERVER
		 Creates/Modifies wire inputs. All wire ports must begin with an uppercase
 letter and contain only alphabetical characters or numbers but may not begin with a number.
	**/
	@:native("adjustInputs") public static function adjustInputs(names:Any,types:Any):Void;
	/**
		SERVER
		 Wires two entities together
	**/
	@:native("create") public static function create(entI:Any,entO:Any,inputname:Any,outputname:Any,width:Any,color:Any,material:Any):Void;
	/**
		SERVER
		 Returns the server's UUID.
	**/
	@:native("serverUUID") public static function serverUUID():Any;
	/**
		SERVER
		 Unwires an entity's input
	**/
	@:native("delete") public static function delete(entI:Any,inputname:Any):Void;
	/**
		SERVER
		 Returns a table of entity's outputs
	**/
	@:native("getOutputs") public static function getOutputs(entO:Any):Any;
	/**
		SERVER
		 Creates/Modifies wire inputs/outputs. All wire ports must begin with an uppercase
 letter and contain only alphabetical characters or numbers but may not begin with a number.
	**/
	@:native("adjustPorts") public static function adjustPorts(inputs:Any,outputs:Any):Void;
	/**
		SERVER
		 Returns a table of entity's inputs
	**/
	@:native("getInputs") public static function getInputs(entI:Any):Any;
	/**
		SERVER
		 Creates/Modifies wire outputs. All wire ports must begin with an uppercase
 letter and contain only alphabetical characters or numbers but may not begin with a number.
	**/
	@:native("adjustOutputs") public static function adjustOutputs(names:Any,types:Any):Void;
}

