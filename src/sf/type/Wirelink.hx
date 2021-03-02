package sf.type;
extern class Wirelink {
	/**
		SERVER	
		 Checks if an input is wired.
	**/
	@:native("isWired") public function isWired(name:Any):Void;
	/**
		SERVER	
		 Returns the entity that the wirelink represents
	**/
	@:native("entity") public function entity():Void;
	/**
		SERVER	
		 Returns the name of the output an input of the wirelink is wired to.
	**/
	@:native("getWiredToName") public function getWiredToName(name:Any):Any;
	/**
		SERVER	
		 Returns a table of all of the wirelink's outputs
	**/
	@:native("outputs") public function outputs():Void;
	/**
		SERVER	
		 Writes to an input.
	**/
	@:native("__newindex") public function __newindex():Void;
	/**
		SERVER	
		 Returns the type of input name, or nil if it doesn't exist
	**/
	@:native("inputType") public function inputType():Void;
	/**
		SERVER	
		 Returns the type of output name, or nil if it doesn't exist
	**/
	@:native("outputType") public function outputType():Void;
	/**
		SERVER	
		 Retrieves an output. Returns nil if the output doesn't exist.
	**/
	@:native("__index") public function __index():Void;
	/**
		SERVER	
		 Returns a table of all of the wirelink's inputs
	**/
	@:native("inputs") public function inputs():Void;
	/**
		SERVER	
		 Returns what an input of the wirelink is wired to.
	**/
	@:native("getWiredTo") public function getWiredTo(name:Any):Any;
	/**
		SERVER	
		 Checks if a wirelink is valid. (ie. doesn't point to an invalid entity)
	**/
	@:native("isValid") public function isValid():Void;
}

