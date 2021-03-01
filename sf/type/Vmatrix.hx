package sf.type;
extern class VMatrix {
	//  SHARED
	/*  Sets the right direction of the matrix. Negated second column */
	@:native("setRight") public function setRight(right:Any):Void;
	//  SHARED
	/*  Inverts the matrix. Inverting the matrix will fail if its determinant is 0 or close to 0 */
	@:native("invert") public function invert():Any;
	//  SHARED
	/*  Returns an inverted matrix. Inverting the matrix will fail if its determinant is 0 or close to 0 */
	@:native("getInverse") public function getInverse():Any;
	//  SHARED
	/*  Sets the forward direction of the matrix. First column */
	@:native("setForward") public function setForward(forward:Any):Void;
	//  SHARED
	/*  Returns angles */
	@:native("getAngles") public function getAngles():Any;
	//  SHARED
	/*  Multiplies two matrices */
	@:native("__mul") public function __mul():Any;
	//  SHARED
	/*  Returns scale */
	@:native("getScale") public function getScale():Any;
	//  SHARED
	/*  Returns forward vector of matrix. First matrix column */
	@:native("getForward") public function getForward():Any;
	//  SHARED
	/*  Subtracts two matrices (why would you do this?) */
	@:native("__sub") public function __sub():Any;
	//  SHARED
	/*  Sets the rotation or the matrix to the rotation by an axis and angle */
	@:native("setAxisAngle") public function setAxisAngle(axis:Any,angle:Any):Void;
	//  SHARED
	/*  Returns a specific field in the matrix */
	@:native("getField") public function getField(row:Any,column:Any):Any;
	//  SHARED
	/*  Sets the up direction of the matrix. Third column */
	@:native("setUp") public function setUp(up:Any):Void;
	//  SHARED
	/*  Translate the matrix */
	@:native("translate") public function translate(vec:Any):Void;
	//  SHARED
	/*  Returns right vector of matrix. Negated second matrix column */
	@:native("getRight") public function getRight():Any;
	//  SHARED
	/*  Sets the translation */
	@:native("setTranslation") public function setTranslation(vec:Any):Void;
	//  SHARED
	/*  Inverts the matrix efficiently for translations and rotations */
	@:native("invertTR") public function invertTR():Void;
	//  SHARED
	/*  Returns whether the matrix is a rotation matrix or not. Checks if the forward, right and up vectors are orthogonal and normalized. */
	@:native("isRotationMatrix") public function isRotationMatrix():Any;
	//  SHARED
	/*  Rotate the matrix */
	@:native("rotate") public function rotate(ang:Any):Void;
	//  SHARED
	/*  Scale the matrix */
	@:native("scale") public function scale(vec:Any):Void;
	//  SHARED
	/*  Sets the scale */
	@:native("setScale") public function setScale(vec:Any):Void;
	//  SHARED
	/*  Returns up vector of matrix. Third matrix column */
	@:native("getUp") public function getUp():Any;
	//  SHARED
	/*  Returns whether the matrix is equal to Identity matrix or not */
	@:native("isIdentity") public function isIdentity():Any;
	//  SHARED
	/*  Returns translation */
	@:native("getTranslation") public function getTranslation():Any;
	//  SHARED
	/*  Copies The matrix and returns a new matrix */
	@:native("clone") public function clone():Any;
	//  SHARED
	/*  Allows you to set all 16 fields in row-major order */
	@:native("setUnpacked") public function setUnpacked(...varargs:Any):Void;
	//  SHARED
	/*  Returns all 16 fields of the matrix in row-major order */
	@:native("unpack") public function unpack():Any;
	//  SHARED
	/*  Copies the values from the second matrix to the first matrix. Self-Modifies */
	@:native("set") public function set(src:Any):Void;
	//  SHARED
	/*  Sets the angles */
	@:native("setAngles") public function setAngles(ang:Any):Void;
	//  SHARED
	/*  Adds two matrices (why would you do this?) */
	@:native("__add") public function __add():Any;
	//  SHARED
	/*  Returns an inverted matrix. Efficiently for translations and rotations */
	@:native("getInverseTR") public function getInverseTR():Any;
	//  SHARED
	/*  tostring metamethod */
	@:native("__tostring") public function __tostring():Any;
	//  SHARED
	/*  Gets the rotation axis and angle of rotation of the rotation matrix */
	@:native("getAxisAngle") public function getAxisAngle():Any;
	//  SHARED
	/*  Converts the matrix to a 4x4 table */
	@:native("toTable") public function toTable():Any;
	//  SHARED
	/*  Initializes the matrix as Identity matrix */
	@:native("setIdentity") public function setIdentity():Void;
	//  SHARED
	/*  Sets a specific field in the matrix */
	@:native("setField") public function setField(row:Any,column:Any,value:Any):Void;
	//  SHARED
	/*  Scales the absolute translation */
	@:native("scaleTranslation") public function scaleTranslation(num:Any):Void;
}

