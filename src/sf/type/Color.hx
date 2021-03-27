// Generated by SFHaxe 0.3.0
package sf.type;
extern class ColorData {
	/**
		SHARED
		 Set's the color's blue and returns self.
	**/
	@:native("setB") public function setB(b:Float):sf.type.Color;
	/**
		SHARED
		 Set's the color's green and returns self.
	**/
	@:native("setG") public function setG(g:Float):sf.type.Color;
	/**
		SHARED
		 Concatenation metamethod
	**/
	@:native("__concat") public function __concat():std.String;
	/**
		SHARED
		 Copies r,g,b,a from color to another.
		 Self-Modifies. Does not return anything
	**/
	@:native("set") public function set(b:sf.type.Color):Void;
	/**
		SHARED
		 Converts the color from RGB to HSV.
	**/
	@:native("rgbToHSV") public function rgbToHSV():sf.type.Color;
	/**
		SHARED
		 Round the color values.
		 Self-Modifies. Does not return anything
	**/
	@:native("round") public function round(?idp:Null<Float>):Void;
	/**
		SHARED
		 Converts the color from HSV to RGB.
	**/
	@:native("hsvToRGB") public function hsvToRGB():sf.type.Color;
	/**
		SHARED
		 Turns the color into a string
	**/
	@:native("__tostring") public function __tostring():std.String;
	/**
		SHARED
		 Set's the color's alpha and returns it.
	**/
	@:native("setA") public function setA(a:Float):sf.type.Color;
	/**
		SHARED
		 Returns a hexadecimal string representation of the color
	**/
	@:native("toHex") public function toHex(?alpha:Null<Bool>):std.String;
	/**
		SHARED
		 Set's the color's red channel and returns self.
	**/
	@:native("setR") public function setR(r:Float):sf.type.Color;
	/**
		SHARED
		 Copies r,g,b,a from color and returns a new color
	**/
	@:native("clone") public function clone():sf.type.Color;
}

@:forward
extern abstract Color(ColorData) {
	/**
		SHARED
		 Multiplication metamethod
	**/
	@:op(A*B) public function __mul(A:Any):Any;
	/**
		SHARED
		 Subtraction metamethod
	**/
	@:op(A-B) public function __sub(A:Any):Any;
	/**
		SHARED
		 Division metamethod
	**/
	@:op(A/B) public function __div(A:Any):Any;
	/**
		SHARED
		 Gets a value at a key in the color
	**/
	@:op([]) public function __index(A:Any):Any;
	/**
		SHARED
		 Sets a value at a key in the color
	**/
	@:op([]) public function __newindex(A:Any, B:Any):Any;
	/**
		SHARED
		 Addition metamethod
	**/
	@:op(A+B) public function __add(A:Any):Any;
	/**
		SHARED
		 Equivalence metamethod
	**/
	@:op(A==B) public function __eq(A:Any):Any;
}

