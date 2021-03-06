// Generated by SFHaxe 0.2.0
package sf.library;
@:native("vr") extern class Vr {
	/**
		SHARED
		 returns the HMD angles
	**/
	@:native("getHMDAng") public static function getHMDAng(target:Any):Any;
	/**
		CLIENT
		 returns the a controller's input state, may return boolean, number or vector.
	**/
	#if CLIENT @:native("getInput") public static function getInput(actionname:Any):Any;#end
	/**
		CLIENT
		 returns the HMD velocities, position and angular
	**/
	#if CLIENT @:native("getHMDVelocities") public static function getHMDVelocities():Any;#end
	/**
		CLIENT
		 returns the playspace position and angles
	**/
	#if CLIENT @:native("getOrigin") public static function getOrigin():Any;#end
	/**
		SHARED
		 returns the HMD position
	**/
	@:native("getHMDPos") public static function getHMDPos(target:Any):Any;
	/**
		CLIENT
		 returns the HMD velocity
	**/
	#if CLIENT @:native("getHMDVelocity") public static function getHMDVelocity():Any;#end
	/**
		SHARED
		 Checks wether the player is in VR
	**/
	@:native("isPlayerInVR") public static function isPlayerInVR(target:Any):Any;
	/**
		SHARED
		 returns the HMD pose
	**/
	@:native("getHMDPose") public static function getHMDPose(target:Any):Any;
	/**
		SHARED
		 Checks wether the player is using empty hands
	**/
	@:native("usingEmptyHands") public static function usingEmptyHands(target:Any):Any;
	/**
		CLIENT
		 returns position of the eye that is currently being used for rendering.
	**/
	#if CLIENT @:native("getEyePos") public static function getEyePos():Any;#end
	/**
		CLIENT
		 returns position of the left eye
	**/
	#if CLIENT @:native("getLeftEyePos") public static function getLeftEyePos():Any;#end
	/**
		CLIENT
		 returns the right hand angular velocity
	**/
	#if CLIENT @:native("getRightHandAngularVelocity") public static function getRightHandAngularVelocity():Any;#end
	/**
		CLIENT
		 returns the left hand velocities, position and angular
	**/
	#if CLIENT @:native("getLeftHandVelocities") public static function getLeftHandVelocities():Any;#end
	/**
		SHARED
		 returns the left hand angles
	**/
	@:native("getRightHandAng") public static function getRightHandAng(target:Any):Any;
	/**
		SHARED
		 returns the left hand angles
	**/
	@:native("getLeftHandAng") public static function getLeftHandAng(target:Any):Any;
	/**
		SHARED
		 returns the left hand pose
	**/
	@:native("getLeftHandPose") public static function getLeftHandPose(target:Any):Any;
	/**
		CLIENT
		 returns the right hand velocity
	**/
	#if CLIENT @:native("getRightHandVelocity") public static function getRightHandVelocity():Any;#end
	/**
		CLIENT
		 returns position of the right eye
	**/
	#if CLIENT @:native("getRightEyePos") public static function getRightEyePos():Any;#end
	/**
		CLIENT
		 returns the playspace position
	**/
	#if CLIENT @:native("getOriginPos") public static function getOriginPos():Any;#end
	/**
		SHARED
		 returns the left hand pose
	**/
	@:native("getRightHandPose") public static function getRightHandPose(target:Any):Any;
	/**
		CLIENT
		 returns the right hand velocities, position and angular
	**/
	#if CLIENT @:native("getRightHandVelocities") public static function getRightHandVelocities():Any;#end
	/**
		CLIENT
		 returns the left hand angular velocity
	**/
	#if CLIENT @:native("getLeftHandAngularVelocity") public static function getLeftHandAngularVelocity():Any;#end
	/**
		SHARED
		 returns the left hand position
	**/
	@:native("getLeftHandPos") public static function getLeftHandPos(target:Any):Any;
	/**
		SHARED
		 returns the right hand position
	**/
	@:native("getRightHandPos") public static function getRightHandPos(target:Any):Any;
	/**
		CLIENT
		 returns the HMD angular velocity
	**/
	#if CLIENT @:native("getHMDAngularVelocity") public static function getHMDAngularVelocity():Any;#end
	/**
		CLIENT
		 returns the left hand velocity
	**/
	#if CLIENT @:native("getLeftHandVelocity") public static function getLeftHandVelocity():Any;#end
	/**
		CLIENT
		 returns the playspace angles
	**/
	#if CLIENT @:native("getOriginAng") public static function getOriginAng():Any;#end
}

