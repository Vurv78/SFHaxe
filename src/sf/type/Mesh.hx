package sf.type;
extern class Mesh {
	/**
		CLIENT	
		 Draws the mesh. Must be in a 3D rendering context.
	**/
	@:native("draw") public function draw():Void;
	/**
		CLIENT	
		 Frees the mesh from memory
	**/
	@:native("destroy") public function destroy():Void;
}
