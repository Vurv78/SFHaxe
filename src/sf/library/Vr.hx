package sf.library;
@:native("vr") extern class Vr {
	/**
		SHARED	
		 returns the HMD angles
	**/
	@:native("getHMDAng") public static function getHMDAng(target:Any):Any;
	/**
		SHARED	
		 Checks wether the player is in VR
	**/
	@:native("isPlayerInVR") public static function isPlayerInVR(target:Any):Any;
	/**
		CLIENT	
		 returns the HMD velocities, position and angular
	**/
	@:native("getHMDVelocities") public static function getHMDVelocities():Any;
	/**
		CLIENT	
		 returns the playspace position and angles
	**/
	@:native("getOrigin") public static function getOrigin():Any;
	/**
		SHARED	
		 returns the HMD position
	**/
	@:native("getHMDPos") public static function getHMDPos(target:Any):Any;
	/**
		CLIENT	
		 returns the HMD velocity
	**/
	@:native("getHMDVelocity") public static function getHMDVelocity():Any;
	/**
		SHARED	
		 returns the left hand position
	**/
	@:native("getLeftHandPos") public static function getLeftHandPos(target:Any):Any;
	/**
		SHARED	
		 returns the HMD pose
	**/
	@:native("getHMDPose") public static function getHMDPose(target:Any):Any;
	/**
		CLIENT	
		 returns the left hand velocity
	**/
	@:native("getLeftHandVelocity") public static function getLeftHandVelocity():Any;
	/**
		CLIENT	
		 returns position of the eye that is currently being used for rendering.
	**/
	@:native("getEyePos") public static function getEyePos():Any;
	/**
		CLIENT	
		 returns position of the left eye
	**/
	@:native("getLeftEyePos") public static function getLeftEyePos():Any;
	/**
		CLIENT	
		 returns the right hand angular velocity
	**/
	@:native("getRightHandAngularVelocity") public static function getRightHandAngularVelocity():Any;
	/**
		CLIENT	
		 returns the left hand velocities, position and angular
	**/
	@:native("getLeftHandVelocities") public static function getLeftHandVelocities():Any;
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
		CLIENT	
		 returns the a controller's input state, may return boolean, number or vector.
	**/
	@:native("getInput") public static function getInput(actionname:Any):Any;
	/**
		CLIENT	
		 returns the right hand velocity
	**/
	@:native("getRightHandVelocity") public static function getRightHandVelocity():Any;
	/**
		CLIENT	
		 returns position of the right eye
	**/
	@:native("getRightEyePos") public static function getRightEyePos():Any;
	/**
		CLIENT	
		 returns the right hand velocities, position and angular
	**/
	@:native("getRightHandVelocities") public static function getRightHandVelocities():Any;
	/**
		SHARED	
		 returns the left hand pose
	**/
	@:native("getRightHandPose") public static function getRightHandPose(target:Any):Any;
	/**
		CLIENT	
		 returns the playspace position
	**/
	@:native("getOriginPos") public static function getOriginPos():Any;
	/**
		CLIENT	
		 returns the left hand angular velocity
	**/
	@:native("getLeftHandAngularVelocity") public static function getLeftHandAngularVelocity():Any;
	/**
		SHARED	
		 returns the left hand pose
	**/
	@:native("getLeftHandPose") public static function getLeftHandPose(target:Any):Any;
	/**
		SHARED	
		 returns the right hand position
	**/
	@:native("getRightHandPos") public static function getRightHandPos(target:Any):Any;
	/**
		CLIENT	
		 returns the HMD angular velocity
	**/
	@:native("getHMDAngularVelocity") public static function getHMDAngularVelocity():Any;
	/**
		SHARED	
		 Checks wether the player is using empty hands
	**/
	@:native("usingEmptyHands") public static function usingEmptyHands(target:Any):Any;
	/**
		CLIENT	
		 returns the playspace angles
	**/
	@:native("getOriginAng") public static function getOriginAng():Any;
}

