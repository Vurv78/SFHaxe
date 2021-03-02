package sf.library;
@:native("coroutine") extern class Coroutine {
	/**
		SHARED	
		 Resumes a suspended coroutine. Note that, in contrast to Lua's native coroutine.resume function, it will not run in protected mode and can throw an error.
	**/
	@:native("resume") public static function resume(thread:Any,...varargs:Any):Any;
	/**
		SHARED	
		 Suspends the currently running coroutine. May not be called outside a coroutine.
	**/
	@:native("yield") public static function yield(...varargs:Any):Any;
	/**
		SHARED	
		 Creates a new coroutine.
	**/
	@:native("create") public static function create(func:Any):Any;
	/**
		SHARED	
		 Returns the status of the coroutine.
	**/
	@:native("status") public static function status(thread:Any):Any;
	/**
		SHARED	
		 Suspends the coroutine for a number of seconds. Note that the coroutine will not resume automatically, but any attempts to resume the coroutine while it is waiting will not resume the coroutine and act as if the coroutine suspended itself immediately.
	**/
	@:native("wait") public static function wait(time:Any):Void;
	/**
		SHARED	
		 Returns the coroutine that is currently running.
	**/
	@:native("running") public static function running():Any;
	/**
		SHARED	
		 Creates a new coroutine.
	**/
	@:native("wrap") public static function wrap(func:Any):Any;
}
