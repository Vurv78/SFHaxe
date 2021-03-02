package sf.type;
extern class Sound {
	/**
		SHARED	
		 Stops the sound from being played.
	**/
	@:native("stop") public function stop(fade:Any):Void;
	/**
		SHARED	
		 Sets the volume of the sound. Won't work unless the sound is playing.
	**/
	@:native("setVolume") public function setVolume(vol:Any,fade:Any):Void;
	/**
		SHARED	
		 Removes the sound from the game so new one can be created if limit is reached
	**/
	@:native("destroy") public function destroy():Void;
	/**
		SHARED	
		 Sets the pitch of the sound. Won't work unless the sound is playing.
	**/
	@:native("setPitch") public function setPitch(pitch:Any,fade:Any):Void;
	/**
		SHARED	
		 Starts to play the sound.
	**/
	@:native("play") public function play():Void;
	/**
		SHARED	
		 Sets the sound level in dB. Won't work unless the sound is playing.
	**/
	@:native("setSoundLevel") public function setSoundLevel(level:Any):Void;
	/**
		SHARED	
		 Returns whether the sound is being played.
	**/
	@:native("isPlaying") public function isPlaying():Void;
}

