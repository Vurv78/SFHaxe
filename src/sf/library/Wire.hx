// Generated by SFHaxe 0.3.3
package sf.library;
@:native("wire") extern class Wire {
	/**
		SERVER
		Returns a table of entity's inputs
	**/
	#if SERVER @:native("getInputs") public static function getInputs(entI:sf.type.Entity):lua.Table<Dynamic,Dynamic>;#end
	/**
		SERVER
		Unwires an entity's input
	**/
	#if SERVER @:native("delete") public static function delete(entI:sf.type.Entity, inputname:std.String):Void;#end
	/**
		SERVER
		Returns the server's UUID.
	**/
	#if SERVER @:native("serverUUID") public static function serverUUID():std.String;#end
	/**
		SERVER
		Returns the wirelink representing this entity.
	**/
	#if SERVER @:native("self") public static function self():sf.type.Wirelink;#end
	/**
		SERVER
		Returns a wirelink to a wire entity
	**/
	#if SERVER @:native("getWirelink") public static function getWirelink(ent:sf.type.Entity):sf.type.Wirelink;#end
	/**
		SERVER
		Creates/Modifies wire inputs/outputs. All wire ports must begin with an uppercase
		letter and contain only alphabetical characters or numbers but may not begin with a number.
	**/
	#if SERVER @:native("adjustPorts") public static function adjustPorts(?inputs:Null<lua.Table<Dynamic,Dynamic>>, ?outputs:Null<lua.Table<Dynamic,Dynamic>>):Void;#end
	/**
		SERVER
		Returns a table of entity's outputs
	**/
	#if SERVER @:native("getOutputs") public static function getOutputs(entO:sf.type.Entity):lua.Table<Dynamic,Dynamic>;#end
	/**
		SERVER
		Creates/Modifies wire inputs. All wire ports must begin with an uppercase
		letter and contain only alphabetical characters or numbers but may not begin with a number.
	**/
	#if SERVER @:native("adjustInputs") public static function adjustInputs(names:lua.Table<Dynamic,Dynamic>, types:lua.Table<Dynamic,Dynamic>):Void;#end
	/**
		SERVER
		Wires two entities together
	**/
	#if SERVER @:native("create") public static function create(entI:sf.type.Entity, entO:sf.type.Entity, inputname:std.String, outputname:std.String, ?width:Null<Float>, ?color:Null<sf.type.Color>, ?materialName:Null<std.String>):Void;#end
	/**
		SERVER
		Creates/Modifies wire outputs. All wire ports must begin with an uppercase
		letter and contain only alphabetical characters or numbers but may not begin with a number.
	**/
	#if SERVER @:native("adjustOutputs") public static function adjustOutputs(names:lua.Table<Dynamic,Dynamic>, types:lua.Table<Dynamic,Dynamic>):Void;#end
}

