import sf.library.Builtins.*;
import sf.library.*;
import sf.type.*;

typedef LayFunc = (x:Int, y:Int, w:Int, h:Int)->Void;

class Main {
    static function main() {
        Render.createRenderTarget("rt");

        var mat: Material = untyped __lua__("material.create({0})", "UnlitGeneric");
        mat.setTextureURL("$basetexture", "https://cdn.discordapp.com/attachments/732861600708690010/810300571181514835/Rust-1024x381.png", function(mat: Material, url:String, width:Int, height:Int, layout:LayFunc){
            layout(0, 0, 1024, 1024);
        },function(){
            Hook.add("render","",function(){
                Render.setMaterial(mat);
                Render.drawTexturedRect(0, 0, 512, 512);
            });
        });
    }
}