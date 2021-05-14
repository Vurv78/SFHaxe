/*
    This file will contain structs that are hardcoded because the SF docs can't really provide the information for.
    Such as:
        Classes inheriting from others (Player should extend Entity)
        Lua operators -> Haxe operators
*/

import haxe.ds.StringMap;

typedef HxOpData = { mdata: String, nargs: Int };

final HAXE_OPS: StringMap<HxOpData> = [
    "__mul" => { mdata: "@:op(A*B)", nargs: 1 },
    "__add" => { mdata: "@:op(A+B)", nargs: 1 },
    "__sub" => { mdata: "@:op(A-B)", nargs: 1 },
    "__div" => { mdata: "@:op(A/B)", nargs: 1 },
    "__newindex" => { mdata: "@:op([])", nargs: 2 }, // Array Indexing SET, Two args to differentiate from GET
    "__index" => { mdata: "@:op([])", nargs: 1 }, // Array Indexing GET
    "__unm" => { mdata: "@:op(-A)", nargs: 0 }, // Negative Unary Operator
    "__eq" => { mdata: "@:op(A==B)", nargs: 1 } // Is equal to
];


final GENERIC_LUA_TYPES = [
    "boolean" => "Bool",
    "number" => "Float", // Haxe's "Float" is actually a double. (F64)
    "string" => "std.String", // Use std.String because for some reason Haxe assumes we're trying to use sf.library.String.
    "table" => "lua.Table<Dynamic,Dynamic>",
    "function" => "haxe.Constraints.Function",
    "thread" => "lua.Thread",
    "..." => "Dynamic", // Any type of multiple values or no values potentially.

    "any" => "Any",

    "nil" => "Void", // Shouldn't happen
];

// Classes that extend other ones.
final CLASS_EXTENSIONS = [
    "Player" => "Entity",
    "Vehicle" => "Entity",
    "Hologram" => "Entity",
    "Weapon" => "Entity",
    "Npc" => "Entity",
];