package sf.type;
extern class ColorData {
	/**
		SHARED
		 Set's the color's blue and returns it.
	**/
	@:native("setB") public function setB(b:Any):Any;
	/**
		SHARED
		 Set's the color's green and returns it.
	**/
	@:native("setG") public function setG(g:Any):Any;
	/**
		SHARED
		 __concat metamethod
	**/
	@:native("__concat") public function __concat():Void;
	/**
		SHARED
		 Set's the color's alpha and returns it.
	**/
	@:native("setA") public function setA(a:Any):Any;
	/**
		SHARED
		 Copies r,g,b,a from color to another.
	**/
	@:native("set") public function set(b:Any):Any;
	/**
		SHARED
		 Converts the color from RGB to HSV.
	**/
	@:native("rgbToHSV") public function rgbToHSV():Any;
	/**
		SHARED
		 Copies r,g,b,a from color and returns a new color
	**/
	@:native("clone") public function clone():Any;
	/**
		SHARED
		 Set's the color's red channel and returns it.
	**/
	@:native("setR") public function setR(r:Any):Any;
	/**
		SHARED
		 Returns a hexadecimal string representation of the color
	**/
	@:native("toHex") public function toHex(alpha:Any):Any;
	/**
		SHARED
		 __tostring metamethod
	**/
	@:native("__tostring") public function __tostring():Void;
	/**
		SHARED
		 Converts the color from HSV to RGB.
	**/
	@:native("hsvToRGB") public function hsvToRGB():Any;
	/**
		SHARED
		 Round the color values. Self-Modifies.
	**/
	@:native("round") public function round(idp:Any):Any;
}

@:forward
extern abstract Color(ColorData) {
	/**
		SHARED
		 multiplication metamethod
	**/
	@:op(A * B) public function __mul(A:Any):Any;
	/**
		SHARED
		 subtraction metamethod
	**/
	@:op(A - B) public function __sub(A:Any):Any;
	/**
		SHARED
		 division metamethod
	**/
	@:op(A / B) public function __div(A:Any):Any;
	/**
		SHARED
		 __newindex metamethod
	**/
	@:op([]) public function __newindex(A:Any, B:Any):Any;
	/**
		SHARED
		 __eq metamethod
	**/
	@:op(A==B) public function __eq(A:Any):Any;
	/**
		SHARED
		 __index metamethod
	**/
	@:op([]) public function __index(A:Any):Any;
	/**
		SHARED
		 addition metamethod
	**/
	@:op(A + B) public function __add(A:Any):Any;
}

