package sf.library;
@:native("notification") extern class Notification {
	/**
		CLIENT	
		 Displays a notification with an animated progress bar, will persist unless killed or chip is removed.
	**/
	@:native("addProgress") public static function addProgress(id:Any,text:Any):Void;
	/**
		CLIENT	
		 Displays a standard notification.
NOTIFY.GENERIC
NOTIFY.ERROR
NOTIFY.UNDO
NOTIFY.HINT
NOTIFY.CLEANUP
	**/
	@:native("addLegacy") public static function addLegacy(text:Any,type:Any,length:Any):Void;
	/**
		CLIENT	
		 Removes the notification with the given index after 0.8 seconds
	**/
	@:native("kill") public static function kill(id:Any):Void;
}

