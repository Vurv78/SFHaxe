# SFHaxe
Proof of concept [Haxe](https://haxe.org) Library for the lua target that adds [StarfallEx](https://github.com/thegrb93/StarfallEx) bindings.  
The bindings are autogenerated by a Haxe script made using SFHaxe.  
If you want Haxe bindings for GLua to make addons instead of Starfall scripts, check out [gmodhaxe](https://github.com/ponobodod/gmodhaxe).

Hopefully will have the script in this repo as well, made in Haxe.  
https://lib.haxe.org/p/sfhaxe

## What is haxe?
See [what is haxe?](https://haxe.org/manual/introduction-what-is-haxe.html), a [code sample](https://try.haxe.org/embed/44ddE#code1) and [the power of haxe](#The-Power-of-Haxe)

## Features:
* Bindings for every Library and Type in StarfallEx.
* Bindings are generated automatically, so it can be updated very easily.
* Autogenerated Haxe field docs, so you can see what a function does inside your editor instead of going into the SF Helper.
* Proper generated Haxe operator overloads for SF metamethods

## Todos:
* Publish the autogeneration script
* Rewrite the autogeneration script in Haxe (maybe)
* ~~Recognize metamethods and turn them into haxe metamethods.~~
* Add a standard library that assists with the stuff that can't be autogenerated (Std.print uses io which starfall doesn't have.)

## How to use:
Look at the examples/Basic Full directory for a full example.
First, download sfhaxe through haxelib by putting this in your command line.  
```hxml
haxelib install sfhaxe
```
``haxelib install sfhaxe``  

Make a haxe project, and in your ``build.hxml`` file put this:  
```hxml
# Optional, but I recommend this to make your project smaller. (Deletes any unused code from the final compiled result)
-dce full

# Link to sfhaxe with the -lib command.
--library sfhaxe

# Either you can define a single one of these, both of them, or SHARED depending on what you want the chip to be targeted for.
--define SERVER
--define CLIENT

# Set the haxe path to the current directory of the hxml + /src/
-p src

# Tell the compiler to generate lua code at this directory.
--lua bin/sfstuff.lua

# Set the main class to compile from. In this case, you have a file called Main.hx in /src/ that creates class Main.
-main Main
```

## What would you use this for?
* If you wanted to have typed, neater code with all of the features that Haxe brings. See [The Power of Haxe](#The-Power-of-Haxe)
* If you don't want your source code to be stolen, this works as well since the source is transpiled into pretty much unrecognizable lua.

## The Power of Haxe
* Macros
* [Map Comprehension](https://haxe.org/manual/lf-map-comprehension.html)
* [Conditional Compilation](https://haxe.org/manual/lf-condition-compilation.html)
* [Object Oriented Classes](https://haxe.org/manual/types-class-instance.html)
* [String Interpolation](https://haxe.org/manual/lf-string-interpolation.html)
* [Abstract Types](https://haxe.org/manual/types-abstract.html)
* [Much more](https://haxe.org/documentation/introduction/language-features.html)
