// Generated by SFHaxe 0.3.3
package sf.library;
@:native("vr") extern class Vr {
	/**
		CLIENT
		Returns the left hand angular velocity
	**/
	#if CLIENT @:native("getLeftHandAngularVelocity") public static function getLeftHandAngularVelocity():sf.type.Vector;#end
	/**
		CLIENT
		Returns the right hand velocities, position and angular
	**/
	#if CLIENT @:native("getRightHandVelocities") public static function getRightHandVelocities():sf.type.Vector;#end
	/**
		CLIENT
		Returns the right hand velocity
	**/
	#if CLIENT @:native("getRightHandVelocity") public static function getRightHandVelocity():sf.type.Vector;#end
	/**
		CLIENT
		Returns the right hand angular velocity
	**/
	#if CLIENT @:native("getRightHandAngularVelocity") public static function getRightHandAngularVelocity():sf.type.Vector;#end
	/**
		CLIENT
		Returns position of the eye that is currently being used for rendering.
	**/
	#if CLIENT @:native("getEyePos") public static function getEyePos():sf.type.Vector;#end
	/**
		CLIENT
		Returns position of the right eye
	**/
	#if CLIENT @:native("getRightEyePos") public static function getRightEyePos():sf.type.Vector;#end
	/**
		CLIENT
		Returns the playspace position and angles
	**/
	#if CLIENT @:native("getOrigin") public static function getOrigin():sf.type.Vector;#end
	/**
		SHARED
		Returns the left hand pose
	**/
	@:native("getLeftHandPose") public static function getLeftHandPose(target:sf.type.Player):sf.type.Vector;
	/**
		SHARED
		Returns the left hand angles
	**/
	@:native("getLeftHandAng") public static function getLeftHandAng(target:sf.type.Player):sf.type.Angle;
	/**
		CLIENT
		Returns the playspace position
	**/
	#if CLIENT @:native("getOriginPos") public static function getOriginPos():sf.type.Vector;#end
	/**
		CLIENT
		Returns the HMD velocities, position and angular
	**/
	#if CLIENT @:native("getHMDVelocities") public static function getHMDVelocities():sf.type.Vector;#end
	/**
		CLIENT
		Returns the left hand velocity
	**/
	#if CLIENT @:native("getLeftHandVelocity") public static function getLeftHandVelocity():sf.type.Vector;#end
	/**
		SHARED
		Returns the left hand pose
	**/
	@:native("getRightHandPose") public static function getRightHandPose(target:sf.type.Player):sf.type.Vector;
	/**
		CLIENT
		Returns the left hand velocities, position and angular
	**/
	#if CLIENT @:native("getLeftHandVelocities") public static function getLeftHandVelocities():sf.type.Vector;#end
	/**
		SHARED
		Checks whether the player is in VR
	**/
	@:native("isPlayerInVR") public static function isPlayerInVR(target:sf.type.Player):Bool;
	/**
		CLIENT
		Returns the playspace angles
	**/
	#if CLIENT @:native("getOriginAng") public static function getOriginAng():sf.type.Angle;#end
	/**
		SHARED
		Checks whether the player is using empty hands
	**/
	@:native("usingEmptyHands") public static function usingEmptyHands(target:sf.type.Player):Bool;
	/**
		SHARED
		Returns the Head Mounted Device position
	**/
	@:native("getHMDPos") public static function getHMDPos(target:sf.type.Player):sf.type.Vector;
	/**
		SHARED
		Returns the right hand position
	**/
	@:native("getRightHandPos") public static function getRightHandPos(target:sf.type.Player):sf.type.Vector;
	/**
		CLIENT
		Returns the a controller's input state, may return boolean, number or vector.
	**/
	#if CLIENT @:native("getInput") public static function getInput(actionname:std.String):Dynamic;#end
	/**
		CLIENT
		Returns position of the left eye
	**/
	#if CLIENT @:native("getLeftEyePos") public static function getLeftEyePos():sf.type.Vector;#end
	/**
		CLIENT
		Returns the HMD velocity
	**/
	#if CLIENT @:native("getHMDVelocity") public static function getHMDVelocity():sf.type.Vector;#end
	/**
		CLIENT
		Returns the HMD angular velocity
	**/
	#if CLIENT @:native("getHMDAngularVelocity") public static function getHMDAngularVelocity():sf.type.Vector;#end
	/**
		SHARED
		Returns the Head Mounted Device angles
	**/
	@:native("getHMDAng") public static function getHMDAng(target:sf.type.Player):sf.type.Angle;
	/**
		SHARED
		Returns the left hand angles
	**/
	@:native("getRightHandAng") public static function getRightHandAng(target:sf.type.Player):sf.type.Angle;
	/**
		SHARED
		Returns the left hand position
	**/
	@:native("getLeftHandPos") public static function getLeftHandPos(target:sf.type.Player):sf.type.Vector;
	/**
		SHARED
		Returns the HMD pose
	**/
	@:native("getHMDPose") public static function getHMDPose(target:sf.type.Player):sf.type.Vector;
}

