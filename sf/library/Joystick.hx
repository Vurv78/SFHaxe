package sf.library;
@:native("joystick") extern class Joystick {
	//  CLIENT
	/*  Gets the number of detected joysticks. */
	@:native("numJoysticks") public static function numJoysticks():Any;
	//  CLIENT
	/*  Gets the pov data value. */
	@:native("getPov") public static function getPov(__enum:Any,pov:Any):Any;
	//  CLIENT
	/*  Gets the hardware name of the joystick */
	@:native("getName") public static function getName(__enum:Any):Any;
	//  CLIENT
	/*  Returns if the button is pushed or not */
	@:native("getButton") public static function getButton(__enum:Any,button:Any):Any;
	//  CLIENT
	/*  Gets the axis data value. */
	@:native("getAxis") public static function getAxis(__enum:Any,axis:Any):Any;
	//  CLIENT
	/*  Gets the number of detected povs on a joystick */
	@:native("numPovs") public static function numPovs(__enum:Any):Any;
	//  CLIENT
	/*  Gets the number of detected axes on a joystick */
	@:native("numAxes") public static function numAxes(__enum:Any):Any;
	//  CLIENT
	/*  Gets the number of detected buttons on a joystick */
	@:native("numButtons") public static function numButtons(__enum:Any):Any;
}

