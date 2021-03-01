package sf.library;
@:native("mesh") extern class Mesh {
	//  CLIENT
	/*  Creates a mesh without any vertex data. */
	@:native("createEmpty") public static function createEmpty():Any;
	//  SHARED
	/*  Parses obj data into a table of vertices, normals, texture coordinates, colors, and tangents */
	@:native("parseObj") public static function parseObj(obj:Any,threaded:Any,triangulate:Any):Any;
	//  CLIENT
	/*  Sets the vertex normal */
	@:native("writeNormal") public static function writeNormal(normal:Any):Void;
	//  SHARED
	/*  Generates the uv for the provided vertices table */
	@:native("generateUV") public static function generateUV(vertices:Any,scale:Any):Void;
	//  CLIENT
	/*  Returns a table of visual meshes of given model or nil if the model is invalid */
	@:native("getModelMeshes") public static function getModelMeshes(model:Any,lod:Any,bodygroupMask:Any):Any;
	//  CLIENT
	/*  Returns how many triangles can be created */
	@:native("trianglesLeft") public static function trianglesLeft():Any;
	//  CLIENT
	/*  Pushes the vertex data onto the render stack */
	@:native("advanceVertex") public static function advanceVertex():Void;
	//  CLIENT
	/*  Draws a quad using 4 vertices */
	@:native("writeQuad") public static function writeQuad(v1:Any,v2:Any,v3:Any,v4:Any):Void;
	//  CLIENT
	/*  Returns how many triangles can be rendered */
	@:native("trianglesLeftRender") public static function trianglesLeftRender():Any;
	//  CLIENT
	/*  Creates a mesh from an obj file. Only supports triangular meshes with normals and texture coordinates. */
	@:native("createFromObj") public static function createFromObj(obj:Any,threaded:Any,triangulate:Any):Any;
	//  SHARED
	/*  Generates normal vectors for the provided vertices table */
	@:native("generateNormals") public static function generateNormals(vertices:Any,inverted:Any,smooth_limit:Any):Void;
	//  CLIENT
	/*  Draws a quad using a position, normal and size */
	@:native("writeQuadEasy") public static function writeQuadEasy(position:Any,normal:Any,w:Any,h:Any):Void;
	//  CLIENT
	/*  Generates mesh data. If an Mesh object is passed, it will populate that mesh with the data. Otherwise, it will render directly to renderer. */
	@:native("generate") public static function generate(mesh_obj:Any,prim_type:Any,prim_count:Any,func:Any):Void;
	//  SHARED
	/*  Generates the tangents for the provided vertices table */
	@:native("generateTangents") public static function generateTangents(vertices:Any):Void;
	//  CLIENT
	/*  Creates a mesh from vertex data. */
	@:native("createFromTable") public static function createFromTable(verteces:Any,threaded:Any):Any;
	//  CLIENT
	/*  Sets the vertex position */
	@:native("writePosition") public static function writePosition(position:Any):Void;
	//  CLIENT
	/*  Sets the vertex color by RGBA values */
	@:native("writeColor") public static function writeColor(r:Any,g:Any,b:Any,a:Any):Void;
	//  CLIENT
	/*  Sets the vertex texture coordinates */
	@:native("writeUV") public static function writeUV(stage:Any,u:Any,v:Any):Void;
	//  CLIENT
	/*  Sets the vertex tangent user data */
	@:native("writeUserData") public static function writeUserData(x:Any,y:Any,z:Any,handedness:Any):Void;
}

