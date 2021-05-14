// Generated by SFHaxe 0.3.1
package sf.library;
@:native("xinput") extern class Xinput {
	/**
		CLIENT
		 Gets whether the button on the controller is currently pushed down.
	**/
	#if CLIENT @:native("getButton") public static function getButton(id:Float, button:Float):Bool;#end
	/**
		CLIENT
		 Gets all of the connected controllers.
	**/
	#if CLIENT @:native("getControllers") public static function getControllers():lua.Table<Dynamic,Dynamic>;#end
	/**
		CLIENT
		 Attempts to check the battery level of the controller.
	**/
	#if CLIENT @:native("getBatteryLevel") public static function getBatteryLevel(id:Float):Dynamic;#end
	/**
		CLIENT
		 Gets the current position of the trigger on the controller.
	**/
	#if CLIENT @:native("getTrigger") public static function getTrigger(id:Float, trigger:Float):Float;#end
	/**
		CLIENT
		 Gets the current coordinates of the stick on the controller.
	**/
	#if CLIENT @:native("getStick") public static function getStick(id:Float, stick:Float):Float;#end
	/**
		CLIENT
		 Gets the state of the controller.
	**/
	#if CLIENT @:native("getState") public static function getState(id:Float):lua.Table<Dynamic,Dynamic>;#end
	/**
		CLIENT
		 Sets the rumble on the controller.
	**/
	#if CLIENT @:native("setRumble") public static function setRumble(id:Float, softPercent:Float, hardPercent:Float):Void;#end
}

