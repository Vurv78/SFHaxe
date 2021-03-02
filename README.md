# SFHaxe
Proof of concept [Haxe](https://github.com/HaxeFoundation/haxe) Library for the lua target that adds [StarfallEx](https://github.com/thegrb93/StarfallEx) bindings.  
This was autogenerated by a lua script I made.  
Hopefully will have the script in this repo as well, made in Haxe.  
https://lib.haxe.org/p/sfhaxe/0.1.0

## Features:
* Bindings for every Library and Type in StarfallEx.
* Bindings are autogenerated, so it can be updated incredibly easily.
* Published on lib.haxe.org

## Todos:
* Publish the autogeneration script
* Rewrite the autogeneration script in Haxe (maybe)
* Recognize metamethods and turn them into haxe metamethods.
* Add a standard library that assists with the stuff that can't be autogenerated (Std.print uses io which starfall doesn't have.)

## How to use:
Look at the examples/Basic Full directory for a full example.
First, download sfhaxe through haxelib by putting this in your command line.  
``haxelib install sfhaxe``  
Make a haxe project, and in your ``build.hxml`` file put this:  
``-lib sfhaxe``

## What would you use this for?
* If you wanted to have typed, (maybe neater) code.
* If you don't want your source code to be stolen, this works as well since it transpiles into lua.
* If you like the syntax of Haxe, which is a JS-like language.
* If you want the power of macros, actual classes, abstract classes and more thanks to Haxe. See [use cases](https://haxe.org/use-cases/) for Haxe.
