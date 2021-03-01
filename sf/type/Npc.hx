package sf.type;
extern class Npc {
	//  SERVER
	/*  Stops the npc */
	@:native("stop") public function stop():Void;
	//  SERVER
	/*  Makes the npc run to a destination */
	@:native("goRun") public function goRun(vec:Any):Void;
	//  SERVER
	/*  Makes the npc do a ranged attack */
	@:native("attackRange") public function attackRange():Void;
	//  SERVER
	/*  Adds a relationship to the npc */
	@:native("addRelationship") public function addRelationship(str:Any):Void;
	//  SERVER
	/*  Gives the npc a weapon */
	@:native("giveWeapon") public function giveWeapon(wep:Any):Void;
	//  SERVER
	/*  Makes the npc do a melee attack */
	@:native("attackMelee") public function attackMelee():Void;
	//  SERVER
	/*  Tell the npc to fight this */
	@:native("setEnemy") public function setEnemy(ent:Any):Void;
	//  SERVER
	/*  Adds a relationship to the npc with an entity */
	@:native("addEntityRelationship") public function addEntityRelationship(ent:Any,disp:Any,priority:Any):Void;
	//  SERVER
	/*  Gets the npc's relationship to the target */
	@:native("getRelationship") public function getRelationship(ent:Any):Any;
	//  SERVER
	/*  Makes the npc walk to a destination */
	@:native("goWalk") public function goWalk(vec:Any):Void;
	//  SERVER
	/*  Gets what the npc is fighting */
	@:native("getEnemy") public function getEnemy():Any;
}

