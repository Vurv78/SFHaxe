package sf.library;
@:native("particleEffect") extern class ParticleEffect {
	//  CLIENT
	/*  Attaches a particleEffect to an entity. */
	@:native("attach") public static function attach(entity:Any,name:Any,pattach:Any,options:Any):Any;
}

