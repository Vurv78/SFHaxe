// Generated by SFHaxe 0.3.2
package sf.library;
@:native("particleEffect") extern class ParticleEffect {
	/**
		CLIENT
		 Attaches a particleEffect to an entity.
	**/
	#if CLIENT @:native("attach") public static function attach(entity:sf.type.Entity, name:std.String, pattach:Float, options:lua.Table<Dynamic,Dynamic>):sf.type.ParticleEffect;#end
}

