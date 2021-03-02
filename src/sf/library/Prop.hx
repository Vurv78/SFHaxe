package sf.library;
@:native("prop") extern class Prop {
	/**
		SERVER	
		 Returns how many props per second the user can spawn
	**/
	@:native("spawnRate") public static function spawnRate():Any;
	/**
		SERVER	
		 Sets whether the props should be undo-able
	**/
	@:native("setPropUndo") public static function setPropUndo(on:Any):Void;
	/**
		SERVER	
		 Creates a sent.
	**/
	@:native("createSent") public static function createSent(pos:Any,ang:Any,__class:Any,frozen:Any,data:Any):Any;
	/**
		SERVER	
		 Creates a prop
	**/
	@:native("create") public static function create(pos:Any,ang:Any,model:Any,frozen:Any):Any;
	/**
		SERVER	
		 Creates starfall component
 Allowed components:
 starfall_hud
 starfall_screen
	**/
	@:native("createComponent") public static function createComponent(pos:Any,ang:Any,__class:Any,model:Any,frozen:Any):Any;
	/**
		SERVER	
		 Checks how many props can be spawned
	**/
	@:native("propsLeft") public static function propsLeft():Any;
	/**
		SERVER	
		 Checks if a user can spawn anymore props.
	**/
	@:native("canSpawn") public static function canSpawn():Any;
	/**
		SERVER	
		 Sets whether the chip should remove created props when the chip is removed
	**/
	@:native("setPropClean") public static function setPropClean(on:Any):Void;
	/**
		SERVER	
		 Creates a custom prop.
	**/
	@:native("createCustom") public static function createCustom(pos:Any,ang:Any,vertices:Any,frozen:Any):Any;
	/**
		SERVER	
		 Get a list of all spawnable sents.
	**/
	@:native("getSpawnableSents") public static function getSpawnableSents(categorized:Any):Any;
	/**
		SERVER	
		 Creates a ragdoll
	**/
	@:native("createRagdoll") public static function createRagdoll(model:Any,frozen:Any):Any;
}

