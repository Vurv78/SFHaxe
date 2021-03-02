package sf.library;
@:native("constraint") extern class Constraint {
	/**
		SERVER	
		 Creates a rope between two entities
	**/
	@:native("rope") public static function rope(index:Any,e1:Any,e2:Any,bone1:Any,bone2:Any,v1:Any,v2:Any,length:Any,addlength:Any,force_lim:Any,width:Any,material:Any,rigid:Any):Void;
	/**
		SERVER	
		 Ballsocket two entities together. For more options, see constraint.ballsocketadv
	**/
	@:native("ballsocket") public static function ballsocket(e1:Any,e2:Any,bone1:Any,bone2:Any,pos:Any,force_lim:Any,torque_lim:Any,nocollide:Any):Void;
	/**
		SERVER	
		 Sets the length of a rope attached to the entity
	**/
	@:native("setRopeLength") public static function setRopeLength(index:Any,e:Any,length:Any):Void;
	/**
		SERVER	
		 Checks how many constraints can be spawned
	**/
	@:native("constraintsLeft") public static function constraintsLeft():Any;
	/**
		SERVER	
		 Axis two entities. v1 in e1's coordinates and v2 in e2's coodinates (or laxis in e1's coordinates again) define the axis
	**/
	@:native("axis") public static function axis(e1:Any,e2:Any,bone1:Any,bone2:Any,v1:Any,v2:Any,force_lim:Any,torque_lim:Any,friction:Any,nocollide:Any,laxis:Any):Void;
	/**
		SERVER	
		 Sliders two entities
	**/
	@:native("slider") public static function slider(e1:Any,e2:Any,bone1:Any,bone2:Any,v1:Any,v2:Any,width:Any):Void;
	/**
		SERVER	
		 Sets whether the chip should remove created constraints when the chip is removed
	**/
	@:native("setConstraintClean") public static function setConstraintClean(on:Any):Void;
	/**
		SERVER	
		 Ballsocket two entities together with more options
	**/
	@:native("ballsocketadv") public static function ballsocketadv(e1:Any,e2:Any,bone1:Any,bone2:Any,v1:Any,v2:Any,force_lim:Any,torque_lim:Any,minv:Any,maxv:Any,frictionv:Any,rotateonly:Any,nocollide:Any):Void;
	/**
		SERVER	
		 Welds two entities
	**/
	@:native("weld") public static function weld(e1:Any,e2:Any,bone1:Any,bone2:Any,force_lim:Any,nocollide:Any):Void;
	/**
		SERVER	
		 Breaks all constraints of a certain type on an entity
	**/
	@:native("breakType") public static function breakType(e:Any,typename:Any):Void;
	/**
		SERVER	
		 Breaks all constraints on an entity
	**/
	@:native("breakAll") public static function breakAll(e:Any):Void;
	/**
		SERVER	
		 Nocollides two entities
	**/
	@:native("nocollide") public static function nocollide(e1:Any,e2:Any,bone1:Any,bone2:Any):Void;
	/**
		SERVER	
		 Returns the table of constraints on an entity
	**/
	@:native("getTable") public static function getTable(ent:Any):Any;
	/**
		SERVER	
		 Sets the length of an elastic attached to the entity
	**/
	@:native("setElasticLength") public static function setElasticLength(index:Any,e:Any,length:Any):Void;
	/**
		SERVER	
		 Elastic constraint between two entities
	**/
	@:native("elastic") public static function elastic(index:Any,e1:Any,e2:Any,bone1:Any,bone2:Any,v1:Any,v2:Any,const:Any,damp:Any,rdamp:Any,width:Any,strech:Any):Void;
}

