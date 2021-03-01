package sf.library;
@:native("math") extern class Math {
	//  SHARED
	/*  Rounds a number up. */
	@:native("ceil") public static function ceil(n:Any):Any;
	//  SHARED
	/*  Calculates the tangent of the given angle. */
	@:native("tan") public static function tan(ang:Any):Any;
	//  SHARED
	/*  Returns the base-10 logarithm of x. This is usually more accurate than math.log(x, 10). */
	@:native("log10") public static function log10(x:Any):Any;
	//  SHARED
	/*  Calculates the sign of a number */
	@:native("sign") public static function sign(x:Any):Any;
	//  SHARED
	/*  Calculates the hyperbolic sine of the given angle. */
	@:native("sinh") public static function sinh(ang:Any):Any;
	//  SHARED
	/*  Calculates the difference between two points in 2D space (DEPRECATED! You should use math.distance instead) */
	@:native("dist") public static function dist(x1:Any,y1:Any,x2:Any,y2:Any):Any;
	//  SHARED
	/*  Gradually approaches the target value by the specified amount. */
	@:native("approach") public static function approach(current:Any,target:Any,change:Any):Any;
	//  SHARED
	/*  Calculates the difference between two points in 2D space */
	@:native("distance") public static function distance(x1:Any,y1:Any,x2:Any,y2:Any):Any;
	//  SHARED
	/*  Rounds towards zero */
	@:native("truncate") public static function truncate(val:Any,digits:Any):Any;
	//  SHARED
	/*  Converts radians to degrees */
	@:native("deg") public static function deg(rad:Any):Any;
	//  SHARED
	/*  Converts an integer to a binary (base-2) string. */
	@:native("intToBin") public static function intToBin(int:Any):Any;
	//  SHARED
	/*  Functions like math.atan(y / x), except it also takes into account the quadrant of the angle and so doesn't have a limited range of output. */
	@:native("atan2") public static function atan2(y:Any,x:Any):Any;
	//  SHARED
	/*  Picks the smallest value of all provided arguments. */
	@:native("min") public static function min(...varargs:Any):Any;
	//  SHARED
	/*  Used to split the number value into a normalized fraction and an exponent */
	@:native("frexp") public static function frexp(x:Any):Any;
	//  SHARED
	/*  Performs spherical linear interpolation between two quaternions */
	@:native("slerpQuaternion") public static function slerpQuaternion(quat1:Any,quat2:Any,t:Any):Any;
	//  SHARED
	/*  Takes a normalised number and returns the floating point representation. */
	@:native("ldexp") public static function ldexp(normalizedFraction:Any,exponent:Any):Any;
	//  SHARED
	/*  Returns the x power of the Euler constant. */
	@:native("exp") public static function exp(x:Any):Any;
	//  SHARED
	/*  When called without arguments, returns a uniform pseudo-random real number in the range 0 to 1 which includes 0 but excludes 1.
 When called with an integer number m, returns a uniform pseudo-random integer in the range 1 to m inclusive.
 When called with two integer numbers m and n, returns a uniform pseudo-random integer in the range m to n inclusive. */
	@:native("random") public static function random(m:Any,n:Any):Any;
	//  SHARED
	/*  Calculates the fraction of where the current time is relative to the start and end times. */
	@:native("timeFraction") public static function timeFraction(start:Any,end:Any,current:Any):Any;
	//  SHARED
	/*  Calculates the modulus of the specified values. */
	@:native("fmod") public static function fmod(base:Any,mod:Any):Any;
	//  SHARED
	/*  Converts an angle from degrees to radians. */
	@:native("rad") public static function rad(deg:Any):Any;
	//  SHARED
	/*  Generates a random float value that should be the same on client and server */
	@:native("sharedRandom") public static function sharedRandom(uniqueName:Any,Min:Any,Max:Any,additionalSeed:Any):Any;
	//  SHARED
	/*  Normalizes angle, so it returns value between -180 and 180. */
	@:native("normalizeAngle") public static function normalizeAngle(ang:Any):Any;
	//  SHARED
	/*  Performs normalized linear interpolation between two quaternions */
	@:native("nlerpQuaternion") public static function nlerpQuaternion(quat1:Any,quat2:Any,t:Any):Any;
	//  SHARED
	/*  Rounds a number down. */
	@:native("floor") public static function floor(n:Any):Any;
	//  SHARED
	/*  With one argument, returns the natural logarithm of x (to base e).
 With two arguments, return the logarithm of x to the given base, calculated as log(x) / log(base). */
	@:native("log") public static function log(x:Any,base:Any):Any;
	//  SHARED
	/*  Calculates the difference between two angles. */
	@:native("angleDifference") public static function angleDifference(a:Any,b:Any):Any;
	//  SHARED
	/*  Calculates point between first and second vector using given fraction and linear interpolation. */
	@:native("lerpVector") public static function lerpVector(ratio:Any,from:Any,to:Any):Any;
	//  SHARED
	/*  Clamps a number between a minimum and maximum value. */
	@:native("clamp") public static function clamp(current:Any,min:Any,max:Any):Any;
	//  SHARED
	/*  Calculates B-Spline point. */
	@:native("bSplinePoint") public static function bSplinePoint(tDiff:Any,tPoints:Any,tMax:Any):Any;
	//  SHARED
	/*  Returns the modulus of the specified values. (DEPRECATED! You should use the % operator instead) */
	@:native("mod") public static function mod(base:Any,mod:Any):Any;
	//  SHARED
	/*  Calculates the progress of a value fraction, taking in to account given easing fractions. */
	@:native("easeInOut") public static function easeInOut(progress:Any,easeIn:Any,easeOut:Any):Any;
	//  SHARED
	/*  Calculates point between first and second angle using given fraction and linear interpolation. */
	@:native("lerpAngle") public static function lerpAngle(ratio:Any,from:Any,to:Any):Any;
	//  SHARED
	/*  Calculates hyperbolic cosine of the given angle. */
	@:native("cosh") public static function cosh(angle:Any):Any;
	//  SHARED
	/* Returns x raised to the power y */
	@:native("pow") public static function pow(base:Any,exp:Any):Any;
	//  SHARED
	/*  Calculates an angle in radians, in the range -pi/2 to pi/2, which has the given sine value. */
	@:native("asin") public static function asin(sin:Any):Any;
	//  SHARED
	/*  Calculates hyperbolic tangent of the given angle. */
	@:native("tanh") public static function tanh(ang:Any):Any;
	//  SHARED
	/*  Converts a binary string into a number. */
	@:native("binToInt") public static function binToInt(sting:Any):Any;
	//  SHARED
	/*  Calculates an angle in radians, in the range -pi/2 to pi/2, which has the given tangent. */
	@:native("atan") public static function atan(tan:Any):Any;
	//  SHARED
	/*  Increments an angle towards another by specified rate. */
	@:native("approachAngle") public static function approachAngle(currentAngle:Any,targetAngle:Any,rate:Any):Any;
	//  SHARED
	/*  Calculates an angle in radians, between 0 and pi, which has the given cos value. */
	@:native("acos") public static function acos(cos:Any):Any;
	//  SHARED
	/*  Returns a random float between min and max. */
	@:native("rand") public static function rand(min:Any,max:Any):Any;
	//  SHARED
	/*  Calculates the absolute value of a number (effectively removes any negative sign). */
	@:native("abs") public static function abs(x:Any):Any;
	//  SHARED
	/*  Picks the largest value of all provided arguments. */
	@:native("max") public static function max(...varargs:Any):Any;
	//  SHARED
	/*  Calculates square root of the number. */
	@:native("sqrt") public static function sqrt(value:Any):Any;
	//  SHARED
	/*  Rounds the given value to the nearest whole number or to the given decimal places. */
	@:native("round") public static function round(value:Any,decimals:Any):Void;
	//  SHARED
	/*  Calculates the sine of given angle. */
	@:native("sin") public static function sin(ang:Any):Any;
	//  SHARED
	/*  Basic code for Bezier-Spline algorithm. */
	@:native("calcBSplineN") public static function calcBSplineN(i:Any,k:Any,t:Any,tinc:Any):Any;
	//  SHARED
	/*  Gets the distance between a line and a point in 3d space */
	@:native("distanceToLine") public static function distanceToLine(lineStart:Any,lineEnd:Any,pointPos:Any):Any;
	//  SHARED
	/*  Returns the integral and fractional component of the modulo operation. */
	@:native("modf") public static function modf(base:Any):Any;
	//  SHARED
	/*  Performs a linear interpolation from the start number to the end number. */
	@:native("lerp") public static function lerp(t:Any,from:Any,to:Any):Any;
	//  SHARED
	/*  Remaps the value from one range to another. */
	@:native("remap") public static function remap(value:Any,inMin:Any,inMax:Any,outMin:Any,outMax:Any):Any;
	//  SHARED
	/*  Calculates cosine of the given angle. */
	@:native("cos") public static function cos(angle:Any):Any;
}

