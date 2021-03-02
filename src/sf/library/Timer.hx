package sf.library;
@:native("timer") extern class Timer {
	/**
		SHARED	
		 Checks if a timer exists
	**/
	@:native("exists") public static function exists(name:Any):Any;
	/**
		SHARED	
		 Runs either timer.pause or timer.unpause based on the timer's current status.
	**/
	@:native("toggle") public static function toggle(name:Any):Any;
	/**
		SHARED	
		 Creates (and starts) a timer
	**/
	@:native("create") public static function create(name:Any,delay:Any,reps:Any,func:Any):Void;
	/**
		SHARED	
		 Returns number of available timers
	**/
	@:native("getTimersLeft") public static function getTimersLeft():Any;
	/**
		SHARED	
		 Starts a timer
	**/
	@:native("start") public static function start(name:Any):Any;
	/**
		SHARED	
		 Returns amount of time left (in seconds) before the timer executes its function.
	**/
	@:native("timeleft") public static function timeleft(name:Any):Any;
	/**
		SHARED	
		 Returns time between frames on client and ticks on server. Same thing as G.FrameTime in GLua
	**/
	@:native("frametime") public static function frametime():Any;
	/**
		SHARED	
		 Adjusts a timer
	**/
	@:native("adjust") public static function adjust(name:Any,delay:Any,reps:Any,func:Any):Any;
	/**
		SHARED	
		 Pauses a timer
	**/
	@:native("pause") public static function pause(name:Any):Any;
	/**
		SHARED	
		 Returns a highly accurate time in seconds since the start up, ideal for benchmarking.
	**/
	@:native("systime") public static function systime():Any;
	/**
		SHARED	
		 Returns amount of repetitions/executions left before the timer destroys itself.
	**/
	@:native("repsleft") public static function repsleft(name:Any):Any;
	/**
		SHARED	
		 Returns the uptime of the server in seconds (to at least 4 decimal places)
 You should not use this for timing real world events as it is synchronized with the server, use realtime instead
	**/
	@:native("curtime") public static function curtime():Any;
	/**
		SHARED	
		 Unpauses a timer
	**/
	@:native("unpause") public static function unpause(name:Any):Any;
	/**
		SHARED	
		 Returns the uptime of the game/server in seconds (to at least 4 decimal places)
 Ideal for timing real world events since it updates local to the realm thinking, being clientside FPS or server tickrate
	**/
	@:native("realtime") public static function realtime():Any;
	/**
		SHARED	
		 Stops a timer
	**/
	@:native("stop") public static function stop(name:Any):Any;
	/**
		SHARED	
		 Creates a simple timer, has no name, can't be stopped, paused, or destroyed.
	**/
	@:native("simple") public static function simple(delay:Any,func:Any):Void;
	/**
		SHARED	
		 Stops and removes the timer.
	**/
	@:native("remove") public static function remove(name:Any):Void;
}
