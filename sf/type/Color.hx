package sf.type;
extern class Color {
	//  SHARED
	/*  Set's the color's blue and returns it. */
	@:native("setB") public function setB(b:Any):Any;
	//  SHARED
	/*  multiplication metamethod */
	@:native("__mul") public function __mul(b:Any):Any;
	//  SHARED
	/*  Set's the color's green and returns it. */
	@:native("setG") public function setG(g:Any):Any;
	//  SHARED
	/*  __concat metamethod */
	@:native("__concat") public function __concat():Void;
	//  SHARED
	/*  subtraction metamethod */
	@:native("__sub") public function __sub(lhs:Any,rhs:Any):Any;
	//  SHARED
	/*  division metamethod */
	@:native("__div") public function __div(b:Any):Any;
	//  SHARED
	/*  Set's the color's alpha and returns it. */
	@:native("setA") public function setA(a:Any):Any;
	//  SHARED
	/*  Copies r,g,b,a from color to another. */
	@:native("set") public function set(b:Any):Any;
	//  SHARED
	/*  Converts the color from RGB to HSV. */
	@:native("rgbToHSV") public function rgbToHSV():Any;
	//  SHARED
	/*  Copies r,g,b,a from color and returns a new color */
	@:native("clone") public function clone():Any;
	//  SHARED
	/*  Set's the color's red channel and returns it. */
	@:native("setR") public function setR(r:Any):Any;
	//  SHARED
	/*  __newindex metamethod */
	@:native("__newindex") public function __newindex():Void;
	//  SHARED
	/*  Returns a hexadecimal string representation of the color */
	@:native("toHex") public function toHex(alpha:Any):Any;
	//  SHARED
	/*  __tostring metamethod */
	@:native("__tostring") public function __tostring():Void;
	//  SHARED
	/*  __eq metamethod */
	@:native("__eq") public function __eq():Void;
	//  SHARED
	/*  __index metamethod */
	@:native("__index") public function __index():Void;
	//  SHARED
	/*  addition metamethod */
	@:native("__add") public function __add(lhs:Any,rhs:Any):Any;
	//  SHARED
	/*  Converts the color from HSV to RGB. */
	@:native("hsvToRGB") public function hsvToRGB():Any;
	//  SHARED
	/*  Round the color values. Self-Modifies. */
	@:native("round") public function round(idp:Any):Any;
}

