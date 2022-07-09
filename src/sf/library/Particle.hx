// Generated by SFHaxe 0.3.3
package sf.library;
@:native("particle") extern class Particle {
	/**
		CLIENT
		Creates a ParticleEmitter data structure
	**/
	#if CLIENT @:native("create") public static function create(position:sf.type.Vector, use3D:Bool):sf.type.ParticleEmitter;#end
	/**
		CLIENT
		Returns number of particle emitters left able to be created
	**/
	#if CLIENT @:native("particleEmittersLeft") public static function particleEmittersLeft():Float;#end
}

