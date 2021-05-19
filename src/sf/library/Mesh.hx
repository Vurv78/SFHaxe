// Generated by SFHaxe 0.3.2
package sf.library;
@:native("mesh") extern class Mesh {
	/**
		CLIENT
		 Sets the vertex texture coordinates
	**/
	#if CLIENT @:native("writeUV") public static function writeUV(stage:Float, u:Float, v:Float):Void;#end
	/**
		CLIENT
		 Creates a mesh from an obj file. Only supports triangular meshes with normals and texture coordinates.
	**/
	#if CLIENT @:native("createFromObj") public static function createFromObj(obj:std.String, ?threaded:Null<Bool>, ?triangulate:Null<Bool>):lua.Table<Dynamic,Dynamic>;#end
	/**
		CLIENT
		 Creates a mesh without any vertex data.
	**/
	#if CLIENT @:native("createEmpty") public static function createEmpty():sf.type.Mesh;#end
	/**
		CLIENT
		 Returns how many triangles can be created
	**/
	#if CLIENT @:native("trianglesLeft") public static function trianglesLeft():Float;#end
	/**
		SHARED
		 Generates the tangents for the provided vertices table
	**/
	@:native("generateTangents") public static function generateTangents(vertices:lua.Table<Dynamic,Dynamic>):Void;
	/**
		CLIENT
		 Sets the vertex tangent user data
	**/
	#if CLIENT @:native("writeUserData") public static function writeUserData(x:Float, y:Float, z:Float, handedness:Float):Void;#end
	/**
		SHARED
		 Parses obj data into a table of vertices, normals, texture coordinates, colors, and tangents
	**/
	@:native("parseObj") public static function parseObj(obj:std.String, ?threaded:Null<Bool>, ?triangulate:Null<Bool>):lua.Table<Dynamic,Dynamic>;
	/**
		CLIENT
		 Sets the vertex color by RGBA values
	**/
	#if CLIENT @:native("writeColor") public static function writeColor(r:Float, g:Float, b:Float, a:Float):Void;#end
	/**
		CLIENT
		 Generates mesh data. If an Mesh object is passed, it will populate that mesh with the data. Otherwise, it will render directly to renderer.
	**/
	#if CLIENT @:native("generate") public static function generate(?mesh_obj:Null<sf.type.Mesh>, prim_type:Float, prim_count:Float, func:haxe.Constraints.Function):Void;#end
	/**
		SHARED
		 Generates the uv for the provided vertices table
	**/
	@:native("generateUV") public static function generateUV(vertices:lua.Table<Dynamic,Dynamic>, scale:Float):Void;
	/**
		CLIENT
		 Draws a quad using 4 vertices
	**/
	#if CLIENT @:native("writeQuad") public static function writeQuad(v1:sf.type.Vector, v2:sf.type.Vector, v3:sf.type.Vector, v4:sf.type.Vector):Void;#end
	/**
		CLIENT
		 Pushes the vertex data onto the render stack
	**/
	#if CLIENT @:native("advanceVertex") public static function advanceVertex():Void;#end
	/**
		CLIENT
		 Sets the vertex normal
	**/
	#if CLIENT @:native("writeNormal") public static function writeNormal(normal:sf.type.Vector):Void;#end
	/**
		SHARED
		 Generates normal vectors for the provided vertices table
	**/
	@:native("generateNormals") public static function generateNormals(vertices:lua.Table<Dynamic,Dynamic>, ?inverted:Null<Bool>, ?smooth_limit:Null<Float>):Void;
	/**
		CLIENT
		 Creates a mesh from vertex data.
	**/
	#if CLIENT @:native("createFromTable") public static function createFromTable(verteces:lua.Table<Dynamic,Dynamic>, ?threaded:Null<Bool>):sf.type.Mesh;#end
	/**
		CLIENT
		 Sets the vertex position
	**/
	#if CLIENT @:native("writePosition") public static function writePosition(position:sf.type.Vector):Void;#end
	/**
		CLIENT
		 Returns how many triangles can be rendered
	**/
	#if CLIENT @:native("trianglesLeftRender") public static function trianglesLeftRender():Float;#end
	/**
		CLIENT
		 Draws a quad using a position, normal and size
	**/
	#if CLIENT @:native("writeQuadEasy") public static function writeQuadEasy(position:sf.type.Vector, normal:sf.type.Vector, w:Float, h:Float):Void;#end
	/**
		CLIENT
		 Returns a table of visual meshes of given model or nil if the model is invalid
	**/
	#if CLIENT @:native("getModelMeshes") public static function getModelMeshes(model:std.String, ?lod:Null<Float>, ?bodygroupMask:Null<Float>):lua.Table<Dynamic,Dynamic>;#end
}

