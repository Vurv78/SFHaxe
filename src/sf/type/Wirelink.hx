// Generated by SFHaxe 0.3.3
package sf.type;
extern class WirelinkData {
	/**
		SERVER
		Returns the type of output name, or nil if it doesn't exist
	**/
	#if SERVER @:native("outputType") public function outputType(name:std.String):std.String;#end
	/**
		SERVER
		Returns the type of input name, or nil if it doesn't exist
	**/
	#if SERVER @:native("inputType") public function inputType(name:std.String):std.String;#end
	/**
		SERVER
		Returns a table of all of the wirelink's inputs
	**/
	#if SERVER @:native("inputs") public function inputs():lua.Table<Dynamic,Dynamic>;#end
	/**
		SERVER
		Returns what an input of the wirelink is wired to.
	**/
	#if SERVER @:native("getWiredTo") public function getWiredTo(name:std.String):sf.type.Entity;#end
	/**
		SERVER
		Returns current state of the specified input
	**/
	#if SERVER @:native("inputValue") public function inputValue(name:std.String):Any;#end
	/**
		SERVER
		Returns a table of all of the wirelink's outputs
	**/
	#if SERVER @:native("outputs") public function outputs():lua.Table<Dynamic,Dynamic>;#end
	/**
		SERVER
		Checks if an input is wired.
	**/
	#if SERVER @:native("isWired") public function isWired(name:std.String):Bool;#end
	/**
		SERVER
		Returns the entity that the wirelink represents
	**/
	#if SERVER @:native("entity") public function entity():sf.type.Entity;#end
	/**
		SERVER
		Checks if a wirelink is valid. (ie. doesn't point to an invalid entity)
	**/
	#if SERVER @:native("isValid") public function isValid():Bool;#end
	/**
		SERVER
		Returns the name of the output an input of the wirelink is wired to.
	**/
	#if SERVER @:native("getWiredToName") public function getWiredToName(name:std.String):std.String;#end
}

@:forward
extern abstract Wirelink(WirelinkData) {
	/**
		SERVER
		Writes to an input.
	**/
	@:op([]) public function __newindex(A:Any, B:Any):Any;
	/**
		SERVER
		Retrieves an output. Returns nil if the output doesn't exist.
	**/
	@:op([]) public function __index(A:Any):Any;
}

