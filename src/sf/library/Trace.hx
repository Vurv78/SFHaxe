// Generated by SFHaxe 0.3.0
package sf.library;
@:native("trace") extern class Trace {
	/**
		SHARED
		 Does a ray plane intersection returning the position hit or nil if not hit
	**/
	@:native("intersectRayWithPlane") public static function intersectRayWithPlane(rayStart:sf.type.Vector, rayDelta:sf.type.Vector, planeOrigin:sf.type.Vector, planeNormal:sf.type.Vector):Null<sf.type.Vector>;
	/**
		SHARED
		 Does a swept-AABB trace
	**/
	@:native("traceHull") public static function traceHull(start:sf.type.Vector, endpos:sf.type.Vector, minbox:sf.type.Vector, maxbox:sf.type.Vector, ?filter:Dynamic, ?mask:Null<Float>, ?colgroup:Null<Float>, ?ignworld:Null<Bool>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Does a line trace
	**/
	@:native("trace") public static function trace(start:sf.type.Vector, endpos:sf.type.Vector, ?filter:Dynamic, ?mask:Null<Float>, ?colgroup:Null<Float>, ?ignworld:Null<Bool>):lua.Table<Dynamic,Dynamic>;
	/**
		SHARED
		 Does a ray box intersection returning the position hit, normal, and trace fraction, or nil if not hit.
	**/
	@:native("intersectRayWithOBB") public static function intersectRayWithOBB(rayStart:sf.type.Vector, rayDelta:sf.type.Vector, boxOrigin:sf.type.Vector, boxAngles:sf.type.Angle, boxMins:sf.type.Vector, boxMaxs:sf.type.Vector):Null<sf.type.Vector>;
	/**
		SHARED
		 Returns the contents of the position specified.
	**/
	@:native("pointContents") public static function pointContents(position:sf.type.Vector):Float;
	/**
		SHARED
		 Does a line trace and applies a decal to wherever is hit
	**/
	@:native("decal") public static function decal(name:std.String, start:sf.type.Vector, endpos:sf.type.Vector, ?filter:Dynamic):Void;
}

