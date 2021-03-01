package sf.library;
@:native("hook") extern class Hook {
	//  SHARED
	/*  Run a hook */
	@:native("run") public static function run(hookname:Any,...varargs:Any):Void;
	//  SHARED
	/*  Sets a hook function */
	@:native("add") public static function add(hookname:Any,name:Any,func:Any):Void;
	//  SHARED
	/*  Remove a hook */
	@:native("remove") public static function remove(hookname:Any,name:Any):Void;
	//  SHARED
	/*  Run a hook remotely.
 This will call the hook "remote" on either a specified entity or all instances on the server/client */
	@:native("runRemote") public static function runRemote(recipient:Any,...varargs:Any):Any;
}

