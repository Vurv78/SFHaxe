package sf.type;
extern class VectorData {
	/**
		SHARED
		 Is this vector and v equal within tolerance t.
	**/
	@:native("isEqualTol") public function isEqualTol(v:Any,t:Any):Any;
	/**
		SHARED
		 Converts vector to quaternion
	**/
	@:native("getQuaternion") public function getQuaternion(up:Any):Any;
	/**
		SHARED
		 Returns the length of the vector in two dimensions, without the Z axis.
	**/
	@:native("getLength2D") public function getLength2D():Any;
	/**
		SHARED
		 Round the vector values. Self-Modifies.
	**/
	@:native("round") public function round(idp:Any):Any;
	/**
		SHARED
		 Constructs a quaternion from the rotation vector. Vector direction is axis of rotation, it's magnitude is angle in degrees
	**/
	@:native("getQuaternionFromRotation") public function getQuaternionFromRotation():Any;
	/**
		SHARED
		 Returns whenever the given vector is in a box created by the 2 other vectors.
	**/
	@:native("withinAABox") public function withinAABox(v1:Any,v2:Any):Any;
	/**
		SHARED
		 Return rotated vector by an axis
	**/
	@:native("rotateAroundAxis") public function rotateAroundAxis(axis:Any,degrees:Any,radians:Any):Any;
	/**
		SHARED
		 Dot product is the cosine of the angle between both vectors multiplied by their lengths. A.B = ||A||||B||cosA.
	**/
	@:native("dot") public function dot(v:Any):Any;
	/**
		SHARED
		 Get the vector's length squared ( Saves computation by skipping the square root ).
	**/
	@:native("getLengthSqr") public function getLengthSqr():Any;
	/**
		SHARED
		 Divide self by a Vector. Self-Modifies. ( convenience function )
	**/
	@:native("vdiv") public function vdiv(v:Any):Void;
	/**
		SHARED
		 Calculates the cross product of the 2 vectors, creates a unique perpendicular vector to both input vectors.
	**/
	@:native("cross") public function cross(v:Any):Any;
	/**
		SHARED
		 Rotate the vector by Angle b. Self-Modifies.
	**/
	@:native("rotate") public function rotate(b:Any):Any;
	/**
		SHARED
		 Normalise the vector, same direction, length 1. Self-Modifies.
	**/
	@:native("normalize") public function normalize():Any;
	/**
		SHARED
		 Returns a new vector with the same direction by length of 1.
	**/
	@:native("getNormalized") public function getNormalized():Any;
	/**
		SHARED
		 Set's all vector fields to 0.
	**/
	@:native("setZero") public function setZero():Any;
	/**
		SHARED
		 Set's the vector's x coordinate and returns it.
	**/
	@:native("setX") public function setX(x:Any):Any;
	/**
		SHARED
		 Set's the vector's y coordinate and returns it.
	**/
	@:native("setY") public function setY(y:Any):Any;
	/**
		SHARED
		 Returns the squared distance of 2 vectors, this is faster Vector:getDistance as calculating the square root is an expensive process.
	**/
	@:native("getDistanceSqr") public function getDistanceSqr(v:Any):Any;
	/**
		SHARED
		 Converts vector to color
	**/
	@:native("getColor") public function getColor():Any;
	/**
		SHARED
		 Copies the values from the second vector to the first vector. Self-Modifies.
	**/
	@:native("set") public function set(v:Any):Any;
	/**
		SHARED
		 Returns the length squared of the vector in two dimensions, without the Z axis. ( Saves computation by skipping the square root )
	**/
	@:native("getLength2DSqr") public function getLength2DSqr():Any;
	/**
		SHARED
		 Set's the vector's z coordinate and returns it.
	**/
	@:native("setZ") public function setZ(z:Any):Any;
	/**
		SHARED
		 Subtract v from this Vector. Self-Modifies.
	**/
	@:native("sub") public function sub(v:Any):Any;
	/**
		SHARED
		 "Scalar Division" of the vector. Self-Modifies.
	**/
	@:native("div") public function div(n:Any):Any;
	/**
		SHARED
		 Add vector - Modifies self.
	**/
	@:native("add") public function add(v:Any):Any;
	/**
		SHARED
		 Returns Rotated vector by Angle b
	**/
	@:native("getRotated") public function getRotated(b:Any):Any;
	/**
		SHARED
		 Scalar Multiplication of the vector. Self-Modifies.
	**/
	@:native("mul") public function mul(n:Any):Any;
	/**
		SHARED
		 Copies x,y,z from a vector and returns a new vector
	**/
	@:native("clone") public function clone():Any;
	/**
		SHARED
		 tostring metamethod
	**/
	@:native("__tostring") public function __tostring():Any;
	/**
		SHARED
		 Get the vector's angle.
	**/
	@:native("getAngle") public function getAngle():Any;
	/**
		SHARED
		 Multiply self with a Vector. Self-Modifies. ( convenience function )
	**/
	@:native("vmul") public function vmul(v:Any):Void;
	/**
		SHARED
		 Returns the pythagorean distance between the vector and the other vector.
	**/
	@:native("getDistance") public function getDistance(v:Any):Any;
	/**
		SHARED
		 Translates the vectors position into 2D user screen coordinates.
	**/
	@:native("toScreen") public function toScreen():Any;
	/**
		SHARED
		 Returns quaternion for rotation about axis represented by the vector by an angle
	**/
	@:native("getQuaternionFromAxis") public function getQuaternionFromAxis(ang:Any):Any;
	/**
		SERVER
		 Returns whether the vector is in world
	**/
	@:native("isInWorld") public function isInWorld():Any;
	/**
		SHARED
		 Are all fields zero.
	**/
	@:native("isZero") public function isZero():Any;
	/**
		SHARED
		 Get the vector's Length.
	**/
	@:native("getLength") public function getLength():Any;
	/**
		SHARED
		 Returns an arbitrary orthogonal basis from the direction of the vector. Input must be a normalized vector
	**/
	@:native("getBasis") public function getBasis():Any;
	/**
		SHARED
		 Returns the vector's euler angle with respect to the other vector as if it were the new vertical axis.
	**/
	@:native("getAngleEx") public function getAngleEx(v:Any):Any;
}

@:forward
extern abstract Vector(VectorData) {
	/**
		SHARED
		 multiplication metamethod
	**/
	@:op(A * B) public function __mul(A:Any):Any;
	/**
		SHARED
		 unary minus metamethod
	**/
	@:op(-A) public function __unm():Any;
	/**
		SHARED
		 equivalence metamethod
	**/
	@:op(A==B) public function __eq(A:Any):Any;
	/**
		SHARED
		 division metamethod
	**/
	@:op(A / B) public function __div(A:Any):Any;
	/**
		SHARED
		 add metamethod
	**/
	@:op(A + B) public function __add(A:Any):Any;
	/**
		SHARED
		 __index metamethod
 Can be indexed with: 1, 2, 3, x, y, z, xx, xy, xz, xxx, xyz, zyx, etc.. 1,2,3 is most efficient.
	**/
	@:op([]) public function __index(A:Any):Any;
	/**
		SHARED
		 __newindex metamethod
	**/
	@:op([]) public function __newindex(A:Any, B:Any):Any;
	/**
		SHARED
		 sub metamethod
	**/
	@:op(A - B) public function __sub(A:Any):Any;
}

