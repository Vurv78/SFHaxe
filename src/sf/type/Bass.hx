// Generated by SFHaxe 0.2.0
package sf.type;
extern class BassData {
	/**
		CLIENT
		 Stops playing the sound.
	**/
	#if CLIENT @:native("stop") public function stop():Void;#end
	/**
		CLIENT
		 Pauses the sound.
	**/
	#if CLIENT @:native("pause") public function pause():Void;#end
	/**
		CLIENT
		 Sets the fade distance of the sound in 3D space. Must have `3d` flag to get this work on.
	**/
	#if CLIENT @:native("setFade") public function setFade(min:Any, max:Any):Void;#end
	/**
		CLIENT
		 Gets the length of a sound channel.
	**/
	#if CLIENT @:native("getLength") public function getLength():Any;#end
	/**
		CLIENT
		 Sets the pitch of the sound channel.
	**/
	#if CLIENT @:native("setPitch") public function setPitch(pitch:Any):Void;#end
	/**
		CLIENT
		 Sets whether the sound channel should loop. Requires the 'noblock' flag
	**/
	#if CLIENT @:native("setLooping") public function setLooping(loop:Any):Void;#end
	/**
		CLIENT
		 Perform fast Fourier transform algorithm to compute the DFT of the sound channel.
	**/
	#if CLIENT @:native("getFFT") public function getFFT(n:Any):Any;#end
	/**
		CLIENT
		 Removes the sound from the game so new one can be created if limit is reached
	**/
	#if CLIENT @:native("destroy") public function destroy():Void;#end
	/**
		CLIENT
		 Starts to play the sound.
	**/
	#if CLIENT @:native("play") public function play():Void;#end
	/**
		CLIENT
		 Sets the volume of the sound channel.
	**/
	#if CLIENT @:native("setVolume") public function setVolume(vol:Any):Void;#end
	/**
		CLIENT
		 Gets the left and right levels of the audio channel
	**/
	#if CLIENT @:native("getLevels") public function getLevels():Any;#end
	/**
		CLIENT
		 Gets the current playback time of the sound channel. Requires the 'noblock' flag
	**/
	#if CLIENT @:native("getTime") public function getTime():Any;#end
	/**
		CLIENT
		 Sets the current playback time of the sound channel. Requires the 'noblock' flag
	**/
	#if CLIENT @:native("setTime") public function setTime(time:Any):Void;#end
	/**
		CLIENT
		 Sets the position of the sound in 3D space. Must have `3d` flag to get this work on.
	**/
	#if CLIENT @:native("setPos") public function setPos(pos:Any):Void;#end
	/**
		CLIENT
		 Gets whether the sound channel is streamed online.
	**/
	#if CLIENT @:native("isOnline") public function isOnline():Any;#end
	/**
		CLIENT
		 Gets whether the bass is valid.
	**/
	#if CLIENT @:native("isValid") public function isValid():Any;#end
}

@:forward
extern abstract Bass(BassData) {
}

