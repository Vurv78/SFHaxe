import sf.library.*;
import sf.library.Builtins.*;
import sf.type.*;

final RES = 64;
final FILTER = [chip()];

typedef TraceResult = {
    HitNormal: Vector
    // Hopefully will have these return values in a standard library at some point.
}

function canRun() {
    // Using cast here, you can also just define the function returns up here.
    return cast(quotaTotalAverage(),Int) < cast(quotaMax(),Int)*0.5;
}

function loadRender() {
    var chip = cast(chip(), Entity);
    var sundir: Vector = Game.getSunInfo();

    var cam_pos: Vector = chip.getPos();
    var cam_angle: Angle = chip.getAngles();

    var bench: Int = Timer.curtime();

    var scr_res = RES-1; // Since we start at 0, subtract the resolution by one.
    for (Y in 0...scr_res) {
        for (X in 0...scr_res) {
            trace(X,Y);
            var dir = cast(Vector(1,1-(X/scr_res)-0.5,1-(Y/scr_res)-0.5), Vector).getRotated(cam_angle);
            var trace: TraceResult = Trace.trace( cam_pos, cam_pos.__add(dir), FILTER, null, null, null );
            var shading = trace.HitNormal;
            var col: Color = Color(255, 255, 255, 255);
            col = col.__mul(shading);
            untyped{ col[4] = 255; } // The fields of a color aren't documented, so they aren't defined, so we don't have array access, etc...
            Render.selectRenderTarget("rt");
                Render.setColor( col );
                Render.drawRectFast(X, Y, 1, 1);
            Render.selectRenderTarget(null);
            if(!canRun()) // Cool syntax from C/C++
                Coroutine.yield();
        }
    }
    trace('Finished render in ${bench - cast Timer.curtime()} seconds!');
    return true;
}

class Main {
    static function main(){
        Render.createRenderTarget("rt");
        var coro: Coroutine = Coroutine.create( loadRender );

        Hook.add("renderoffscreen","",function() { // Another way to have an anonymous function
            if (Coroutine.status(coro) != "dead"){
                if(canRun())
                    Coroutine.resume(coro);
            }else{
                Hook.remove("renderoffscreen","");
            }
        });
        var scale_matrix: sf.type.Vmatrix.VMatrix = Matrix();
        var i = 1024/RES;
        scale_matrix.setScale( Vector(i, i, i) );

        Hook.add("render","",function() {
            Render.setFilterMag(1);
            Render.pushMatrix(scale_matrix, false);
            Render.setRenderTargetTexture("rt");
            Render.drawTexturedRect(0, 0, 512, 512);
        });
    }
}

// Supercool hidden comment that lua won't see ever