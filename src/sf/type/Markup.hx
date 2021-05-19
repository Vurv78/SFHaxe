// Generated by SFHaxe 0.3.2
package sf.type;
extern class MarkupData {
	/**
		CLIENT
		 Get the object width
	**/
	#if CLIENT @:native("getWidth") public function getWidth():Float;#end
	/**
		CLIENT
		 Draw the markup object
	**/
	#if CLIENT @:native("draw") public function draw(x:Float, y:Float, ?xalign:Null<Float>, ?yalign:Null<Float>, ?alpha:Null<Float>):Void;#end
	/**
		CLIENT
		 Get the object height
	**/
	#if CLIENT @:native("getHeight") public function getHeight():Float;#end
	/**
		CLIENT
		 Get the object size
	**/
	#if CLIENT @:native("getSize") public function getSize():Float;#end
}

@:forward
extern abstract Markup(MarkupData) {
}

