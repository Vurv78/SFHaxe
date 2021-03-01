package sf.type;
extern class Angle {
	//  SHARED
	/*  Sets p,y,r to 0. This is faster than doing it manually. */
	@:native("setZero") public function setZero():Any;
	//  SHARED
	/*  Converts angle to a quaternion */
	@:native("getQuaternion") public function getQuaternion():Any;
	//  SHARED
	/*  __mul metamethod ang1 * b or ang1 * ang2. */
	@:native("__mul") public function __mul(b:Any):Any;
	//  SHARED
	/*  Round the angle values. Self-Modifies. */
	@:native("round") public function round(idp:Any):Any;
	//  SHARED
	/*  Return Rotated angle around the specified axis. */
	@:native("rotateAroundAxis") public function rotateAroundAxis(v:Any,deg:Any,rad:Any):Any;
	//  SHARED
	/*  __div metamethod ang1 / b or ang1 / ang2. */
	@:native("__div") public function __div(b:Any):Any;
	//  SHARED
	/*  __index metamethod
 Can be indexed with: 1, 2, 3, p, y, r, pitch, yaw, roll. 1,2,3 is most efficient. */
	@:native("__index") public function __index():Void;
	//  SHARED
	/*  Return the Forward Vector ( direction the angle points ). */
	@:native("getForward") public function getForward():Any;
	//  SHARED
	/*  __unm metamethod -ang. */
	@:native("__unm") public function __unm():Any;
	//  SHARED
	/*  Copies p,y,r from angle and returns a new angle */
	@:native("clone") public function clone():Any;
	//  SHARED
	/*  tostring metamethod */
	@:native("__tostring") public function __tostring():Any;
	//  SHARED
	/*  Return the Right Vector relative to the angle dir. */
	@:native("getRight") public function getRight():Any;
	//  SHARED
	/*  __eq metamethod ang1 == ang2. */
	@:native("__eq") public function __eq(a:Any):Any;
	//  SHARED
	/*  __sub metamethod ang1 - ang2. */
	@:native("__sub") public function __sub(a:Any):Any;
	//  SHARED
	/*  __newindex metamethod */
	@:native("__newindex") public function __newindex():Void;
	//  SHARED
	/*  Return the Up Vector relative to the angle dir. */
	@:native("getUp") public function getUp():Any;
	//  SHARED
	/*  __add metamethod ang1 + ang2. */
	@:native("__add") public function __add(a:Any):Any;
	//  SHARED
	/*  Returns if p,y,r are all 0. */
	@:native("isZero") public function isZero():Any;
	//  SHARED
	/*  Set's the angle's yaw and returns it. */
	@:native("setY") public function setY(y:Any):Any;
	//  SHARED
	/*  Set's the angle's pitch and returns it. */
	@:native("setP") public function setP(p:Any):Any;
	//  SHARED
	/*  Set's the angle's roll and returns it. */
	@:native("setR") public function setR(r:Any):Any;
	//  SHARED
	/*  Copies p,y,r from angle to another. */
	@:native("set") public function set(b:Any):Any;
}

