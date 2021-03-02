package sf.library;
@:native("trace") extern class Trace {
	/**
		SHARED
		 Does a ray plane intersection returning the position hit or nil if not hit
	**/
	@:native("intersectRayWithPlane") public static function intersectRayWithPlane(rayStart:Any,rayDelta:Any,planeOrigin:Any,planeNormal:Any):Any;
	/**
		SHARED
		 Does a swept-AABB trace
	**/
	@:native("traceHull") public static function traceHull(start:Any,endpos:Any,minbox:Any,maxbox:Any,filter:Any,mask:Any,colgroup:Any,ignworld:Any):Any;
	/**
		SHARED
		 Does a line trace
	**/
	@:native("trace") public static function trace(start:Any,endpos:Any,filter:Any,mask:Any,colgroup:Any,ignworld:Any):Any;
	/**
		SHARED
		 Does a ray box intersection returning the position hit, normal, and trace fraction, or nil if not hit.
	**/
	@:native("intersectRayWithOBB") public static function intersectRayWithOBB(rayStart:Any,rayDelta:Any,boxOrigin:Any,boxAngles:Any,boxMins:Any,boxMaxs:Any):Any;
	/**
		SHARED
		 Returns the contents of the position specified.
	**/
	@:native("pointContents") public static function pointContents(position:Any):Any;
	/**
		SHARED
		 Does a line trace and applies a decal to wherever is hit
	**/
	@:native("decal") public static function decal(name:Any,start:Any,endpos:Any,filter:Any):Void;
}

