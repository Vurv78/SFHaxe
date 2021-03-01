package sf.library;
@:native("builtins") extern class Builtins {
	//  SHARED
	/*  Translates the specified position and angle from the specified local coordinate system */
	@:native("localToWorld") public static function localToWorld(localPos:Any,localAng:Any,originPos:Any,originAngle:Any):Any;
	//  SHARED
	/*  Gets the starfall version */
	@:native("version") public static function version():Any;
	//  SHARED
	/*  If the result of the first argument is false or nil, an error is thrown with the second argument as the message. */
	@:native("assert") public static function assert(condition:Any,msg:Any):Void;
	//  SHARED
	/*  Attempts to convert the value to a string. */
	@:native("tostring") public static function tostring(obj:Any):Any;
	//  SHARED
	/*  Generates the CRC checksum of the specified string. (https://en.wikipedia.org/wiki/Cyclic_redundancy_check) */
	@:native("crc") public static function crc(stringToHash:Any):Any;
	//  SHARED
	/*  Attempts to convert the value to a number. */
	@:native("tonumber") public static function tonumber(obj:Any):Any;
	//  SHARED
	/*  Throws an exception */
	@:native("throw") public static function _throw(msg:Any,level:Any,uncatchable:Any):Void;
	//  SHARED
	/*  Gets the value of a table index without invoking a metamethod */
	@:native("rawget") public static function rawget(table:Any,key:Any):Any;
	//  SHARED
	/*  Gets the current ram usage of the gmod lua environment */
	@:native("ramUsed") public static function ramUsed():Any;
	//  SHARED
	/*  Creates a Quaternion */
	@:native("Quaternion") public static function Quaternion(r:Any,i:Any,j:Any,k:Any):Any;
	//  SHARED
	/*  Returns if this is the first time this hook was predicted. */
	@:native("isFirstTimePredicted") public static function isFirstTimePredicted():Any;
	//  SHARED
	/*  Returns an iterator function for a for loop, to return ordered key-value pairs from a table. */
	@:native("ipairs") public static function ipairs(tbl:Any):Any;
	//  SHARED
	/*  Prints a message to the player's chat. */
	@:native("print") public static function print(...varargs:Any):Void;
	//  SHARED
	/*  Returns the current count for this Think's CPU Time.
 This value increases as more executions are done, may not be exactly as you want.
 If used on screens, will show 0 if only rendering is done. Operations must be done in the Think loop for them to be counted. */
	@:native("quotaUsed") public static function quotaUsed():Any;
	//  SHARED
	/*  Lua's pcall with SF throw implementation
 Calls a function and catches an error that can be thrown while the execution of the call. */
	@:native("pcall") public static function pcall(func:Any,arguments:Any):Any;
	//  SHARED
	/*  Sets a CPU soft quota which will trigger a catchable error if the cpu goes over a certain amount. */
	@:native("setSoftQuota") public static function setSoftQuota(quota:Any):Void;
	//  SHARED
	/*  Gets the Average CPU Time in the buffer */
	@:native("quotaAverage") public static function quotaAverage():Any;
	//  SHARED
	/*  Returns the total average time for all chips by the player. */
	@:native("quotaTotalAverage") public static function quotaTotalAverage():Any;
	//  SHARED
	/*  Returns if the table has an isValid function and isValid returns true. */
	@:native("isValid") public static function isValid(object:Any):Any;
	//  SHARED
	/*  Returns the table of scripts used by the chip */
	@:native("getScripts") public static function getScripts():Any;
	//  SHARED
	/*  Set the value of a table index without invoking a metamethod */
	@:native("rawset") public static function rawset(table:Any,key:Any,value:Any):Void;
	//  SHARED
	/*  Creates a Vector struct. */
	@:native("Vector") public static function Vector(x:Any,y:Any,z:Any):Any;
	//  SERVER
	/*  Sets the chip's userdata that the duplicator tool saves. max 1MiB; can be changed with convar sf_userdata_max */
	@:native("setUserdata") public static function setUserdata(str:Any):Void;
	//  CLIENT
	/*  Sets clipboard text. Only works on the owner of the chip. */
	@:native("setClipboardText") public static function setClipboardText(txt:Any):Void;
	//  SHARED
	/*  GLua's debug.getlocal()
 Returns the name of a function or stack's locals */
	@:native("debugGetLocal") public static function debugGetLocal(funcOrStackLevel:Any,index:Any):Any;
	//  SHARED
	/*  Sets the current instance to allow HUD drawing. Only works if player is in your vehicle or
 if it's ran on yourself or if the player is connected to your hud and you want to disconnect them */
	@:native("enableHud") public static function enableHud(ply:Any,active:Any):Void;
	//  SHARED
	/*  Checks if the chip is capable of performing an action. */
	@:native("hasPermission") public static function hasPermission(perm:Any,obj:Any):Void;
	//  SHARED
	/*  Gets the CPU Time max.
 CPU Time is stored in a buffer of N elements, if the average of this exceeds quotaMax, the chip will error. */
	@:native("quotaMax") public static function quotaMax():Any;
	//  SHARED
	/*  Returns whoever created the chip */
	@:native("owner") public static function owner():Any;
	//  CLIENT
	/*  Sets the chip's display name */
	@:native("setName") public static function setName(name:Any):Void;
	//  SHARED
	/*  Returns a string representing the name of the type of the passed object. */
	@:native("type") public static function type(obj:Any):Any;
	//  CLIENT
	/*  Returns the local player's camera position */
	@:native("eyePos") public static function eyePos():Any;
	//  SHARED
	/*  Returns a new VMatrix */
	@:native("Matrix") public static function Matrix():Any;
	//  CLIENT
	/*  Is permission request fully satisfied. */
	@:native("permissionRequestSatisfied") public static function permissionRequestSatisfied():Any;
	//  SHARED
	/*  Gets the moving average of ram usage of the gmod lua environment */
	@:native("ramAverage") public static function ramAverage():Any;
	//  SHARED
	/*  Lua's xpcall with SF throw implementation, and a traceback for debugging.
 Attempts to call the first function. If the execution succeeds, this returns true followed by the returns of the function.
 If execution fails, this returns false and the second function is called with the error message, and the stack trace. */
	@:native("xpcall") public static function xpcall(func:Any,callback:Any,...varargs:Any):Any;
	//  SHARED
	/*  Returns the entity representing a processor that this script is running on. */
	@:native("chip") public static function chip():Any;
	//  SHARED
	/*  Runs an included directory, but does not cache the result. */
	@:native("dodir") public static function dodir(dir:Any,loadpriority:Any):Any;
	//  SHARED
	/*  Creates a table struct that resembles a Color */
	@:native("Color") public static function Color(r:Any,g:Any,b:Any,a:Any):Any;
	//  SHARED
	/*  GLua's loadstring
 Works like loadstring, except that it executes by default in the main builtins_library */
	@:native("loadstring") public static function loadstring(str:Any):Any;
	//  SHARED
	/*  Creates an Angle struct. */
	@:native("Angle") public static function Angle(p:Any,y:Any,r:Any):Any;
	//  SHARED
	/*  Execute a console command */
	@:native("concmd") public static function concmd(cmd:Any):Void;
	//  CLIENT
	/*  Returns the local player's camera forward vector */
	@:native("eyeVector") public static function eyeVector():Any;
	//  SHARED
	/*  GLua's debug.getinfo()
 Returns a DebugInfo structure containing the passed function's info https://wiki.facepunch.com/gmod/Structures/DebugInfo */
	@:native("debugGetInfo") public static function debugGetInfo(funcOrStackLevel:Any,fields:Any):Any;
	//  SHARED
	/*  Returns the total used time for all chips by the player. */
	@:native("quotaTotalUsed") public static function quotaTotalUsed():Any;
	//  SHARED
	/*  Gets all libraries */
	@:native("getLibraries") public static function getLibraries():Any;
	//  SHARED
	/*  Prints a message to a target player's chat as long as they're connected to a hud. */
	@:native("printHud") public static function printHud(ply:Any,...varargs:Any):Void;
	//  SHARED
	/*  This function takes a numeric indexed table and return all the members as a vararg. */
	@:native("unpack") public static function unpack(tbl:Any):Any;
	//  SHARED
	/*  Same as owner() on the server. On the client, returns the local player */
	@:native("player") public static function player():Any;
	//  SHARED
	/*  Simple version of Lua's getfenv
 Returns the current builtins_library */
	@:native("getfenv") public static function getfenv():Any;
	//  SHARED
	/*  Try to execute a function and catch possible exceptions
 Similar to xpcall, but a bit more in-depth */
	@:native("try") public static function _try(func:Any,__catch:Any):Void;
	//  SHARED
	/*  Runs an included script, but does not cache the result.
 Pretty much like standard Lua dofile() */
	@:native("dofile") public static function dofile(file:Any):Any;
	//  SHARED
	/*  Runs an included script and caches the result.
 Works pretty much like standard Lua require() */
	@:native("require") public static function require(file:Any):Any;
	//  SHARED
	/*  Prints a table to player's chat */
	@:native("printTable") public static function printTable(tbl:Any):Void;
	//  CLIENT
	/*  Setups request for overriding permissions. */
	@:native("setupPermissionRequest") public static function setupPermissionRequest(perms:Any,desc:Any,showOnUse:Any):Void;
	//  SHARED
	/*  Gets the max allowed ram usage of the gmod lua environment */
	@:native("ramMax") public static function ramMax():Any;
	//  SHARED
	/*  Lua's setfenv
 Works like setfenv, but is restricted on functions */
	@:native("setfenv") public static function setfenv(func:Any,tbl:Any):Any;
	//  SHARED
	/*  Returns an iterator function for a for loop that will return the values of the specified table in an arbitrary order. */
	@:native("pairs") public static function pairs(tbl:Any):Any;
	//  CLIENT
	/*  Opens the permission request dialogue if the player is connected to HUD. setupPermissionRequest must be called first */
	@:native("sendPermissionRequest") public static function sendPermissionRequest():Void;
	//  SHARED
	/*  Runs an included script and caches the result.
 Works pretty much like standard Lua require() */
	@:native("requiredir") public static function requiredir(dir:Any,loadpriority:Any):Any;
	//  SHARED
	/*  Returns the entity with index 'num' */
	@:native("entity") public static function entity(num:Any):Any;
	//  SHARED
	/*  Returns the next key and value pair in a table. */
	@:native("next") public static function next(tbl:Any,k:Any):Any;
	//  SHARED
	/*  Creates a 'middleclass' class object that can be used similarly to Java/C++ classes. See https://github.com/kikito/middleclass for examples. */
	@:native("class") public static function _class(name:Any,super:Any):Void;
	//  SHARED
	/*  Translates the specified position and angle into the specified coordinate system */
	@:native("worldToLocal") public static function worldToLocal(pos:Any,ang:Any,newSystemOrigin:Any,newSystemAngles:Any):Any;
	//  SHARED
	/*  Gets an SF type's methods table */
	@:native("getMethods") public static function getMethods(sfType:Any):Any;
	//  SHARED
	/*  Sets, changes or removes a table's metatable. Doesn't work on most internal metatables */
	@:native("setmetatable") public static function setmetatable(tbl:Any,meta:Any):Any;
	//  SHARED
	/*  Used to select single values from a vararg or get the count of values in it. */
	@:native("select") public static function select(parameter:Any,vararg:Any):Any;
	//  SHARED
	/*  Throws an error. Similar to 'throw' but throws whatever you want instead of an SF Error. */
	@:native("error") public static function error(msg:Any,level:Any):Void;
	//  SERVER
	/*  Gets the chip's userdata that the duplicator tool loads */
	@:native("getUserdata") public static function getUserdata():Any;
	//  SHARED
	/*  Returns the metatable of an object. Doesn't work on most internal metatables */
	@:native("getmetatable") public static function getmetatable(tbl:Any):Any;
	//  CLIENT
	/*  Returns the local player's camera angles */
	@:native("eyeAngles") public static function eyeAngles():Any;
	//  CLIENT
	/*  Prints a message to your chat, console, or the center of your screen. */
	@:native("printMessage") public static function printMessage(mtype:Any,text:Any):Void;
}

