package sf.macros;

import haxe.macro.Compiler;
import haxe.macro.Context;



class Init {
    static function run() {
        #if macro
            // https://api.haxe.org/haxe/macro/Compiler.html
            // This lets us hook _hx_error and fix that, also define whether the chip is --@server or --@client
            Compiler.includeFile("sf/macros/injected/fixes.lua");
            // Compiler.excludeFile("lua/_lua/_hx_tostring.lua"); <-- It'd be nice if we could do this....
            Sys.println("Generating SFHaxe code.");

            #if SHARED
                Compiler.includeFile("sf/macros/injected/realms/shared.lua");
                Compiler.define("CLIENT");
                Compiler.define("SERVER");
            #else
                #if SERVER
                    #if CLIENT
                        Compiler.includeFile("sf/macros/injected/realms/shared.lua");
                        Compiler.define("SHARED");
                    #else
                        Compiler.includeFile("sf/macros/injected/realms/server.lua");
                    #end
                #else
                    #if CLIENT
                        Compiler.includeFile("sf/macros/injected/realms/client.lua");
                    #else
                        // Neither are defined, default is shared.
                        Compiler.includeFile("sf/macros/injected/realms/shared.lua");
                        Compiler.define("CLIENT");
                        Compiler.define("SERVER");
                        Compiler.define("SHARED");
                    #end
                #end
            #end
        #end
    }
}