// Generated by SFHaxe 0.3.1
package sf.library;
@:native("timer") extern class Timer {
	/**
		SHARED
		 Creates a simple timer, has no name, can't be stopped, paused, or destroyed.
	**/
	@:native("simple") public static function simple(delay:Float, func:haxe.Constraints.Function):Void;
	/**
		SHARED
		 Stops a timer
	**/
	@:native("stop") public static function stop(name:std.String):Bool;
	/**
		SHARED
		 Starts a timer
	**/
	@:native("start") public static function start(name:std.String):Bool;
	/**
		SHARED
		 Stops and removes the timer.
	**/
	@:native("remove") public static function remove(name:std.String):Void;
	/**
		SHARED
		 Runs either timer.pause or timer.unpause based on the timer's current status.
	**/
	@:native("toggle") public static function toggle(name:std.String):Bool;
	/**
		SHARED
		 Returns amount of time left (in seconds) before the timer executes its function.
	**/
	@:native("timeleft") public static function timeleft(name:std.String):Float;
	/**
		SHARED
		 Pauses a timer
	**/
	@:native("pause") public static function pause(name:std.String):Bool;
	/**
		SHARED
		 Returns time between frames on client and ticks on server. Same thing as G.FrameTime in GLua
	**/
	@:native("frametime") public static function frametime():Float;
	/**
		SHARED
		 Returns a highly accurate time in seconds since the start up, ideal for benchmarking.
	**/
	@:native("systime") public static function systime():Float;
	/**
		SHARED
		 Returns number of available timers
	**/
	@:native("getTimersLeft") public static function getTimersLeft():Float;
	/**
		SHARED
		 Returns the uptime of the game/server in seconds (to at least 4 decimal places)
		 Ideal for timing real world events since it updates local to the realm thinking, being clientside FPS or server tickrate
	**/
	@:native("realtime") public static function realtime():Float;
	/**
		SHARED
		 Creates (and starts) a timer
	**/
	@:native("create") public static function create(name:std.String, delay:Float, reps:Float, func:haxe.Constraints.Function):Void;
	/**
		SHARED
		 Checks if a timer exists
	**/
	@:native("exists") public static function exists(name:std.String):Bool;
	/**
		SHARED
		 Unpauses a timer
	**/
	@:native("unpause") public static function unpause(name:std.String):Bool;
	/**
		SHARED
		 Returns amount of repetitions/executions left before the timer destroys itself.
	**/
	@:native("repsleft") public static function repsleft(name:std.String):Float;
	/**
		SHARED
		 Returns the uptime of the server in seconds (to at least 4 decimal places)
		 You should not use this for timing real world events as it is synchronized with the server, use realtime instead
	**/
	@:native("curtime") public static function curtime():Float;
	/**
		SHARED
		 Adjusts a timer
	**/
	@:native("adjust") public static function adjust(name:std.String, delay:Float, ?reps:Null<Float>, ?func:Null<haxe.Constraints.Function>):Bool;
}

