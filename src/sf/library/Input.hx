// Generated by SFHaxe 0.2.0
package sf.library;
@:native("input") extern class Input {
	/**
		CLIENT
		 Gets whether the player's control is currenty locked
	**/
	#if CLIENT @:native("isControlLocked") public static function isControlLocked():Any;#end
	/**
		CLIENT
		 Gets whether a key is down
	**/
	#if CLIENT @:native("isKeyDown") public static function isKeyDown(key:Any):Any;#end
	/**
		CLIENT
		 Sets the state of the mouse cursor
	**/
	#if CLIENT @:native("enableCursor") public static function enableCursor(enabled:Any):Void;#end
	/**
		CLIENT
		 Gets whether the cursor is visible on the screen
	**/
	#if CLIENT @:native("getCursorVisible") public static function getCursorVisible():Any;#end
	/**
		CLIENT
		 Locks game controls for typing purposes. Alt will unlock the controls. Has a 10 second cooldown.
	**/
	#if CLIENT @:native("lockControls") public static function lockControls(enabled:Any):Void;#end
	/**
		CLIENT
		Translates position on player's screen to aim vector
	**/
	#if CLIENT @:native("screenToVector") public static function screenToVector(x:Any, y:Any):Any;#end
	/**
		CLIENT
		 Gets the name of a key from the id
	**/
	#if CLIENT @:native("getKeyName") public static function getKeyName(key:Any):Any;#end
	/**
		CLIENT
		 Gets whether the shift key is down
	**/
	#if CLIENT @:native("isShiftDown") public static function isShiftDown():Any;#end
	/**
		CLIENT
		 Gets whether a mouse button is down
	**/
	#if CLIENT @:native("isMouseDown") public static function isMouseDown(key:Any):Any;#end
	/**
		CLIENT
		 Gets whether the player's control can be locked
	**/
	#if CLIENT @:native("canLockControls") public static function canLockControls():Any;#end
	/**
		CLIENT
		 Gets the position of the mouse
	**/
	#if CLIENT @:native("getCursorPos") public static function getCursorPos():Any;#end
	/**
		CLIENT
		 Makes the local player select a weapon
	**/
	#if CLIENT @:native("selectWeapon") public static function selectWeapon(weapon:Any):Void;#end
	/**
		CLIENT
		 Gets whether the control key is down
	**/
	#if CLIENT @:native("isControlDown") public static function isControlDown():Any;#end
	/**
		CLIENT
		 Gets the first key that is bound to the command passed
	**/
	#if CLIENT @:native("lookupBinding") public static function lookupBinding(binding:Any):Any;#end
}

