package sf.type;
extern class VehicleData {
	/**
		SERVER
		 Returns the driver of the vehicle
	**/
	@:native("getDriver") public function getDriver():Any;
	/**
		SERVER
		 Returns a passenger of a vehicle
	**/
	@:native("getPassenger") public function getPassenger(n:Any):Any;
	/**
		SERVER
		 Ejects the driver of the vehicle
	**/
	@:native("ejectDriver") public function ejectDriver():Void;
	/**
		SERVER
		 Will unlock the vehicle.
	**/
	@:native("unlock") public function unlock():Void;
	/**
		SERVER
		 Kills the driver of the vehicle
	**/
	@:native("killDriver") public function killDriver():Void;
	/**
		SERVER
		 Will lock the vehicle preventing players from entering or exiting the vehicle.
	**/
	@:native("lock") public function lock():Void;
	/**
		SERVER
		 Strips weapons of the driver
	**/
	@:native("stripDriver") public function stripDriver(__class:Any):Void;
}

@:forward
extern abstract Vehicle(VehicleData) {
}

