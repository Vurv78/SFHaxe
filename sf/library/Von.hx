package sf.library;
@:native("von") extern class Von {
	//  SHARED
	/*  Serialize a table */
	@:native("serialize") public static function serialize(tbl:Any):Any;
	//  SHARED
	/*  Deserialize a string */
	@:native("deserialize") public static function deserialize(str:Any):Any;
}
