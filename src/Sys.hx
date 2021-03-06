
@:coreApi
class Sys {
    /**
        SHARED
        Internally calls Builtins.print.
    **/
    public static inline function print(v:Dynamic):Void
        sf.library.Builtins.print(v);

    /**
        SHARED
        Internally calls Builtins.print with a newline after
    **/
    public static inline function println(v:Dynamic):Void
        sf.library.Builtins.print('$v\n');

    /**
        Simply returns "SF" since Starfall has no concept of OS.
        There's no reason to use this
    **/
    public static inline function systemName():String
        return "SF";

    /**
        Returns an empty array, this isn't supported.
    **/
    public static inline function args():Array<String>
        return [];

    // Can't just get an env variable from an SF chip.
    public static inline function getEnv(s:String):String
        return "";

    public static inline function putEnv(s:String, v:String):Void {}

    public static function environment():Map<String, String> {
        return new Map<String,String>();
    }

    /**
        Always returns false as setting the time isn't supported.
    **/
    public inline static function setTimeLocale(loc:String):Bool
        return false;

    /**
        SHARED
        Returns the same thing as doing debugGetInfo(1,"S").short_src.
    **/
    public inline static function getCwd():String {
        return untyped {
            sf.library.Builtins.debugGetInfo(1, "S").short_src;
        }
    }

    /**
        Does nothing.
    **/
    public static inline function setCwd(s:String):Void {}

    /**
        SHARED
        Does nothing. Returns Access denied error code.
        https://www.tutorialspoint.com/batch_script/batch_script_return_code.htm
    **/
    public static inline function command(cmd:String, ?args:Array<String>):Int {
        return 5;
    }

    /**
        SHARED
        Just errors the chip with the message 'exit' at stack level 0.
    **/
    public static inline function exit(code:Int):Void {
        sf.library.Builtins.error("exit", 0);
    }

    /**
        SHARED
        Returns the same thing as using Timer.systime()
    **/
    public static inline function time():Float
        return sf.library.Timer.systime();

    /**
        SHARED
        Returns the same result as calling quotaTotalUsed()
    **/
    public static inline function cpuTime():Float {
        return sf.library.Builtins.quotaTotalUsed();
    }

    /**
        SHARED
        Returns the same result as getCwd, which just returns the debugGetInfo short_src of stack level 1.
    **/
    public static inline function executablePath():String {
        return getCwd();
    }

    /**
        SHARED
        Does the same thing as Sys.executablePath().
    **/
    public static inline function programPath():String {
        return executablePath();
    }

    /**
        Don't use this. There is no std interface for starfall.
    **/
    public static function getChar(echo: Bool):Int {
        return throw "No stdin in SF";
    }

    /**
        SHARED
        Just calls Coroutine.yield.
        Starfall doesn't run in a coroutine by default so make sure you're in a coroutine.
    **/
    public static function sleep(seconds: Float):Void {
        sf.library.Coroutine.yield();
    }

    /**
        Don't use this. There is no std interface for starfall.
    **/
    public static inline function stdin():haxe.io.Input {
        return throw "No stdio in SF";
    }

    /**
        Don't use this. There is no std interface for starfall.
    **/
    public static inline function stdout():haxe.io.Output {
        return throw "No stdio in SF";
    }

    /**
        Don't use this. There is no std interface for starfall.
    **/
    public static inline function stderr():haxe.io.Output {
        return throw "No stdio in SF";
    }
}
