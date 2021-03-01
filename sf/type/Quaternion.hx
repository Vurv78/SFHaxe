package sf.type;
extern class Quaternion {
	//  SHARED
	/*  Converts quaternion to a matrix */
	@:native("getMatrix") public function getMatrix(Optional:Any):Any;
	//  SHARED
	/*  Gets the quaternion representing rotation contained within an angle between 0 and 180 degrees */
	@:native("getMod") public function getMod():Any;
	//  SHARED
	/*  multiplication metamethod */
	@:native("__mul") public function __mul(lhs:Any,rhs:Any):Any;
	//  SHARED
	/*  Calculates forward direction of the quaternion */
	@:native("getForward") public function getForward():Any;
	//  SHARED
	/*  subtraction metamethod */
	@:native("__sub") public function __sub(lhs:Any,rhs:Any):Any;
	//  SHARED
	/*  unary minus metamethod */
	@:native("__unm") public function __unm(q:Any):Any;
	//  SHARED
	/*  Returns dot product of two quaternions */
	@:native("dot") public function dot(quat:Any):Any;
	//  SHARED
	/*  Calculates right direction of the quaternion */
	@:native("getRight") public function getRight():Any;
	//  SHARED
	/*  Returns the rotation vector - rotation axis where magnitude is the angle of rotation in degrees */
	@:native("getRotationVector") public function getRotationVector():Any;
	//  SHARED
	/*  involution metamethod */
	@:native("__pow") public function __pow(lhs:Any,rhs:Any):Any;
	//  SHARED
	/*  newindex metamethod */
	@:native("__newindex") public function __newindex():Void;
	//  SHARED
	/*  Conjugates the quaternion. */
	@:native("conjugate") public function conjugate():Void;
	//  SHARED
	/*  Sets R (real) component of the quaternion */
	@:native("setR") public function setR(r:Any):Any;
	//  SHARED
	/*  Normalizes the quaternion. Self-modifies */
	@:native("normalize") public function normalize():Void;
	//  SHARED
	/*  Returns new normalized quaternion */
	@:native("getNormalized") public function getNormalized():Any;
	//  SHARED
	/*  Sets K component of the quaternion */
	@:native("setK") public function setK(k:Any):Any;
	//  SHARED
	/*  Calculates natural logarithm of the quaternion. Self-modifies */
	@:native("log") public function log():Void;
	//  SHARED
	/*  Returns the euler angle of rotation in degrees */
	@:native("getEulerAngle") public function getEulerAngle():Any;
	//  SHARED
	/*  Returns the angle of rotation in degrees */
	@:native("getRotationAngle") public function getRotationAngle(full:Any):Any;
	//  SHARED
	/*  Calculates inverse of the quaternion */
	@:native("getInverse") public function getInverse():Any;
	//  SHARED
	/*  Raises Euler's constant e to the quaternion's power. Self-modifies */
	@:native("exp") public function exp():Void;
	//  SHARED
	/*  Sets I component of the quaternion */
	@:native("setI") public function setI(i:Any):Any;
	//  SHARED
	/*  division metamethod */
	@:native("__div") public function __div(lhs:Any,rhs:Any):Any;
	//  SHARED
	/*  Returns components of the quaternion */
	@:native("unpack") public function unpack():Any;
	//  SHARED
	/*  index metamethod
 Can be indexed with: 1, 2, 3, 4, r, i, j, k, rr, ri, rj, rk, rrr, rijk, kjir, etc. Numerical lookup is the most efficient */
	@:native("__index") public function __index():Void;
	//  SHARED
	/*  equivalence metamethod */
	@:native("__eq") public function __eq(lhs:Any,rhs:Any):Any;
	//  SHARED
	/*  Calculates upward direction of the quaternion */
	@:native("getUp") public function getUp():Any;
	//  SHARED
	/*  Sets J component of the quaternion */
	@:native("setJ") public function setJ(j:Any):Any;
	//  SHARED
	/*  Creates a copy of the quaternion */
	@:native("clone") public function clone():Any;
	//  SHARED
	/*  Returns the axis of rotation */
	@:native("getRotationAxis") public function getRotationAxis():Any;
	//  SHARED
	/*  Set components of the quaternion */
	@:native("pack") public function pack(r:Any,i:Any,j:Any,k:Any):Void;
	//  SHARED
	/*  Calculates natural logarithm of the quaternion */
	@:native("getLog") public function getLog():Any;
	//  SHARED
	/*  tostring metamethod */
	@:native("__tostring") public function __tostring(q:Any):Any;
	//  SHARED
	/*  Calculates inverse of the quaternon. Self-modifies */
	@:native("inverse") public function inverse():Void;
	//  SHARED
	/*  Returns absolute value of the quaternion */
	@:native("getAbsolute") public function getAbsolute():Any;
	//  SHARED
	/*  addition metamethod */
	@:native("__add") public function __add(lhs:Any,rhs:Any):Any;
	//  SHARED
	/*  Raises Euler's constant e to the quaternion's power */
	@:native("getExp") public function getExp():Any;
	//  SHARED
	/*  Converts quaternion to a vector by dropping the R (real) component */
	@:native("getVector") public function getVector():Any;
	//  SHARED
	/*  Contains quaternion's represented rotation within an angle between 0 and 180 degrees. Self-modifies */
	@:native("mod") public function mod():Void;
	//  SHARED
	/*  Copies components of the second quaternion to the first quaternion. Self-modifies */
	@:native("set") public function set(quat:Any):Void;
	//  SHARED
	/*  Returns conjugate of the quaternion */
	@:native("getConjugate") public function getConjugate():Any;
}

