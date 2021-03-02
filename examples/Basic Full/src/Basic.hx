import sf.library.Coroutine;
import sf.library.Builtins.Angle;
import sf.type.Angle;
import sf.type.Coroutine;

class Basic {
    static function main(){
        var co: Coroutine = Coroutine.create((a:Int) -> {
            trace('Thanks for the number, $a');
            Coroutine.yield(420);
            var ang: Angle = Angle(1, 2, 3); // Haxe is smart enough to distinguish whether to use 'Angle' the function, or 'Angle' the type.
            var ang2: Angle = ang.__add( Angle(5,5,5) );

            trace(ang2);
            return 69;
        });
        var first_num = Coroutine.resume(co, 58);
        trace(first_num); // Should print 420
    }
}
