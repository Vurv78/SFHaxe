package sf.macros;

import haxe.macro.Compiler;
import haxe.macro.Context;



class Init {
    static function run() {
        #if macro
            // https://api.haxe.org/haxe/macro/Compiler.html
            // This lets us hook _hx_error and fix that, also define whether the chip is --@server or --@client
            Compiler.includeFile("sf/macros/injected/fixes.lua");
            Sys.println("Generating SFHaxe code.");

            var name = Context.definedValue("NAME");
            var author = Context.definedValue("AUTHOR");

            if (name == null)
                name = "Generic SFHaxe Chip";
            if (author == null)
                author = "A cool dude using SFHaxe";

            Context.onAfterGenerate(function() {
                var writer = sys.io.File.append( Compiler.getOutput() );
                writer.writeString("\n-- SFHaxe Footer --\n");
                writer.writeString('--@name ${ name }\n');
                writer.writeString('--@author ${ author }\n');

                #if MODEL
                    writer.writeString('--@model ${ Context.definedValue("MODEL") }\n');
                #end

                #if SUPERUSER
                    writer.writeString('--@superuser\n');
                #end

                #if CLIENTMAIN
                    writer.writeString('--@clientmain ${ Context.definedValue("CLIENTMAIN") }\n');
                #end

                #if INCLUDEDATA
                    writer.writeString('--@includedata ${ Context.definedValue("INCLUDEDATA") }\n');
                #end

                // You shouldn't need to use --@include or --@includedir since Haxe compiles this all to one lua file.

                #if !SHARED
                    #if SERVER
                        #if !CLIENT
                            // SERVER
                            writer.writeString("--@server\n");
                        #end
                    #elseif CLIENT
                        #if !SERVER
                            // CLIENT
                            writer.writeString("--@client\n");
                        #end
                    #end
                #end

                writer.close();

                Sys.println("Generated SFHaxe code");
            });
        #end
    }
}