using StringTools;

import haxe.ds.Map;
import haxe.ds.StringMap;

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

typedef GenericDoc = {
    var path: String;
    var realm: String;

    @:alias("class")
    var _class: String;
}

typedef ReturnDoc = {
    type: SFTypeConverter, // SFTypeConverter
    value: String,
    description: String
}

// Extends ReturnDoc
typedef ParamDoc = {
    > ReturnDoc,
    name: String,
}

typedef MethodDoc = {
    > GenericDoc,
    var _class: String; // Stupid haxe keyword detection

    var name: String;
    var description: String;
    var ?params: Array<ParamDoc>;
    var ?returns: Array<ParamDoc>;
}

typedef HookDoc = MethodDoc;

typedef DirectiveDoc = {
    > GenericDoc,

    var name: String;
    var description: String;
    var params: Array<ParamDoc>;
}

// Extends DirectiveDoc and adds methods
typedef TypeDoc = {
    > GenericDoc,

    var name: String;
    var description: String;
    var methods: Map<String, MethodDoc>;
}

typedef LibraryDoc = {
    methods: Map<String, MethodDoc>,
    //tables: // Array<>, It's empty and we don't use it anyway.
    libtbl: Array<String>,
    path: String,
    realm: String
}

typedef Doc = {
    Version: String,
    Libraries: Map<String, LibraryDoc>,
    Hooks: Map<String, HookDoc>,
    Directives: Map<String, DirectiveDoc>,
    Types: Map<String, TypeDoc>,
}

