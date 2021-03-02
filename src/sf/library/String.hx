package sf.library;
@:native("string") extern class String {
	/**
		SHARED	
		 Returns the path only from a file's path, excluding the file itself.
	**/
	@:native("getPathFromFilename") public static function getPathFromFilename(str:Any):Any;
	/**
		SHARED	
		 Formats the specified values into the string given. http://www.cplusplus.com/reference/cstdio/printf/
	**/
	@:native("format") public static function format(str:Any,...varargs:Any):Any;
	/**
		SHARED	
		 Counts the number of characters in the string. This is equivalent to using the # operator.
	**/
	@:native("len") public static function len(str:Any):Any;
	/**
		SHARED	
		 Inserts commas for every third digit.
	**/
	@:native("comma") public static function comma(num:Any):Any;
	/**
		SHARED	
		 Removes trailing spaces/characters from a string.
	**/
	@:native("trimRight") public static function trimRight(str:Any,char:Any):Any;
	/**
		SHARED	
		 This functions main purpose is to replace certain character sequences in a string using Patterns.
	**/
	@:native("gsub") public static function gsub(str:Any,pattern:Any,replacement:Any,max:Any):Any;
	/**
		SHARED	
		 Replaces all occurrences of the supplied second string.
	**/
	@:native("replace") public static function replace(str:Any,find:Any,replace:Any):Any;
	/**
		SHARED	
		 Returns the time as a formatted string or table. http://www.cplusplus.com/reference/cstdio/printf/
 If format is not specified, the table will contain the following keys: ms (miliseconds); s (seconds); m (minutes); h (hours).
	**/
	@:native("formattedTime") public static function formattedTime(time:Any,format:Any):Any;
	/**
		SHARED	
		 Takes the given numerical bytes and converts them to a string.
	**/
	@:native("char") public static function char(...varargs:Any):Any;
	/**
		SHARED	
		 Sets the character at the specific index of the string.
	**/
	@:native("setChar") public static function setChar(str:Any,index:Any,replacement:Any):Any;
	/**
		SHARED	
		 Splits the string into a table of strings, separated by the second argument
	**/
	@:native("split") public static function split(str:Any,separator:Any):Any;
	/**
		SHARED	
		 Returns the number of UTF-8 sequences in the given string between positions startPos and endPos (both inclusive).
 If it finds any invalid UTF-8 byte sequence, returns false as well as the position of the first invalid byte.
	**/
	@:native("utf8len") public static function utf8len(str:Any,startPos:Any,endPos:Any):Any;
	/**
		SHARED	
		 Returns file name and extension.
	**/
	@:native("getFileFromFilename") public static function getFileFromFilename(str:Any):Any;
	/**
		SHARED	
		 Repeats the given string n times
	**/
	@:native("rep") public static function rep(str:Any,rep:Any,sep:Any):Any;
	/**
		SHARED	
		 Forces a string to contain only valid UTF-8 data. Invalid sequences are replaced with U+FFFD (the Unicode replacement character).
	**/
	@:native("utf8force") public static function utf8force(str:Any):Any;
	/**
		SHARED	
		 Using Patterns, returns an iterator which will return either one value if no capture groups are defined, or any capture group matches.
	**/
	@:native("gmatch") public static function gmatch(data:Any,pattern:Any):Any;
	/**
		SHARED	
		 Reverses a string.
	**/
	@:native("reverse") public static function reverse(str:Any):Any;
	/**
		SHARED	
		 Joins the values of a table together to form a string. (DEPRECATED! You should use table.concat instead)
	**/
	@:native("implode") public static function implode(separator:Any,pieces:Any):Any;
	/**
		SHARED	
		 Returns an iterator function that is called for every complete match of the pattern, all sub matches will be passed as to the loop. (DEPRECATED! You should use string.gmatch instead)
	**/
	@:native("gfind") public static function gfind(data:Any,pattern:Any):Any;
	/**
		SHARED	
		 Returns the last n-th characters of the string.
	**/
	@:native("right") public static function right(str:Any,num:Any):Any;
	/**
		SHARED	
		 Converts color to a string.
	**/
	@:native("fromColor") public static function fromColor(color:Any):Any;
	/**
		SHARED	
		 Converts a digital filesize to human-readable text.
	**/
	@:native("niceSize") public static function niceSize(size:Any):Any;
	/**
		SHARED	
		 Finds a Pattern in a string.
	**/
	@:native("match") public static function match(str:Any,pattern:Any,start:Any):Any;
	/**
		SHARED	
		 Whether or not the second passed string matches the end of the first.
	**/
	@:native("endsWith") public static function endsWith(str:Any,end:Any):Any;
	/**
		SHARED	
		 Splits the string into characters and creates a sequential table of characters.
 As a result of the encoding, non-ASCII characters will be split into more than one character in the output table.
 Each character value in the output table will always be 1 byte.
	**/
	@:native("toTable") public static function toTable(str:Any):Any;
	/**
		SHARED	
		 Converts time to minutes and seconds string.
	**/
	@:native("toMinutesSeconds") public static function toMinutesSeconds(time:Any):Any;
	/**
		SHARED	
		 Returns the given string's characters in their numeric ASCII representation.
	**/
	@:native("byte") public static function byte(str:Any,start:Any,end:Any):Any;
	/**
		SHARED	
		 Formats the supplied number (in seconds) to the highest possible time unit
	**/
	@:native("niceTime") public static function niceTime(time:Any):Any;
	/**
		SHARED	
		 Changes any lower-case letters in a string to upper-case letters.
	**/
	@:native("upper") public static function upper(str:Any):Any;
	/**
		SHARED	
		Returns a sub-string, starting from the character at position startPos of the string (inclusive)
 and optionally ending at the character at position endPos of the string (also inclusive).
 If EndPos is not given, the rest of the string is returned.
	**/
	@:native("sub") public static function sub(str:Any,startPos:Any,endPos:Any):Void;
	/**
		SHARED	
		 Returns char value from the specified index in the supplied string. (DEPRECATED! You should use string.sub instead)
	**/
	@:native("getChar") public static function getChar(str:Any,index:Any):Any;
	/**
		SHARED	
		 Returns extension of the file-path.
	**/
	@:native("getExtensionFromFilename") public static function getExtensionFromFilename(str:Any):Any;
	/**
		SHARED	
		 Returns an iterator (like string.gmatch) which returns both the position and codepoint of each utf8 character in the string.
 It raises an error if it meets any invalid byte sequence.
	**/
	@:native("utf8codes") public static function utf8codes(str:Any):Any;
	/**
		SHARED	
		 Escapes all special characters within a string, making the string safe for inclusion in a Lua pattern.
	**/
	@:native("patternSafe") public static function patternSafe(str:Any):Any;
	/**
		SHARED	
		 Returns the binary bytecode of the given function.
	**/
	@:native("dump") public static function dump(func:Any,strip:Any):Any;
	/**
		SHARED	
		 Attempts to find the specified substring in a string, uses Patterns by default. https://wiki.facepunch.com/gmod/Patterns
	**/
	@:native("find") public static function find(haystack:Any,needle:Any,start:Any,noPatterns:Any):Any;
	/**
		SHARED	
		 Converts time to minutes, seconds and miliseconds string.
	**/
	@:native("toMinutesSecondsMilliseconds") public static function toMinutesSecondsMilliseconds(time:Any):Any;
	/**
		SHARED	
		 Removes the extension of a path
	**/
	@:native("stripExtension") public static function stripExtension(path:Any):Any;
	/**
		SHARED	
		 Escapes special characters for JavaScript in a string, making the string safe for inclusion in to JavaScript strings.
	**/
	@:native("javascriptSafe") public static function javascriptSafe(str:Any):Any;
	/**
		SHARED	
		 Whether or not the first string starts with the second
	**/
	@:native("startWith") public static function startWith(str:Any,start:Any):Any;
	/**
		SHARED	
		 Changes any upper-case letters in a string to lower-case letters.
	**/
	@:native("lower") public static function lower(str:Any):Any;
	/**
		SHARED	
		 Returns everything left of supplied place of that string.
	**/
	@:native("left") public static function left(str:Any,num:Any):Any;
	/**
		SHARED	
		 Removes leading spaces/characters from a string
	**/
	@:native("trimLeft") public static function trimLeft(str:Any,char:Any):Any;
	/**
		SHARED	
		 Returns the codepoints (as numbers) from all characters in the given string that start between byte position startPos and endPos.
 It raises an error if it meets any invalid byte sequence.
	**/
	@:native("utf8codepoint") public static function utf8codepoint(str:Any,startPos:Any,endPos:Any):Any;
	/**
		SHARED	
		 Returns the byte-index of the n'th UTF-8-character after the given startPos (nil if none).
 startPos defaults to 1 when n is positive and -1 when n is negative. If n is zero,
 this function instead returns the byte-index of the UTF-8-character startPos lies within.
	**/
	@:native("utf8offset") public static function utf8offset(str:Any,n:Any,startPos:Any):Any;
	/**
		SHARED	
		 Splits a string up wherever it finds the given separator
	**/
	@:native("explode") public static function explode(separator:Any,str:Any,patterns:Any):Any;
	/**
		SHARED	
		 Removes leading and trailing spaces/characters of a string
	**/
	@:native("trim") public static function trim(str:Any,char:Any):Any;
	/**
		SHARED	
		 Receives zero or more integers, converts each one to its corresponding UTF-8 byte sequence
 and returns a string with the concatenation of all these sequences
	**/
	@:native("utf8char") public static function utf8char(...varargs:Any):Any;
	/**
		SHARED	
		 Returns a path with all .. accounted for
	**/
	@:native("normalizePath") public static function normalizePath(str:Any):Any;
	/**
		SHARED	
		 Converts string with RGBA values separated by spaces into a color.
	**/
	@:native("toColor") public static function toColor(str:Any):Any;
}

