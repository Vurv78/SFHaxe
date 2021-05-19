// Generated by SFHaxe 0.3.2
package sf.type;
extern class AngleData {
	/**
		SHARED
		 Set's the angle's roll and returns self.
	**/
	@:native("setR") public function setR(r:Float):sf.type.Angle;
	/**
		SHARED
		 Return the Up Vector relative to the angle dir.
	**/
	@:native("getUp") public function getUp():sf.type.Vector;
	/**
		SHARED
		 Returns if p,y,r are all 0.
	**/
	@:native("isZero") public function isZero():Bool;
	/**
		SHARED
		 Copies p,y,r from angle to another.
		 Self-Modifies. Does not return anything
	**/
	@:native("set") public function set(b:sf.type.Angle):Void;
	/**
		SHARED
		 Converts angle to a quaternion
	**/
	@:native("getQuaternion") public function getQuaternion():sf.type.Quaternion;
	/**
		SHARED
		 Return the Right Vector relative to the angle dir.
	**/
	@:native("getRight") public function getRight():sf.type.Vector;
	/**
		SHARED
		 Set's the angle's yaw and returns self.
	**/
	@:native("setY") public function setY(y:Float):sf.type.Angle;
	/**
		SHARED
		 Return Rotated angle around the specified axis.
	**/
	@:native("rotateAroundAxis") public function rotateAroundAxis(v:sf.type.Vector, ?deg:Null<Float>, ?rad:Null<Float>):sf.type.Angle;
	/**
		SHARED
		 Sets p,y,r to 0. This is faster than doing it manually.
		 Self-Modifies. Does not return anything
	**/
	@:native("setZero") public function setZero():Void;
	/**
		SHARED
		 Turns an angle into a string.
	**/
	@:native("__tostring") public function __tostring():std.String;
	/**
		SHARED
		 Copies p,y,r from angle and returns a new angle
	**/
	@:native("clone") public function clone():sf.type.Angle;
	/**
		SHARED
		 Round the angle values.
		 Self-Modifies. Does not return anything
	**/
	@:native("round") public function round(?idp:Null<Float>):Void;
	/**
		SHARED
		 Set's the angle's pitch and returns self.
	**/
	@:native("setP") public function setP(p:Float):sf.type.Angle;
	/**
		SHARED
		 Return the Forward Vector ( direction the angle points ).
	**/
	@:native("getForward") public function getForward():sf.type.Vector;
}

@:forward
extern abstract Angle(AngleData) {
	/**
		SHARED
		 Subtraction metamethod
	**/
	@:op(A-B) public function __sub(A:Any):Any;
	/**
		SHARED
		 Addition metamethod
	**/
	@:op(A+B) public function __add(A:Any):Any;
	/**
		SHARED
		 Division metamethod
	**/
	@:op(A/B) public function __div(A:Any):Any;
	/**
		SHARED
		 Sets a value at a key in the angle
	**/
	@:op([]) public function __newindex(A:Any, B:Any):Any;
	/**
		SHARED
		 Gets a value at a key in the color
		 Can be indexed with: 1, 2, 3, p, y, r, pitch, yaw, roll. 1,2,3 is most efficient.
	**/
	@:op([]) public function __index(A:Any):Any;
	/**
		SHARED
		 Unary Minus metamethod (Negative)
	**/
	@:op(-A) public function __unm():Any;
	/**
		SHARED
		 Multiplication metamethod
	**/
	@:op(A*B) public function __mul(A:Any):Any;
	/**
		SHARED
		 Equivalence metamethod
	**/
	@:op(A==B) public function __eq(A:Any):Any;
}

