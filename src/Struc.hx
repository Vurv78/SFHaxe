using StringTools;

// There's no public import in Haxe.
typedef LuaTable<T, T2> = lua.Table<T, T2>;

class SFType {
    public var raw:String;
    public var nullable:Bool;
    public var variadic:Bool;
    public var type:Null<String>;
    public var types:Null<Array<String>>;

    public function new(str:String) {
        // Basics
        this.raw = str;
        this.nullable = false;

        var has_multi_types = str.contains("|");
        if (has_multi_types){
            // Multiple types.
            this.types = [];

            for (type in str.split("|")) {
                if(type=="nil")
                    this.nullable = true;
                this.types.push(type);
            }
        }else{
            // Single type.
            var variadic = str.startsWith("...");
            var nullable = str.endsWith("?");
            this.nullable = nullable;
            this.variadic = variadic;

            if ( nullable )
                str = str.substr(0, str.length-1);
            if ( variadic )
                str = str.substring(3);
            this.type = str;
        }
    }
}

abstract SFTypeConverter(String) from String {
    public inline function into() {
        return new SFType(this);
    }
}

typedef ReturnDoc = {
    type: SFTypeConverter,
    value: String,
    description: String
}

typedef ParamDoc = {
    type: SFTypeConverter,
    value: String,
    description: String,
    name: String,
}

typedef MethodDoc = {
    path: String,
    realm: String,
    // class: String, // Stupid haxe keyword detection
    name: String,
    description: String,
    ?returns: LuaTable<Int, ReturnDoc>,
    params: LuaTable<Int, ParamDoc>
}

typedef HookDoc = {
    path: String,
    realm: String,
    // class: String, // Stupid haxe keyword detection
    name: String,
    description: String,
    params: LuaTable<Int, ParamDoc>
}

typedef DirectiveDoc = {
    path: String,
    realm: String,
    // class: String, // Stupid haxe keyword detection
    name: String,
    description: String,
    params: LuaTable<Int, ParamDoc>
}

typedef TypeDoc = {
    path: String,
    realm: String,
    // class: String, // Stupid haxe keyword detection
    name: String,
    description: String,
    params: LuaTable<Int, ParamDoc>,
    methods: LuaTable<String, MethodDoc>
}

typedef LibraryDoc = {
    methods: LuaTable<String, MethodDoc>,
    //tables: // Array<>, It's empty and we don't use it anyway.
    libtbl: LuaTable<Int, String>,
    path: String,
    realm: String
}

typedef Doc = {
    Version: String,
    Libraries: LuaTable<String, LibraryDoc>,
    Hooks: LuaTable<String, HookDoc>,
    Directives: LuaTable<String, DirectiveDoc>,
    Types: LuaTable<String, TypeDoc>,
}