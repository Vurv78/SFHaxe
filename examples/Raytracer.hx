import sf.library.*;
import sf.library.Builtins.*;
import sf.type.*;

final RES = 512;
final FILTER = lua.Table.fromArray([chip()]);

typedef TraceResult = {
    HitNormal: Vector,
    HitSky: Bool,
    // Hopefully will have these return values in a standard library at some point.
}

function canRun() {
    var total_average: Float = quotaTotalAverage();
    var quota_max: Float = quotaMax();
    return total_average < quota_max*0.5;
}

function loadRender() {
    var chip:Entity = chip();
    var sundir: Vector = Game.getSunInfo();

    var cam_pos: Vector = chip.getPos();
    var cam_angle: Angle = chip.getAngles();

    var bench: Int = Timer.curtime();
    var scr_res = RES-1; // haxe ... loops are non-inclusive of the final value.
    for (Y in 0...RES) {
        for (X in 0...RES) {
            var dir:Vector = Vector(1,1-(X/scr_res)-0.5,1-(Y/scr_res)-0.5);
            dir.rotate(cam_angle);
            dir.mul(60000);

            var endpos: Vector = cam_pos + dir;

            var trace: TraceResult = Trace.trace( cam_pos, endpos, FILTER, null, null, null );
            var col: Color = Color(255, 255, 255, 255);
            if(trace.HitSky) {
                col = Color(0, 0, 255, 255);
            }else {
                var shading: Float = trace.HitNormal.dot(sundir);
                // TODO: When operator overloads work, get rid of this awful loop
                for(I in 1...4) {
                    var v: Float = col[I];
                    col[I] = v * shading;
                }
            }
            Render.selectRenderTarget("rt");
                Render.setColor( col );
                Render.drawRectFast(X, Y, 1, 1);
            Render.selectRenderTarget(null);
            if(!canRun()) // Cool syntax from C/C++
                Coroutine.yield();
        }
    }
    var ct: Float = Timer.curtime();
    trace('Finished render in ${bench - ct} seconds!');
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