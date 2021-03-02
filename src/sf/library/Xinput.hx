package sf.library;
@:native("xinput") extern class Xinput {
	/**
		CLIENT	
		 Sets the rumble on the controller.
	**/
	@:native("setRumble") public static function setRumble(id:Any,softPercent:Any,hardPercent:Any):Void;
	/**
		CLIENT	
		 Gets the current position of the trigger on the controller.
	**/
	@:native("getTrigger") public static function getTrigger(id:Any,trigger:Any):Any;
	/**
		CLIENT	
		 Gets the current coordinates of the stick on the controller.
	**/
	@:native("getStick") public static function getStick(id:Any,stick:Any):Any;
	/**
		CLIENT	
		 Gets the state of the controller.
	**/
	@:native("getState") public static function getState(id:Any):Any;
	/**
		CLIENT	
		 Attempts to check the battery level of the controller.
	**/
	@:native("getBatteryLevel") public static function getBatteryLevel(id:Any):Any;
	/**
		CLIENT	
		 Gets whether the button on the controller is currently pushed down.
	**/
	@:native("getButton") public static function getButton(id:Any,button:Any):Any;
	/**
		CLIENT	
		 Gets all of the connected controllers.
	**/
	@:native("getControllers") public static function getControllers():Any;
}

