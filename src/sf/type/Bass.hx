// Generated by SFHaxe 0.3.0
package sf.type;
extern class BassData {
	/**
		CLIENT
		 Gets whether the bass is valid.
	**/
	#if CLIENT @:native("isValid") public function isValid():Bool;#end
	/**
		CLIENT
		 Sets the position of the sound in 3D space. Must have `3d` flag to get this work on.
	**/
	#if CLIENT @:native("setPos") public function setPos(pos:sf.type.Vector):Void;#end
	/**
		CLIENT
		 Stops playing the sound.
	**/
	#if CLIENT @:native("stop") public function stop():Void;#end
	/**
		CLIENT
		 Gets the current playback time of the sound channel. Requires the 'noblock' flag
	**/
	#if CLIENT @:native("getTime") public function getTime():Float;#end
	/**
		CLIENT
		 Starts to play the sound.
	**/
	#if CLIENT @:native("play") public function play():Void;#end
	/**
		CLIENT
		 Gets the left and right levels of the audio channel
	**/
	#if CLIENT @:native("getLevels") public function getLevels():Float;#end
	/**
		CLIENT
		 Returns the average bit rate of the sound channel.
	**/
	#if CLIENT @:native("getAverageBitRate") public function getAverageBitRate():Float;#end
	/**
		CLIENT
		 Pauses the sound.
	**/
	#if CLIENT @:native("pause") public function pause():Void;#end
	/**
		CLIENT
		 Gets the relative volume between the left and right audio channels.
	**/
	#if CLIENT @:native("getPan") public function getPan():Float;#end
	/**
		CLIENT
		 Removes the sound from the game so new one can be created if limit is reached
	**/
	#if CLIENT @:native("destroy") public function destroy():Void;#end
	/**
		CLIENT
		 Retrieves the number of bits per sample of the sound channel.
		 Doesn't work for mp3 and ogg files.
	**/
	#if CLIENT @:native("getBitsPerSample") public function getBitsPerSample():Float;#end
	/**
		CLIENT
		 Sets the relative volume of the left and right channels.
	**/
	#if CLIENT @:native("setPan") public function setPan(Relative:Float):Void;#end
	/**
		CLIENT
		 Sets the volume of the sound channel.
	**/
	#if CLIENT @:native("setVolume") public function setVolume(vol:Float):Void;#end
	/**
		CLIENT
		 Sets whether the sound channel should loop. Requires the 'noblock' flag
	**/
	#if CLIENT @:native("setLooping") public function setLooping(loop:Bool):Void;#end
	/**
		CLIENT
		 Gets the length of a sound channel.
	**/
	#if CLIENT @:native("getLength") public function getLength():Float;#end
	/**
		CLIENT
		 Gets whether the sound channel is streamed online.
	**/
	#if CLIENT @:native("isOnline") public function isOnline():Bool;#end
	/**
		CLIENT
		 Sets the fade distance of the sound in 3D space. Must have `3d` flag to get this work on.
	**/
	#if CLIENT @:native("setFade") public function setFade(min:Float, max:Float):Void;#end
	/**
		CLIENT
		 Sets the pitch of the sound channel.
	**/
	#if CLIENT @:native("setPitch") public function setPitch(pitch:Float):Void;#end
	/**
		CLIENT
		 Perform fast Fourier transform algorithm to compute the DFT of the sound channel.
	**/
	#if CLIENT @:native("getFFT") public function getFFT(n:Float):lua.Table<Dynamic,Dynamic>;#end
	/**
		CLIENT
		 Sets the current playback time of the sound channel. Requires the 'noblock' flag
	**/
	#if CLIENT @:native("setTime") public function setTime(time:Float):Void;#end
}

@:forward
extern abstract Bass(BassData) {
}

