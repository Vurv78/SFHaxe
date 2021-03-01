package sf.type;
extern class Weapon {
	//  SHARED
	/*  Gets the next time the weapon can secondary fire. */
	@:native("getNextSecondaryFire") public function getNextSecondaryFire():Any;
	//  SHARED
	/*  Returns the time since a weapon was last fired at a float variable */
	@:native("lastShootTime") public function lastShootTime():Any;
	//  SHARED
	/*  Returns Ammo in primary clip */
	@:native("clip1") public function clip1():Any;
	//  SHARED
	/*  Returns Maximum ammo in primary clip */
	@:native("maxClip1") public function maxClip1():Any;
	//  SHARED
	/*  Returns the sequence enumeration number that the weapon is playing. Must be used on a view model. */
	@:native("getActivity") public function getActivity():Any;
	//  SHARED
	/*  Returns Maximum ammo in secondary clip */
	@:native("maxClip2") public function maxClip2():Any;
	//  SHARED
	/*  Gets the next time the weapon can primary fire. */
	@:native("getNextPrimaryFire") public function getNextPrimaryFire():Any;
	//  CLIENT
	/*  Returns if the weapon is carried by the local player. */
	@:native("isCarriedByLocalPlayer") public function isCarriedByLocalPlayer():Any;
	//  CLIENT
	/*  Gets Display name of weapon */
	@:native("getPrintName") public function getPrintName():Any;
	//  SHARED
	/*  Returns the tool mode of the toolgun */
	@:native("getToolMode") public function getToolMode():Any;
	//  SHARED
	/*  Gets the secondary ammo type of the given weapon. */
	@:native("getSecondaryAmmoType") public function getSecondaryAmmoType():Any;
	//  SHARED
	/*  Returns Ammo in secondary clip */
	@:native("clip2") public function clip2():Any;
	//  SHARED
	/*  Returns whether the weapon is visible */
	@:native("isWeaponVisible") public function isWeaponVisible():Any;
	//  SHARED
	/*  Returns the hold type of the weapon. */
	@:native("getHoldType") public function getHoldType():Any;
	//  SHARED
	/*  Gets the primary ammo type of the given weapon. */
	@:native("getPrimaryAmmoType") public function getPrimaryAmmoType():Any;
}

