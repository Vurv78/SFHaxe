package sf.library;
@:native("input") extern class Input {
	/**
		CLIENT
		 Gets whether the player's control is currenty locked
	**/
	@:native("isControlLocked") public static function isControlLocked():Any;
	/**
		CLIENT
		 Gets whether a key is down
	**/
	@:native("isKeyDown") public static function isKeyDown(key:Any):Any;
	/**
		CLIENT
		 Sets the state of the mouse cursor
	**/
	@:native("enableCursor") public static function enableCursor(enabled:Any):Void;
	/**
		CLIENT
		 Gets whether the shift key is down
	**/
	@:native("isShiftDown") public static function isShiftDown():Any;
	/**
		CLIENT
		 Locks game controls for typing purposes. Alt will unlock the controls. Has a 10 second cooldown.
	**/
	@:native("lockControls") public static function lockControls(enabled:Any):Void;
	/**
		CLIENT
		Translates position on player's screen to aim vector
	**/
	@:native("screenToVector") public static function screenToVector(x:Any,y:Any):Any;
	/**
		CLIENT
		 Gets the name of a key from the id
	**/
	@:native("getKeyName") public static function getKeyName(key:Any):Any;
	/**
		CLIENT
		 Gets whether the cursor is visible on the screen
	**/
	@:native("getCursorVisible") public static function getCursorVisible():Any;
	/**
		CLIENT
		 Gets whether the control key is down
	**/
	@:native("isControlDown") public static function isControlDown():Any;
	/**
		CLIENT
		 Gets whether the player's control can be locked
	**/
	@:native("canLockControls") public static function canLockControls():Any;
	/**
		CLIENT
		 Gets the position of the mouse
	**/
	@:native("getCursorPos") public static function getCursorPos():Any;
	/**
		CLIENT
		 Makes the local player select a weapon
	**/
	@:native("selectWeapon") public static function selectWeapon(weapon:Any):Void;
	/**
		CLIENT
		 Gets whether a mouse button is down
	**/
	@:native("isMouseDown") public static function isMouseDown(key:Any):Any;
	/**
		CLIENT
		 Gets the first key that is bound to the command passed
	**/
	@:native("lookupBinding") public static function lookupBinding(binding:Any):Any;
}

