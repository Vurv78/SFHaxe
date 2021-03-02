package sf.type;
extern class BassData {
	/**
		CLIENT
		 Stops playing the sound.
	**/
	@:native("stop") public function stop():Void;
	/**
		CLIENT
		 Sets the pitch of the sound channel.
	**/
	@:native("setPitch") public function setPitch(pitch:Any):Void;
	/**
		CLIENT
		 Sets the fade distance of the sound in 3D space. Must have `3d` flag to get this work on.
	**/
	@:native("setFade") public function setFade(min:Any,max:Any):Void;
	/**
		CLIENT
		 Gets the length of a sound channel.
	**/
	@:native("getLength") public function getLength():Any;
	/**
		CLIENT
		 Pauses the sound.
	**/
	@:native("pause") public function pause():Void;
	/**
		CLIENT
		 Sets whether the sound channel should loop. Requires the 'noblock' flag
	**/
	@:native("setLooping") public function setLooping(loop:Any):Void;
	/**
		CLIENT
		 Perform fast Fourier transform algorithm to compute the DFT of the sound channel.
	**/
	@:native("getFFT") public function getFFT(n:Any):Any;
	/**
		CLIENT
		 Removes the sound from the game so new one can be created if limit is reached
	**/
	@:native("destroy") public function destroy():Void;
	/**
		CLIENT
		 Sets the position of the sound in 3D space. Must have `3d` flag to get this work on.
	**/
	@:native("setPos") public function setPos(pos:Any):Void;
	/**
		CLIENT
		 Sets the current playback time of the sound channel. Requires the 'noblock' flag
	**/
	@:native("setTime") public function setTime(time:Any):Void;
	/**
		CLIENT
		 Gets the left and right levels of the audio channel
	**/
	@:native("getLevels") public function getLevels():Any;
	/**
		CLIENT
		 Gets the current playback time of the sound channel. Requires the 'noblock' flag
	**/
	@:native("getTime") public function getTime():Any;
	/**
		CLIENT
		 Sets the volume of the sound channel.
	**/
	@:native("setVolume") public function setVolume(vol:Any):Void;
	/**
		CLIENT
		 Starts to play the sound.
	**/
	@:native("play") public function play():Void;
	/**
		CLIENT
		 Gets whether the sound channel is streamed online.
	**/
	@:native("isOnline") public function isOnline():Any;
	/**
		CLIENT
		 Gets whether the bass is valid.
	**/
	@:native("isValid") public function isValid():Any;
}

@:forward
extern abstract Bass(BassData) {
}

