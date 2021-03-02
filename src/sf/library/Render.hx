package sf.library;
@:native("render") extern class Render {
	/**
		CLIENT
		 Sets the active texture to the render target with the specified name.
 Nil to reset.
	**/
	@:native("setRenderTargetTexture") public static function setRenderTargetTexture(name:Any):Void;
	/**
		CLIENT
		 Returns the entity currently being rendered to
	**/
	@:native("getScreenEntity") public static function getScreenEntity():Any;
	/**
		CLIENT
		 Sets the compare function of the stencil. More: https://wiki.facepunch.com/gmod/render.SetStencilCompareFunction
	**/
	@:native("setStencilCompareFunction") public static function setStencilCompareFunction(compareFunction:Any):Void;
	/**
		CLIENT
		 Enables a scissoring rect which limits the drawing area. Only works 2D contexts such as HUD or render targets.
	**/
	@:native("enableScissorRect") public static function enableScissorRect(startX:Any,startY:Any,endX:Any,endX:Any):Void;
	/**
		CLIENT
		 Returns the ambient color of the map
	**/
	@:native("getAmbientLightColor") public static function getAmbientLightColor():Any;
	/**
		CLIENT
		 Sets the draw color by RGBA values
	**/
	@:native("setRGBA") public static function setRGBA(r:Any,g:Any,b:Any,a:Any):Void;
	/**
		CLIENT
		 Sets the font
 Use a font created by render.createFont or use one of these already defined fonts:
 \- DebugFixed
 \- DebugFixedSmall
 \- Default
 \- Marlett
 \- Trebuchet18
 \- Trebuchet24
 \- HudHintTextLarge
 \- HudHintTextSmall
 \- CenterPrintText
 \- HudSelectionText
 \- CloseCaption_Normal
 \- CloseCaption_Bold
 \- CloseCaption_BoldItalic
 \- ChatFont
 \- TargetID
 \- TargetIDSmall
 \- HL2MPTypeDeath
 \- BudgetLabel
 \- HudNumbers
 \- DermaDefault
 \- DermaDefaultBold
 \- DermaLarge
	**/
	@:native("setFont") public static function setFont(font:Any):Void;
	/**
		CLIENT
		 Clears the current rendertarget for obeying the current stencil buffer conditions.
	**/
	@:native("clearBuffersObeyStencil") public static function clearBuffersObeyStencil(r:Any,g:Any,b:Any,depth:Any):Void;
	/**
		CLIENT
		 Returns how many render.renderView calls can be done in the current frame.
	**/
	@:native("renderViewsLeft") public static function renderViewsLeft():Void;
	/**
		CLIENT
		 Returns whether render.renderView is being executed.
	**/
	@:native("isInRenderView") public static function isInRenderView():Void;
	/**
		CLIENT
		 Sets the lighting mode
	**/
	@:native("setLightingMode") public static function setLightingMode(mode:Any):Void;
	/**
		CLIENT
		 Pops a view matrix from the matrix stack.
	**/
	@:native("popViewMatrix") public static function popViewMatrix():Void;
	/**
		CLIENT
		 Enables blend mode control. Read OpenGL or DirectX docs for more info
	**/
	@:native("overrideBlend") public static function overrideBlend(on:Any,srcBlend:Any,destBlend:Any,blendFunc:Any,srcBlendAlpha:Any,destBlendAlpha:Any,blendFuncAlpha:Any):Void;
	/**
		CLIENT
		 Sets the height below which fog will be rendered. Only works with fog mode 2
	**/
	@:native("setFogHeight") public static function setFogHeight():Void;
	/**
		CLIENT
		 Draws a circle outline
	**/
	@:native("drawCircle") public static function drawCircle(x:Any,y:Any,r:Any):Void;
	/**
		CLIENT
		 Draws region of RGBA color channel tables to current render target.
	**/
	@:native("drawPixelsSubrectRGBA") public static function drawPixelsSubrectRGBA(dstX:Any,dstY:Any,srcX:Any,srcY:Any,srcW:Any,srcH:Any,subrectW:Any,subrectH:Any,dataR:Any,dataG:Any,dataB:Any,dataA:Any):Void;
	/**
		CLIENT
		 Draws a sprite in 3d space.
	**/
	@:native("draw3DSprite") public static function draw3DSprite(pos:Any,width:Any,height:Any):Void;
	/**
		CLIENT
		 Draws a rotated, textured rectangle.
 Faster, but uses integer coordinates and will get clipped by user's screen resolution
	**/
	@:native("drawTexturedRectRotatedFast") public static function drawTexturedRectRotatedFast(x:Any,y:Any,w:Any,h:Any,rot:Any):Void;
	/**
		CLIENT
		 Gets the default font
	**/
	@:native("getDefaultFont") public static function getDefaultFont():Any;
	/**
		CLIENT
		 Sets the texture filtering function when viewing a far texture
	**/
	@:native("setFilterMin") public static function setFilterMin(val:Any):Void;
	/**
		CLIENT
		 Draws RGBA color channel tables to current render target.
	**/
	@:native("drawPixelsRGBA") public static function drawPixelsRGBA(w:Any,h:Any,dataR:Any,dataG:Any,dataB:Any,dataA:Any):Void;
	/**
		CLIENT
		 Draws text with newlines and tabs
	**/
	@:native("drawText") public static function drawText(x:Any,y:Any,text:Any,alignment:Any):Void;
	/**
		CLIENT
		 Draws a rounded rectangle using the current color
	**/
	@:native("drawRoundedBox") public static function drawRoundedBox(r:Any,x:Any,y:Any,w:Any,h:Any):Void;
	/**
		CLIENT
		 Renders the scene with the specified viewData to the current active render target.
	**/
	@:native("renderView") public static function renderView(tbl:Any):Void;
	/**
		CLIENT
		 Sets the status of the clip renderer, returning previous state.
	**/
	@:native("enableClipping") public static function enableClipping(state:Any):Any;
	/**
		CLIENT
		 Draws text more easily and quickly but no new lines or tabs.
	**/
	@:native("drawSimpleText") public static function drawSimpleText(x:Any,y:Any,text:Any,xalign:Any,yalign:Any):Void;
	/**
		CLIENT
		 Draws a box in 3D space
	**/
	@:native("draw3DBox") public static function draw3DBox(origin:Any,angle:Any,mins:Any,maxs:Any):Void;
	/**
		CLIENT
		 Looks up a texture by file name and creates an UnlitGeneric material with it.
 Also supports image URLs or image data (These will create a rendertarget for the $basetexture): https://en.wikipedia.org/wiki/Data_URI_scheme
 Make sure to store the material to use it rather than calling this slow function repeatedly.
 NOTE: This no longer supports material names. Use texture names instead (Textures are .vtf, material are .vmt)
	**/
	@:native("createMaterial") public static function createMaterial(tx:Any,cb:Any,done:Any):Any;
	/**
		CLIENT
		 Draws a rounded rectangle using the current color
	**/
	@:native("drawRoundedBoxEx") public static function drawRoundedBoxEx(r:Any,x:Any,y:Any,w:Any,h:Any,tl:Any,tr:Any,bl:Any,br:Any):Void;
	/**
		CLIENT
		 Draws a rectangle outline using the current color.
	**/
	@:native("drawRectOutline") public static function drawRectOutline(x:Any,y:Any,w:Any,h:Any,thickness:Any):Void;
	/**
		CLIENT
		 Constructs a markup object for quick styled text drawing.
	**/
	@:native("parseMarkup") public static function parseMarkup(str:Any,maxsize:Any):Any;
	/**
		CLIENT
		 Checks if a hud component is connected to the Starfall Chip
	**/
	@:native("isHUDActive") public static function isHUDActive():Void;
	/**
		CLIENT
		 Calculates the light color of a certain surface
	**/
	@:native("computeLighting") public static function computeLighting(pos:Any,normal:Any):Any;
	/**
		CLIENT
		 Creates a font. Does not require rendering hook
 Base font can be one of (keep in mind that these may not exist on all clients if they are not shipped with starfall):
 \- Akbar
 \- Coolvetica
 \- Roboto
 \- Roboto Mono
 \- FontAwesome
 \- Courier New
 \- Verdana
 \- Arial
 \- HalfLife2
 \- hl2mp
 \- csd
 \- Tahoma
 \- Trebuchet
 \- Trebuchet MS
 \- DejaVu Sans Mono
 \- Lucida Console
 \- Times New Roman
	**/
	@:native("createFont") public static function createFont(font:Any,size:Any,weight:Any,antialias:Any,additive:Any,shadow:Any,outline:Any,blur:Any,extended:Any):Void;
	/**
		CLIENT
		 Returns the render context's width and height. If a rendertarget is selected, will return 1024, 1024
	**/
	@:native("getResolution") public static function getResolution():Any;
	/**
		CLIENT
		 Sets the operation to be performed on the stencil buffer values if the compare function was not successful. More: http://wiki.facepunch.com/gmod/render.SetStencilFailOperation
	**/
	@:native("setStencilFailOperation") public static function setStencilFailOperation(operation:Any):Void;
	/**
		CLIENT
		 Does a trace and returns the color of the textel the trace hits.
	**/
	@:native("traceSurfaceColor") public static function traceSurfaceColor(vec1:Any,vec2:Any):Any;
	/**
		CLIENT
		 Draws region of RGB color channel tables to current render target.
	**/
	@:native("drawPixelsSubrectRGB") public static function drawPixelsSubrectRGB(dstX:Any,dstY:Any,srcX:Any,srcY:Any,srcW:Any,srcH:Any,subrectW:Any,subrectH:Any,dataR:Any,dataG:Any,dataB:Any):Void;
	/**
		CLIENT
		 Draws a rotated, textured rectangle.
	**/
	@:native("drawTexturedRectRotated") public static function drawTexturedRectRotated(x:Any,y:Any,w:Any,h:Any,rot:Any):Void;
	/**
		CLIENT
		 Draws 2 connected triangles with custom UVs.
	**/
	@:native("draw3DQuadUV") public static function draw3DQuadUV(vert1:Any,vert2:Any,vert3:Any,vert4:Any):Void;
	/**
		CLIENT
		 Clears the active render target
	**/
	@:native("clear") public static function clear(clr:Any,depth:Any):Void;
	/**
		CLIENT
		 Sets the unsigned 8-bit test bitflag mask to be used for any stencil testing.
	**/
	@:native("setStencilTestMask") public static function setStencilTestMask(mask:Any):Void;
	/**
		CLIENT
		 Sets distance at which the fog will reach it's target density
	**/
	@:native("setFogEnd") public static function setFogEnd(distance:Any):Void;
	/**
		CLIENT
		 Sets the reference value which will be used for all stencil operations. This is an unsigned integer.
	**/
	@:native("setStencilReferenceValue") public static function setStencilReferenceValue(referenceValue:Any):Void;
	/**
		CLIENT
		 Draws a 3D Line
	**/
	@:native("draw3DLine") public static function draw3DLine(startPos:Any,endPos:Any):Void;
	/**
		CLIENT
		 Draws a textured rectangle with UV coordinates
 Faster, but uses integer coordinates and will get clipped by user's screen resolution
	**/
	@:native("drawTexturedRectUVFast") public static function drawTexturedRectUVFast(x:Any,y:Any,w:Any,h:Any,startU:Any,startV:Any,endU:Any,endV:Any,UVHack:Any):Void;
	/**
		CLIENT
		 Sets the texture filtering function when viewing a close texture
	**/
	@:native("setFilterMag") public static function setFilterMag(val:Any):Void;
	/**
		CLIENT
		 Gets the light exposure on the specified position
	**/
	@:native("getLightColor") public static function getLightColor(pos:Any):Any;
	/**
		CLIENT
		 Enables or disables Depth Buffer
	**/
	@:native("enableDepth") public static function enableDepth(enable:Any):Void;
	/**
		CLIENT
		 Draws a wireframe box in 3D space
	**/
	@:native("draw3DWireframeBox") public static function draw3DWireframeBox(origin:Any,angle:Any,mins:Any,maxs:Any):Void;
	/**
		CLIENT
		 Draws a wireframe sphere
	**/
	@:native("draw3DWireframeSphere") public static function draw3DWireframeSphere(pos:Any,radius:Any,longitudeSteps:Any,latitudeSteps:Any):Void;
	/**
		CLIENT
		 Releases the texture. Required if you reach the maximum url textures.
	**/
	@:native("destroyTexture") public static function destroyTexture(mat:Any):Void;
	/**
		CLIENT
		 Sets the current render material to the given material or the rendertarget, applying a color modification shader to the texture. Alias: render.setMaterialEffectColourModify
	**/
	@:native("setMaterialEffectColorModify") public static function setMaterialEffectColorModify(mat:Any,cmStructure:Any):Void;
	/**
		CLIENT
		 Resets stencil operations to their default behavior
	**/
	@:native("resetStencil") public static function resetStencil():Void;
	/**
		CLIENT
		 Draws a textured rectangle
	**/
	@:native("drawTexturedRect") public static function drawTexturedRect(x:Any,y:Any,w:Any,h:Any):Void;
	/**
		CLIENT
		 Using the custom screen model, sets the screen offset and size as long as its within bounds of -1024 to 1024 units
	**/
	@:native("setScreenDimensions") public static function setScreenDimensions(screen:Any,x:Any,y:Any,w:Any,h:Any):Void;
	/**
		CLIENT
		 Returns width and height of the game window
	**/
	@:native("getGameResolution") public static function getGameResolution():Any;
	/**
		CLIENT
		 Sets the stencil value in a specified rect.
	**/
	@:native("clearStencilBufferRectangle") public static function clearStencilBufferRectangle(originX:Any,originY:Any,endX:Any,endY:Any,stencilValue:Any):Void;
	/**
		CLIENT
		 Sets the current render material to the given material or the rendertarget, applying a bloom shader to the texture.
	**/
	@:native("setMaterialEffectBloom") public static function setMaterialEffectBloom(mat:Any,levelr:Any,levelg:Any,levelb:Any,colormul:Any):Void;
	/**
		CLIENT
		 Draws textured beam.
	**/
	@:native("draw3DBeam") public static function draw3DBeam(startPos:Any,endPos:Any,width:Any,textureStart:Any,textureEnd:Any):Void;
	/**
		CLIENT
		 Sets the draw color
	**/
	@:native("setColor") public static function setColor(clr:Any):Void;
	/**
		CLIENT
		 Sets the texture of a screen entity
	**/
	@:native("setTextureFromScreen") public static function setTextureFromScreen(ent:Any):Void;
	/**
		CLIENT
		 Returns information about the screen, such as world offsets, dimentions, and rotation.
 Note: this does a table copy so move it out of your draw hook
	**/
	@:native("getScreenInfo") public static function getScreenInfo(e:Any):Any;
	/**
		CLIENT
		 Sets background color of screen
	**/
	@:native("setBackgroundColor") public static function setBackgroundColor(col:Any,screen:Any):Void;
	/**
		CLIENT
		 Pushes a new clipping plane of the clip plane stack.
	**/
	@:native("pushCustomClipPlane") public static function pushCustomClipPlane(normal:Any,distance:Any):Void;
	/**
		CLIENT
		 Dumps the current render target and allows the pixels to be accessed by render.readPixel.
	**/
	@:native("capturePixels") public static function capturePixels():Void;
	/**
		CLIENT
		 Draws a textured rectangle
 Faster, but uses integer coordinates and will get clipped by user's screen resolution
	**/
	@:native("drawTexturedRectFast") public static function drawTexturedRectFast(x:Any,y:Any,w:Any,h:Any):Void;
	/**
		CLIENT
		 Sets whether stencil tests are carried out for each rendered pixel. Only pixels passing the stencil test are written to the render target.
	**/
	@:native("setStencilEnable") public static function setStencilEnable(enable:Any):Void;
	/**
		CLIENT
		 Changes density of the fog
	**/
	@:native("setFogDensity") public static function setFogDensity(density:Any):Void;
	/**
		CLIENT
		 Sets the current render material to the given material or the rendertarget, applying a subtractive shader when drawn.
	**/
	@:native("setMaterialEffectSub") public static function setMaterialEffectSub(mat:Any):Void;
	/**
		CLIENT
		 Draws RGB color channel tables to current render target.
	**/
	@:native("drawPixelsRGB") public static function drawPixelsRGB(w:Any,h:Any,dataR:Any,dataG:Any,dataB:Any):Void;
	/**
		CLIENT
		 Draws a rectangle using the current color
 Faster, but uses integer coordinates and will get clipped by user's screen resolution
	**/
	@:native("drawRectFast") public static function drawRectFast(x:Any,y:Any,w:Any,h:Any):Void;
	/**
		CLIENT
		 Draws a polygon.
	**/
	@:native("drawPoly") public static function drawPoly(poly:Any):Void;
	/**
		CLIENT
		 Changes the cull mode
	**/
	@:native("setCullMode") public static function setCullMode(mode:Any):Void;
	/**
		CLIENT
		 Sets distance at which the fog will start appearing
	**/
	@:native("setFogStart") public static function setFogStart(distance:Any):Void;
	/**
		CLIENT
		 Sets the operation to be performed on the stencil buffer values if the compare function was successful. More: http://wiki.facepunch.com/gmod/render.SetStencilPassOperation
	**/
	@:native("setStencilPassOperation") public static function setStencilPassOperation(operation:Any):Void;
	/**
		CLIENT
		 Reads the color of the specified pixel.
	**/
	@:native("readPixel") public static function readPixel(x:Any,y:Any):Any;
	/**
		CLIENT
		 Selects the render target to draw on.
 Nil for the visible RT.
	**/
	@:native("selectRenderTarget") public static function selectRenderTarget(name:Any):Void;
	/**
		CLIENT
		 Pushes a matrix onto the matrix stack.
	**/
	@:native("pushMatrix") public static function pushMatrix(m:Any,world:Any):Void;
	/**
		CLIENT
		 Sets the current render material to the given material or the rendertarget, darkening the texture, and scaling up color values.
	**/
	@:native("setMaterialEffectDownsample") public static function setMaterialEffectDownsample(mat:Any,darken:Any,multiply:Any):Void;
	/**
		CLIENT
		 Releases the rendertarget. Required if you reach the maximum rendertargets.
	**/
	@:native("destroyRenderTarget") public static function destroyRenderTarget(name:Any):Void;
	/**
		CLIENT
		 Creates a new render target to draw onto.
 The dimensions will always be 1024x1024
	**/
	@:native("createRenderTarget") public static function createRenderTarget(name:Any):Void;
	/**
		CLIENT
		 Pushes a perspective matrix onto the view matrix stack.
	**/
	@:native("pushViewMatrix") public static function pushViewMatrix(tbl:Any):Void;
	/**
		CLIENT
		 Draws a rectangle using the current color
	**/
	@:native("drawRect") public static function drawRect(x:Any,y:Any,w:Any,h:Any):Void;
	/**
		CLIENT
		 Check if the specified render target exists.
	**/
	@:native("renderTargetExists") public static function renderTargetExists(name:Any):Void;
	/**
		CLIENT
		 Gets the size of the specified text. Don't forget to use setFont before calling this function
	**/
	@:native("getTextSize") public static function getTextSize(text:Any):Any;
	/**
		CLIENT
		 Sets the current render material
	**/
	@:native("setMaterial") public static function setMaterial(mat:Any):Void;
	/**
		CLIENT
		 Disables a scissoring rect which limits the drawing area.
	**/
	@:native("disableScissorRect") public static function disableScissorRect():Void;
	/**
		CLIENT
		 Sets the current render material to the given material or the rendertarget, applying an additive shader when drawn.
	**/
	@:native("setMaterialEffectAdd") public static function setMaterialEffectAdd(mat:Any):Void;
	/**
		CLIENT
		 Draws a sphere
	**/
	@:native("draw3DSphere") public static function draw3DSphere(pos:Any,radius:Any,longitudeSteps:Any,latitudeSteps:Any):Void;
	/**
		CLIENT
		 Draws 2 connected triangles.
	**/
	@:native("draw3DQuad") public static function draw3DQuad(vert1:Any,vert2:Any,vert3:Any,vert4:Any):Void;
	/**
		CLIENT
		 Resets the depth buffer
	**/
	@:native("clearDepth") public static function clearDepth():Void;
	/**
		CLIENT
		 Gets a 2D cursor position where ply is aiming at the current rendered screen or nil if they aren't aiming at it.
	**/
	@:native("cursorPos") public static function cursorPos(ply:Any,screen:Any):Any;
	/**
		CLIENT
		 Pops a matrix from the matrix stack.
	**/
	@:native("popMatrix") public static function popMatrix():Void;
	/**
		CLIENT
		 Calculates the lighting caused by dynamic lights for the specified surface
	**/
	@:native("computeDynamicLighting") public static function computeDynamicLighting(pos:Any,normal:Any):Any;
	/**
		CLIENT
		 Changes color of the fog
	**/
	@:native("setFogColor") public static function setFogColor(color:Any):Void;
	/**
		CLIENT
		 Sets the operation to be performed on the stencil buffer values if the stencil test is passed but the depth buffer test fails. More: http://wiki.facepunch.com/gmod/render.SetStencilZFailOperation
	**/
	@:native("setStencilZFailOperation") public static function setStencilZFailOperation(operation:Any):Void;
	/**
		CLIENT
		 Sets the fog mode. See: https://wiki.facepunch.com/gmod/Enums/MATERIAL_FOG
	**/
	@:native("setFogMode") public static function setFogMode(mode:Any):Void;
	/**
		CLIENT
		 Removes the current active clipping plane from the clip plane stack.
	**/
	@:native("popCustomClipPlane") public static function popCustomClipPlane():Void;
	/**
		CLIENT
		 Applies a blur effect to the active rendertarget. This must be used with a rendertarget created beforehand.
	**/
	@:native("drawBlurEffect") public static function drawBlurEffect(blurx:Any,blury:Any,passes:Any):Void;
	/**
		CLIENT
		 Resets all values in the stencil buffer to zero.
	**/
	@:native("clearStencil") public static function clearStencil():Void;
	/**
		CLIENT
		 Draws a textured rectangle with UV coordinates
	**/
	@:native("drawTexturedRectUV") public static function drawTexturedRectUV(x:Any,y:Any,w:Any,h:Any,startU:Any,startV:Any,endV:Any,endV:Any):Void;
	/**
		CLIENT
		 Makes the screen shake, client must be connected to a HUD.
	**/
	@:native("screenShake") public static function screenShake(amplitude:Any,frequency:Any,duration:Any):Void;
	/**
		CLIENT
		 Sets the overlay of the chip to a user's rendertarget
	**/
	@:native("setChipOverlay") public static function setChipOverlay(name:Any):Void;
	/**
		CLIENT
		 Draws a line. Use 3D functions for float coordinates
	**/
	@:native("drawLine") public static function drawLine(x1:Any,y1:Any,x2:Any,y2:Any):Void;
	/**
		CLIENT
		 Sets the unsigned 8-bit write bitflag mask to be used for any writes to the stencil buffer.
	**/
	@:native("setStencilWriteMask") public static function setStencilWriteMask(mask:Any):Void;
}

