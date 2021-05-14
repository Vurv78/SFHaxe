// Generated by SFHaxe 0.3.1
package sf.library;
@:native("socket") extern class Socket {
	/**
		CLIENT
		 This function is a shortcut that creates and returns a TCP client object connected to a remote address at a given port.
		 Optionally, the user can also specify the local address and port to bind (locaddr and locport)
	**/
	#if CLIENT @:native("connect6") public static function connect6(addr:Float, port:Float, ?laddr:Null<Float>, ?lport:Null<Float>):lua.Table<Dynamic,Dynamic>;#end
	/**
		CLIENT
		 Creates and returns an IPv6 TCP master object.
		 A master object can be transformed into a server object with the method listen (after a call to bind) or into a client object with the method connect.
		 The only other method supported by a master object is the close method.
		 Note: The TCP object returned will have the option "ipv6-v6only" set to true.
	**/
	#if CLIENT @:native("tcp6") public static function tcp6():lua.Table<Dynamic,Dynamic>;#end
	/**
		CLIENT
		 Creates and returns an IPv4 TCP master object.
		 A master object can be transformed into a server object with the method listen (after a call to bind) or into a client object with the method connect.
		 The only other method supported by a master object is the close method.
	**/
	#if CLIENT @:native("tcp") public static function tcp():lua.Table<Dynamic,Dynamic>;#end
	/**
		CLIENT
		 This function is a shortcut that creates and returns a TCP client object connected to a remote address at a given port.
		 Optionally, the user can also specify the local address and port to bind (locaddr and locport), or restrict the socket family to "inet" or "inet6".
		 Without specifying family to connect, whether a tcp or tcp6 connection is created depends on your system configuration.
	**/
	#if CLIENT @:native("connect") public static function connect(addr:Float, port:Float, ?laddr:Null<Float>, ?lport:Null<Float>, ?family:Null<std.String>):lua.Table<Dynamic,Dynamic>;#end
	/**
		CLIENT
		 This function is a shortcut that creates and returns a TCP client object connected to a remote address at a given port.
		 Optionally, the user can also specify the local address and port to bind (locaddr and locport)
	**/
	#if CLIENT @:native("connect4") public static function connect4(addr:Float, port:Float, ?laddr:Null<Float>, ?lport:Null<Float>):lua.Table<Dynamic,Dynamic>;#end
	/**
		CLIENT
		 Creates and returns an IPv4 TCP master object.
		 A master object can be transformed into a server object with the method listen (after a call to bind) or into a client object with the method connect.
		 The only other method supported by a master object is the close method.
	**/
	#if CLIENT @:native("tcp4") public static function tcp4():lua.Table<Dynamic,Dynamic>;#end
}

