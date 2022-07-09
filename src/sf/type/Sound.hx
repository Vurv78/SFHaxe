// Generated by SFHaxe 0.3.3
package sf.type;
extern class SoundData {
	/**
		SHARED
		Sets the sound dsp
	**/
	@:native("setDSP") public function setDSP(dsp:Float):Void;
	/**
		SHARED
		Stops the sound from being played.
	**/
	@:native("stop") public function stop(?fade:Null<Float>):Void;
	/**
		SHARED
		Gets the sound dsp
	**/
	@:native("getDSP") public function getDSP():Float;
	/**
		SHARED
		Sets the volume of the sound. Won't work unless the sound is playing.
	**/
	@:native("setVolume") public function setVolume(vol:Float, ?fade:Null<Float>):Void;
	/**
		SHARED
		Removes the sound from the game so new one can be created if limit is reached
	**/
	@:native("destroy") public function destroy():Void;
	/**
		SHARED
		Starts to play the sound.
	**/
	@:native("play") public function play():Void;
	/**
		SHARED
		Returns whether the sound is being played.
	**/
	@:native("isPlaying") public function isPlaying():Bool;
	/**
		SHARED
		Sets the sound level in dB. Won't work unless the sound is playing.
	**/
	@:native("setSoundLevel") public function setSoundLevel(level:Float):Void;
	/**
		SHARED
		Sets the pitch of the sound. Won't work unless the sound is playing.
	**/
	@:native("setPitch") public function setPitch(pitch:Float, ?fade:Null<Float>):Void;
}

@:forward
extern abstract Sound(SoundData) {
}

