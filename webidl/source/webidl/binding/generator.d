module webidl.binding.generator;

import std.stdio;
import webidl.grammar;
import pegged.grammar : ParseTree;

import std.array : appender, array, Appender;
import std.algorithm;
import std.range : chain, enumerate;
import std.conv : text, to;
import std.range : zip, only, retro;
import std.typecons : Flag, No, Yes;
import openmethods;

enum dKeywords = ["abstract","alias","align","asm","assert","auto","body","bool","break","byte","case","cast","catch","cdouble","cent","cfloat","char","class","const","continue","creal","dchar","debug","default","delegate","delete","deprecated","do","double","else","enum","export","extern","false","final","finally","float","for","foreach","foreach_reverse","function","goto","idouble","if","ifloat","immutable","import","in","inout","int","interface","invariant","ireal","is","lazy","long","macro","mixin","module","new","nothrow","null","out","override","package","pragma","private","protected","public","pure","real","ref","return","scope","shared","short","static","struct","super","switch","synchronized","template","this","throw","true","try","typedef","typeid","typeof","ubyte","ucent","uint","ulong","union","unittest","ushort","version","void","wchar","while","with","__FILE__","__FILE_FULL_PATH__","__MODULE__","__LINE__","__FUNCTION__","__PRETTY_FUNCTION__","__gshared","__traits","__vector","__parameters","__DATE__","__EOF__","__TIME__","__TIMESTAMP__","__VENDOR__","__VERSION__"];

enum jsKeywords = ["default", "arguments"];
mixin(registerMethods);

enum FunctionType { Function = 1, Attribute = 2, Static = 4, OpIndex = 8, OpIndexAssign = 16, OpDispatch = 32, Getter = 64, Setter = 128, Deleter = 256, Includes = 512, Partial = 1024, DictionaryConstructor = 2048, ExposedConstructor = 4096 };

struct Argument {
  string name;
  ParseTree type;
  ParseTree default_;
  ParseTree argRest;
  bool templated = false;
}

struct JsExportFunction {
  string parentTypeName;
  string name;
  Argument[] args;
  ParseTree result;
  FunctionType type;
  string manglePostfix;
}

struct DBindingFunction {
  string parentTypeName;
  string name;
  Argument[] args;
  ParseTree result;
  FunctionType type;
  string manglePostfix;
  string baseType;
  string customName;
  string handle;
}

struct DImportFunction {
  string parentTypeName;
  string name;
  Argument[] args;
  ParseTree result;
  FunctionType type;
  string manglePostfix;
}

interface Node {
  void toString(scope void delegate(const(char)[]) sink);
}

void indentToString(scope void delegate(const(char)[]) sink, Node[] children) {
  foreach(child; children) {
    bool begin = true;
    child.toString((const(char)[] line){
        if (!line)
          return;
        if (begin)
          sink("  ");
        sink(line);
        begin = line[$-1] == '\n';
      });
    if (!begin)
      sink("\n");
  }
}
class ModuleNode : Node {
  Module module_;
  Node[] children;
  this(Module module_, Node[] children) {
    this.module_ = module_;
    this.children = children;
  }
  void toString(scope void delegate(const(char)[]) sink) {
    sink("Module ");
    sink(module_.name);
    sink("\n");
    sink.indentToString(children);
  }
}
class ConstNode : Node {
  string type;
  string name;
  string value;
  this(string type, string name, string value) {
    this.type = type;
    this.name = name;
    this.value = value;
  }
  void toString(scope void delegate(const(char)[]) sink) {
    sink(name);
  }
}

class StructNode : Node {
  string name;
  ParseTree baseType;
  Node[] children;
  string[] functions;
  Flag!"isStatic" isStatic;
  this(string name, ParseTree baseType , Node[] children, string[] functions, Flag!"isStatic" isStatic = No.isStatic) {
    this(name, baseType, children, isStatic);
    this.functions = functions;
  }
  this(string name, ParseTree baseType , Node[] children, Flag!"isStatic" isStatic = No.isStatic) {
    this.name = name;
    this.baseType = baseType;
    this.children = children;
    this.isStatic = isStatic;
  }
  void toString(scope void delegate(const(char)[]) sink) {
    sink("Struct ");
    sink(name);
    sink("\n");
    sink.indentToString(children);
  }
  string getHandleSymbol() {
    if (baseType != ParseTree.init)
      return "_parent";
    return "handle";
  }
}

void toDBinding(virtual!Node node, Semantics semantics, IndentedStringAppender* a);
void toDBinding(virtual!Node node, StructNode parent, Semantics semantics, IndentedStringAppender* a);
void toJsExport(virtual!Node node, Semantics semantics, string[] filter, IndentedStringAppender* a);
void toJsExport(virtual!Node node, StructNode parent, Semantics semantics, string[] filter, IndentedStringAppender* a);
void toDImport(virtual!Node node, Semantics semantics, IndentedStringAppender* a);
void toDImport(virtual!Node node, StructNode parent, Semantics semantics, IndentedStringAppender* a);

@method void _toDBinding(Node node, Semantics semantics, IndentedStringAppender* a) {}
@method void _toDBinding(ModuleNode node, Semantics semantics, IndentedStringAppender* a) {
  node.children.each!(c => toDBinding(c, semantics, a));
}
@method void _toJsExport(Node node, Semantics semantics, string[] filter, IndentedStringAppender* a) {}
@method void _toJsExport(ModuleNode node, Semantics semantics, string[] filter, IndentedStringAppender* a) {
  node.children.each!(c => toJsExport(c, semantics, filter, a));
}
@method void _toJsExport(StructNode node, Semantics semantics, string[] filter, IndentedStringAppender* a) {
  import std.algorithm : canFind;
  bool[string] names;
  foreach(child; node.children) {
    auto fun = cast(FunctionNode)child;
    if (fun) {
      string name = mangleName(node.name, fun.name, fun.manglePostfix);
      if (auto p = name in names)
        continue;
      if (filter.length > 0 && !filter.canFind(name))
        continue;
      names[name] = true;
    }
    toJsExport(child, node, semantics, filter, a);
  }
}
@method void _toDImport(Node node, Semantics semantics, IndentedStringAppender* a) {}
@method void _toDImport(ModuleNode node, Semantics semantics, IndentedStringAppender* a) {
  node.children.each!(c => toDImport(c, semantics, a));
}
@method void _toDImport(StructNode node, Semantics semantics, IndentedStringAppender* a) {
  bool[string] names;
  foreach(child; node.children) {
    auto fun = cast(FunctionNode)child;
    if (fun) {
      string name = mangleName(node.name, fun.name, fun.manglePostfix);
      if (auto p = name in names)
        continue;
      names[name] = true;
    }
    toDImport(child, node, semantics, a);
  }
}

@method void _toDBinding(StructNode node, Semantics semantics, IndentedStringAppender* a) {
  a.putLn(["struct ", node.name.friendlyName, " {"]);
  a.indent();
  a.putLn("nothrow:");
  if (node.isStatic == Yes.isStatic) {
    a.putLn("static:");
  } else if (node.baseType != ParseTree.init) {
    auto p = node.baseType.matches[0] in semantics.types;
    if (p is null) {
      writeln("Error: Cannot find definition of type ", node.baseType.matches[0], ".");
    } else {
      a.put(["spasm.bindings.", p.module_.name, "."]);
    }
    a.put(node.baseType.matches[0].friendlyName);
    a.putLn(" _parent;");
    a.putLn("alias _parent this;");
    a.putLn("this(Handle h) {");
    a.indent();
    a.putLn(["_parent = .", node.baseType.matches[0].friendlyName,"(h);"]);
    a.undent();
    a.putLn("}");
  } else {
    a.putLn("JsHandle handle;");
    a.putLn("alias handle this;");
    a.putLn("this(Handle h) {");
    a.indent();
    a.putLn("this.handle = JsHandle(h);");
    a.undent();
    a.putLn("}");
  }
  node.children.each!(c => toDBinding(c, node, semantics, a));
  a.undent();
  a.putLn("}");
}
@method void _toDImport(MixinNode node, Semantics semantics, IndentedStringAppender* a) {
  auto dummyParent = new StructNode(node.name, ParseTree.init, node.children);
  bool[string] names;
  foreach(child; node.children) {
    auto fun = cast(FunctionNode)child;
    if (fun) {
      string name = mangleName(node.name, fun.name, fun.manglePostfix);
      if (auto p = name in names)
        continue;
      names[name] = true;
    }
    toDImport(child, dummyParent, semantics, a);
  }
}

@method void _toDBinding(Node node, StructNode parent, Semantics semantics, IndentedStringAppender* a) {
  // default od nothing
}
@method void _toJsExport(Node node, StructNode parent, Semantics semantics, string[] filter, IndentedStringAppender* a) {
  // default od nothing
}
@method void _toDImport(Node node, StructNode parent, Semantics semantics, IndentedStringAppender* a) {
  // default od nothing
}
@method void _toDBinding(ConstNode node, StructNode parent, Semantics semantics, IndentedStringAppender* a) {
  a.putLn(["enum ", node.type, " ", node.name, " = ", node.value, ";"]);
}

class StructIncludesNode : Node {
  string name;
  string baseType;
  Node[] children;
  this(string baseType, string name, Node[] children) {
    this.name = name;
    this.baseType = baseType;
    this.children = children;
  }
  void toString(scope void delegate(const(char)[]) sink) {
    sink("StructIncludes ");
    sink(name);
    sink("\n");
    sink.indentToString(children);
  }
}

class MixinNode : Node {
  string name;
  Node[] children;
  this(string name, Node[] children) {
    this.name = name;
    this.children = children;
  }
  void toString(scope void delegate(const(char)[]) sink) {
    sink("MixinNode ");
    sink(name);
    sink("\n");
    sink.indentToString(children);
  }
}
@method void _toDBinding(StructIncludesNode node, StructNode parent, Semantics semantics, IndentedStringAppender* a) {
  auto dummyParent = new StructNode(node.name, parent.baseType, node.children, parent.functions);
  node.children.each!(c => toDBinding(c, dummyParent, semantics, a));
}
@method void _toJsExport(MixinNode node, Semantics semantics, string[] filter, IndentedStringAppender* a) {
  import std.algorithm : canFind;
  auto dummyParent = new StructNode(node.name, ParseTree.init, node.children);
  bool[string] names;
  foreach(child; node.children) {
    auto fun = cast(FunctionNode)child;
    if (fun) {
      string name = mangleName(dummyParent.name, fun.name, fun.manglePostfix);
      if (auto p = name in names)
        continue;
      if (filter.length > 0 && !filter.canFind(name))
        continue;
      names[name] = true;
    }
    toJsExport(child, dummyParent, semantics, filter, a);
  }
}

@method void _toDImport(StructIncludesNode node, StructNode parent, Semantics semantics, IndentedStringAppender* a) {
  // auto dummyParent = new StructNode(node.name, ParseTree.init, node.children);
  // node.children.each!(c => toDImport(c, dummyParent, semantics, a));
}

class FunctionNode : Node {
  string name;
  Argument[] args;
  ParseTree result;
  FunctionType type;
  string manglePostfix;
  string baseType;
  string customName;
  this(string name, Argument[] args, ParseTree result, FunctionType type, string manglePostfix, string baseType, string customName) {
    this.name = name;
    this.args = args;
    this.result = result;
    this.type = type;
    this.manglePostfix = manglePostfix;
    this.baseType = baseType;
    this.customName = customName;
  }
  void toString(scope void delegate(const(char)[]) sink) {
    sink("Function ");
    if (customName.length > 0)
      sink(customName);
    else
      sink(name);
    if (manglePostfix.length) {
      sink("_");
      sink(manglePostfix);
    }
    sink("(");
    sink(args.map!(a => a.name).joiner(", ").text());
    sink(")");
  }
}

@method void _toDBinding(FunctionNode node, StructNode parent, Semantics semantics, IndentedStringAppender* a) {
  auto tmp = DBindingFunction(parent.name, node.name, node.args, node.result, node.type, node.manglePostfix, node.baseType, node.customName, parent.getHandleSymbol());
  if (parent.isStatic == Yes.isStatic)
    tmp.type |= FunctionType.Static;
  semantics.dump(tmp, a, parent.functions);
  // TODO: use parent.functions to avoid local shadowing
}
@method void _toJsExport(FunctionNode node, StructNode parent, Semantics semantics, string[] filter, IndentedStringAppender* a) {
  if (node.type & (FunctionType.OpDispatch) || node.type & (FunctionType.DictionaryConstructor))
    return;
  auto tmp = JsExportFunction(parent.name, node.customName != "" ? node.customName : node.name, node.args, node.result, node.type, node.manglePostfix);
  if (parent.isStatic == Yes.isStatic)
    tmp.type |= FunctionType.Static;
  auto context = Context(semantics);
  context.dump(tmp, a);
}
@method void _toDImport(FunctionNode node, StructNode parent, Semantics semantics, IndentedStringAppender* a) {
  if (node.type & (FunctionType.OpDispatch) || node.type & (FunctionType.DictionaryConstructor))
    return;
  auto tmp = DImportFunction(parent.name, node.customName != "" ? node.customName : node.name, node.args, node.result, node.type, node.manglePostfix);
  if (parent.isStatic == Yes.isStatic)
    tmp.type |= FunctionType.Static;
  semantics.dump(tmp, a);
}

class ExposedConstructorNode : FunctionNode {
  this(string name, Argument[] args, ParseTree result, string baseType, string manglePostfix) {
    super(name, args, result, FunctionType.ExposedConstructor, manglePostfix, baseType, "");
  }
  override void toString(scope void delegate(const(char)[]) sink) {
    sink("ExposedConstructor ");
    sink(name);
    if (manglePostfix) {
      sink("_");
      sink(manglePostfix);
    }
    sink("(");
    sink(args.map!(a => a.name).joiner(", ").text());
    sink(")");
  }
}
@method void _toDBinding(ExposedConstructorNode node, StructNode parent, Semantics semantics, IndentedStringAppender* a) {
  if (parent.name != node.baseType)
    return;
  auto tmp = DBindingFunction(parent.name, node.name, node.args, node.result, FunctionType.ExposedConstructor, node.manglePostfix, "", "", parent.getHandleSymbol());
  semantics.dump(tmp, a, parent.functions);
}
@method void _toJsExport(ExposedConstructorNode node, StructNode parent, Semantics semantics, string[] filter, IndentedStringAppender* a) {
  if (parent.name != node.baseType)
    return;
  string mangledName = mangleName(parent.name, node.name, node.manglePostfix);
  if (filter.length > 0 && !filter.canFind(mangledName))
    return;
  auto tmp = JsExportFunction(parent.name, node.name, node.args, node.result, FunctionType.ExposedConstructor, node.manglePostfix);
  auto context = Context(semantics);
  context.dump(tmp, a);
}
@method void _toDImport(ExposedConstructorNode node, StructNode parent, Semantics semantics, IndentedStringAppender* a) {
  if (parent.name != node.baseType)
    return;
  auto tmp = DImportFunction(parent.name, node.name, node.args, node.result, FunctionType.ExposedConstructor, node.manglePostfix);
  semantics.dump(tmp, a);
}

class TypedefNode : Node {
  string name;
  string def;
  ParseTree rhs;
  this(string n, string d, ParseTree rhs) {
    name = n;
    def = d;
    this.rhs = rhs;
  }
  void toString(scope void delegate(const(char)[]) sink) {
    sink("Typedef ");
    sink(name);
    sink(" = ");
    sink(def);
  }
}
@method void _toDBinding(TypedefNode node, Semantics semantics, IndentedStringAppender* a) {
  a.putLn(["alias ", node.name, " = ", node.def, ";"]);
}

class EnumNode : Node {
  string name;
  string content;
  this(string n, string c) {
    name = n;
    content = c;
  }
  void toString(scope void delegate(const(char)[]) sink) {
    sink("Enum ");
    sink(name);
  }
}

@method void _toDBinding(EnumNode node, Semantics semantics, IndentedStringAppender* a) {
  a.putLn(["enum ", node.name, " {"]);
  a.indent();
  a.putLn(node.content);
  a.undent();
  a.putLn("}");
}

class MaplikeNode : Node {
  ParseTree keyType;
  ParseTree valueType;
  this(ParseTree keyType, ParseTree valueType) {
    this.keyType = keyType;
    this.valueType = valueType;
  }
  void toString(scope void delegate(const(char)[]) sink) {
    sink("Maplike");
  }
}

@method void _toDBinding(MaplikeNode node, StructNode parent, Semantics semantics, IndentedStringAppender* a) {
  auto context = Context(semantics);
  string keyType = node.keyType.generateDType(context);
  string valueQualifiers = (semantics.isPrimitive(node.valueType) || semantics.isNullable(node.valueType)) ? "" : "scope ref ";
  string valueType = node.valueType.generateDType(context);
  string mangleKeyType = node.keyType.generateDImports(Context(semantics));
  string mangleValueType = node.valueType.generateDImports(Context(semantics));
  string manglePrefix = "Maplike_" ~ mangleKeyType ~ "_" ~ mangleValueType ~ "_";
  a.putLn("uint size() {");
  a.putLn(["  return ", manglePrefix, "size(this.handle);"]);
  a.putLn("}");
  a.putLn("void clear() {");
  a.putLn(["  ", manglePrefix, "clear(this.handle);"]);
  a.putLn("}");
  a.putLn(["void delete_(",keyType," key) {"]);
  a.putLn(["  ", manglePrefix, "delete(this.handle, key);"]);
  a.putLn("}");
  a.putLn(["Iterator!(ArrayPair!(",keyType,", ",valueType,")) entries() {"]);
  a.putLn(["  return Iterator!(ArrayPair!(",keyType,", ",valueType,"))(", manglePrefix, "entries(this.handle));"]);
  a.putLn("}");
  a.putLn(["extern(C) void forEach(void delegate(",keyType,", Handle, Handle) callback) {"]);
  a.putLn(["  ", manglePrefix, "forEach(this.handle, callback);"]);
  a.putLn("}");
  a.putLn(["",valueType," get(",keyType," key) {"]);
  a.putLn(["  return ",valueType,"(", manglePrefix, "get(this.handle, key));"]);
  a.putLn("}");
  a.putLn(["bool has(",keyType," key) {"]);
  a.putLn(["  return ", manglePrefix, "has(this.handle, key);"]);
  a.putLn("}");
  a.putLn(["Iterator!(",keyType,") keys() {"]);
  a.putLn(["  return Iterator!(",keyType,")(", manglePrefix, "keys(this.handle));"]);
  a.putLn("}");
  a.putLn(["void set(",keyType," key, ", valueQualifiers, valueType," value) {"]);
  a.putLn(["  ", manglePrefix, "set(this.handle, key, value.handle);"]);
  a.putLn("}");
  a.putLn(["Iterator!(",valueType,") values() {"]);
  a.putLn(["  return Iterator!(",valueType,")(", manglePrefix, "values(this.handle));"]);
  a.putLn("}");
}
@method void _toDImport(MaplikeNode node, StructNode parent, Semantics semantics, IndentedStringAppender* a) {
  auto context = Context(semantics);
  string keyType = node.keyType.generateDType(context);
  string valueType = node.valueType.generateDType(context);
  string mangleKeyType = node.keyType.generateDImports(Context(semantics));
  string mangleValueType = node.valueType.generateDImports(Context(semantics));
  string manglePrefix = "Maplike_" ~ mangleKeyType ~ "_" ~ mangleValueType ~ "_";
  a.putLn(["extern (C) uint ", manglePrefix, "size(Handle);"]);
  a.putLn(["extern (C) void ", manglePrefix, "clear(Handle);"]);
  a.putLn(["extern (C) void ", manglePrefix, "delete(Handle, ", mangleKeyType," key);"]);
  a.putLn(["extern (C) Handle ", manglePrefix, "entries(Handle);"]);
  a.putLn(["extern (C) void ", manglePrefix, "forEach(Handle, void delegate(", keyType,", Handle, Handle));"]);
  a.putLn(["extern (C) ", valueType, " ", manglePrefix, "get(Handle, ", mangleKeyType,");"]);
  a.putLn(["extern (C) bool ", manglePrefix, "has(Handle, ", mangleKeyType,");"]);
  a.putLn(["extern (C) Handle ", manglePrefix, "keys(Handle);"]);
  a.putLn(["extern (C) void ", manglePrefix, "set(Handle, ", mangleKeyType, " key, ", mangleValueType, " value);"]);
  a.putLn(["extern (C) Handle ", manglePrefix, "values(Handle);"]);
}

class CallbackNode : Node {
  string name;
  ParseTree result;
  Argument[] args;
  this(string name, ParseTree result, Argument[] args) {
    this.name = name;
    this.result = result;
    this.args = args;
  }
  void toString(scope void delegate(const(char)[]) sink) {
    sink("Callback ");
    sink(name);
  }
}

@method void _toDBinding(CallbackNode node, Semantics semantics, IndentedStringAppender* a) {
  a.put(["alias ", node.name, " = "]);
  if (node.result.matches[0] == "void") {
    a.put("void");
  } else
    node.result.generateDType(a, Context(semantics));
  auto types = node.args.map!(arg => arg.type).map!(type => type.generateDType(Context(semantics))).joiner(", ").text;
  a.putLn([" delegate(", types, ");"]);
}

void dumpJsArgument(Appender)(ref Semantics semantics, Argument arg, ref Appender a) {
  if (semantics.isNullable(arg.type)) {
    a.put(arg.name.friendlyJsName);
    a.put("Defined ? ");
  }
  if (semantics.isTypedef(arg.type) && semantics.isCallback(arg.type)) {
    auto name = getTypeName(arg.type);
    auto aliased = semantics.getAliasedType(name);
    auto argument = Argument(arg.name, aliased.stripNullable);
    semantics.dumpJsArgument(argument, a);
  } else if (semantics.isUnion(arg.type) || semantics.isEnum(arg.type)) {
    a.put("spasm_decode_");
    arg.type.mangleTypeJsImpl(a, semantics, MangleTypeJsContext(true));
    a.put("(");
    a.put(arg.name.friendlyJsName);
    a.put(")");
  } else if (semantics.isStringType(arg.type)) {
    a.put(["spasm_decode_string(",arg.name.friendlyJsName,"Len, ",arg.name.friendlyJsName,"Ptr)"]);
  } else if (semantics.isCallback(arg.type)){
    auto signature = getTypeName(arg.type) in semantics.types;
    auto argList = semantics.getArgumentList(signature.tree);
    auto arguments = extractArguments(argList);
    auto types = extractTypes(argList);
    string base = arg.name.friendlyJsName;
    a.put([ "(", arguments.joiner(", ").text, ")=>{"]);
    size_t offset = 0;
    zip(arguments, types).enumerate.each!((t) {
        auto index = t.index;
        auto arg = t.value[0];
        auto type = t.value[1];
        if (semantics.isStringType(type) || semantics.isUnion(type)
            || semantics.isNullable(type) || semantics.isEnum(type)) {
          a.put(["spasm_encode_"]);
          if (type.name == "WebIDL.TypeWithExtendedAttributes")
            type.children[1].mangleTypeJs(a, semantics);
          else
            type.mangleTypeJs(a, semantics);
          a.put(["(", offset.to!string, ", ", arg, ");"]);
          offset += semantics.getSizeOf(type);
        } else if (!semantics.isPrimitive(type)) {
          a.put(["encode_handle(", offset.to!string, ", ", arg, ");"]);
        }
      });
    bool needsClose = false;
    auto result = signature.tree.children[1];
    if (result.matches[0] != "void") {
      a.put("return ");
      if (semantics.isUnion(result) || semantics.isEnum(result) || semantics.isNullable(result)) {
        a.put("spasm_decode_");
        result.mangleTypeJsImpl(a, semantics, MangleTypeJsContext(true));
        a.put("(");
        needsClose = true;
      } else if (semantics.isAny(result)) {
        a.put("spasm_decode_Handle(");
        needsClose = true;
      }
    }
    a.put(["spasm_indirect_function_get(", base, "Ptr)(", base, "Ctx"]);
    offset = 0;
    zip(arguments, types).enumerate.each!((t) {
        a.put(", ");
        auto index = t.index;
        auto arg = t.value[0];
        auto type = t.value[1];
        if (semantics.isStringType(type) || semantics.isUnion(type)
            || semantics.isNullable(type) || semantics.isEnum(type)
            || !semantics.isPrimitive(type)) {
          a.put(offset.to!string);
          offset += semantics.getSizeOf(type);
        } else
          a.put(arg);
      });
    if (needsClose)
      a.put(")");
    a.put(")}");
  } else if (semantics.isPrimitive(arg.type)) {
    a.put(arg.name.friendlyJsName);
  } else {
    a.put(["spasm.objects[",arg.name.friendlyJsName,"]"]);
  }
  if (semantics.isNullable(arg.type)) {
    a.put(" : undefined");
  }
}

void dumpJsArguments(Appender)(ref Semantics semantics, Argument[] args, ref Appender a) {
  if (args.length == 0)
    return;
  foreach(arg; args[0..$-1]) {
    semantics.dumpJsArgument(arg, a);
    a.put(", ");
  }
  semantics.dumpJsArgument(args[$-1], a);
}

void dump(Appender)(ref Context context, JsExportFunction item, ref Appender a) {
  auto semantics = context.semantics;
  a.put(mangleName(item.parentTypeName,item.name,item.manglePostfix));
  a.put(": (");
  bool rawResult = item.result != ParseTree.init && semantics.isRawResultType(item.result);
  if (rawResult)
    a.put("rawResult");
  if (!(item.type & FunctionType.Static)) {
    if (rawResult)
      a.put(", ");
    a.put("ctx");
  }
  if ((rawResult || (!(item.type & FunctionType.Static))) && item.args.length > 0)
    a.put(", ");
  item.args.enumerate.each!((e){
      auto arg = e.value;
      if (e.index > 0)
        a.put(", ");
      a.put(arg.name.friendlyJsName);
      if (semantics.isNullable(arg.type))
        a.put(["Defined, ", arg.name.friendlyJsName]);
      if (semantics.isCallback(arg.type))
        a.put(["Ctx, ", arg.name.friendlyJsName, "Ptr"]);
      else if (semantics.isStringType(arg.type))
        a.put(["Len, ", arg.name.friendlyJsName, "Ptr"]);
    });
  a.putLn(") => {");
  a.indent();
  bool returns = item.result != ParseTree.init && item.result.matches[0] != "void";
  bool needsClose = false;
  if (returns) {
    if (!rawResult)
      a.put("return ");
    if (semantics.isStringType(item.result) || semantics.isUnion(item.result) || semantics.isNullable(item.result) || semantics.isEnum(item.result)) {
      a.put("spasm_encode_");
      if (item.result.name == "WebIDL.TypeWithExtendedAttributes")
        item.result.children[1].mangleTypeJs(a, semantics);
      else
        item.result.mangleTypeJs(a, semantics);
      needsClose = true;
      if (rawResult)
        a.put("(rawResult, ");
      else
        a.put("(");
    } else if (!semantics.isPrimitive(item.result)) {
      a.put(["spasm.addObject("]);
      needsClose = true;
    }
  }
  if (item.type & FunctionType.Deleter)
    a.put("delete ");
  if (item.type & FunctionType.Static)
    a.put(item.parentTypeName);
  else {
    if (item.type & FunctionType.ExposedConstructor)
      a.put("new ");
    a.put("spasm.objects[ctx]");
  }
  if (item.type & (FunctionType.Getter | FunctionType.Setter | FunctionType.Deleter)) {
    a.put("[");
    semantics.dumpJsArgument(item.args[0], a);
    a.put("]");
    if (item.type & FunctionType.Setter) {
      a.put(" = ");
      semantics.dumpJsArgument(item.args[1], a);
    }
  } else {
    a.put(".");
    a.put(item.name);
    if (item.type & FunctionType.Attribute) {
      if (!returns) {
        a.put(" = ");
        semantics.dumpJsArgument(item.args[0], a);
      }
    } else {
      a.put("(");
      semantics.dumpJsArguments(item.args, a);
      a.put(")");
    }
  }
  if (needsClose)
    a.put(")");
  a.putLn(";");
  a.undent();
  a.putLn("},");
}

void dump(Appender)(ref Semantics semantics, DImportFunction item, ref Appender a) {
  auto context = Context(semantics);
  a.put("extern (C) ");
  if (item.result == ParseTree.init || item.result.matches[0] == "void")
    a.put("void");
  else {
    if (!semantics.isPrimitive(item.result) && !semantics.isUnion(item.result) && !semantics.isNullable(item.result)) {
      a.put("Handle");
    } else {
      item.result.generateDType(*a, context);
    }
  }
  a.put(" ");
  a.put(mangleName(item.parentTypeName,item.name,item.manglePostfix));
  a.put("(");
  if (!(item.type & FunctionType.Static)) {
    a.put("Handle");
    if (item.args.length > 0)
      a.put(", ");
  }
  if (item.args.length > 0) {
    item.args.map!(arg => arg.type).array.putWithDelimiter!(generateDImports)(", ", *a, context);
  }
  a.putLn(");");
}

auto getTemplatedTypeName(size_t idx) {
  import std.conv : to;
  return "T"~idx.to!string;
}
auto getSymbolInfo(string symbol) {
  struct SymbolInfo {
    string module_;
    string name;
  }
  import std.algorithm : splitter;
  import std.demangle;
  import std.range : drop;
  import std.typecons : tuple;
  auto parts = demangle("_D"~symbol[1..$]~"v")[5..$].splitter(".").drop(2).array();
  return SymbolInfo(parts[0], parts[1]);
}
string generateJsGlobalBindings(IR ir, string[] jsExportFilters, ref IndentedStringAppender app) {
  auto generatePromiseThenBindings(IR ir, string symbol, string mangled, ref IndentedStringAppender app) {
    auto getDecoder(string mangled) {
      if (mangled == "Aya") {
        return "decode_string";
      } else if (mangled == "handle" || mangled[0] == 'S') {
        return "decode_handle";
      } else if (mangled == "v")
        return "void";
      else if (mangled[0] == 'E') {
        auto info = getSymbolInfo(mangled);
        return "spasm_decode_" ~ info.name;
      } else {
        if (mangled.startsWith("S8optional")) {
          throw new Error("Promise!T.then is not yet implemented for Optional!T.");
        }
        auto info = getSymbolInfo(mangled);
        if (ir.semantics.isTypedef(info.name)) {
          throw new Error("Promise!T.then is not yet implemented for Typedefs.");
        }
        if (mangled.canFind("sumtype")) {
          throw new Error("Promise!T.then is not yet implemented for SumType!Ts.");
        }
      }
      return "";
    }
    auto getEncoder(string mangled) {
      if (mangled == "Aya") {
        return "encode_string";
      } else if (mangled == "handle" || mangled[0] == 'S') {
        return "encode_handle";
      } else if (mangled == "v")
        return "void";
      else if (mangled[0] == 'E') {
        auto info = getSymbolInfo(mangled);
        return "spasm_encode_" ~ info.name;
      } else {
        if (mangled.startsWith("S8optional")) {
          throw new Error("Promise!T.then is not yet implemented for Optional!T.");
        }
        auto info = getSymbolInfo(mangled);
        if (ir.semantics.isTypedef(info.name)) {
          throw new Error("Promise!T.then is not yet implemented for Typedefs.");
        }
        if (mangled.canFind("sumtype")) {
          throw new Error("Promise!T.then is not yet implemented for SumType!Ts.");
        }
      }
      return "";
    }
    import std.ascii : isDigit;
    auto len = mangled.until!(a => !a.isDigit).to!int;
    auto prefixLen = mangled.countUntil!(a => !a.isDigit);
    len += prefixLen+1;
    auto argEncoder = getEncoder(mangled[prefixLen+1..len]);
    auto resultDecoder = getDecoder(mangled[len..$]);
    bool returns = resultDecoder != "void" && resultDecoder != "";
    app.putLn(["promise_then_", mangled,": (handle, ctx, ptr) => {"]);
    app.indent();
    app.putLn("return spasm.addObject(spasm.objects[handle].then((r)=>{");
    app.indent();
    if (argEncoder != "" && argEncoder != "void")
      app.putLn([argEncoder, "(0,r);"]);
    app.put("spasm_indirect_function_get(ptr)(");
    if (returns) {
      app.put("512, ");
    }
    if (argEncoder == "void") {
      app.putLn("ctx);");
    } else if (argEncoder != "") {
      app.putLn("ctx, 0);");
    } else {
      app.putLn("ctx, r);");
    }
    if (returns) {
      app.putLn(["return ", resultDecoder, "(512);"]);
    }
    app.undent();
    app.putLn("}));");
    app.undent();
    app.putLn("},");
  }
  auto mappings = ["promise_then_": &generatePromiseThenBindings];
  foreach(filter; jsExportFilters) {
    foreach(key, func; mappings) {
      if (filter.startsWith(key))
        func(ir, filter, filter[commonPrefix(filter,key).length .. $], app);
    }
  }
  return app.data;
}
void dump(Appender)(ref Semantics semantics, DBindingFunction item, ref Appender a, string[] locals) {
  // if (item.result != ParseTree.init) {
  //   item.result.generateDType(a, Context(semantics));
  //   a.put(" ");
  // } else
  //   a.put("void ");
  if (item.type & FunctionType.DictionaryConstructor) {
    a.putLn("static auto create() {");
    a.indent();
    a.putLn(["return ", item.parentTypeName, "(spasm_add__object());"]);
    a.undent();
    a.putLn("}");
    return;
  }
  bool returns = item.result != ParseTree.init && item.result.matches[0] != "void";
  if (returns) a.put("auto "); else a.put("void ");
  void putFuncName() {
    switch (item.type & (FunctionType.OpIndex | FunctionType.OpDispatch | FunctionType.OpIndexAssign)) {
    case FunctionType.OpIndex:
      a.put("opIndex");
      break;
    case FunctionType.OpDispatch:
      a.put("opDispatch");
      break;
    case FunctionType.OpIndexAssign:
      a.put("opIndexAssign");
      break;
    default:
      a.put(item.name.friendlyName);
      break;
    }
  }
  putFuncName();
  auto anys = item.args.enumerate.filter!(a => semantics.isAny(a.value.type)).array();
  auto templArgs = item.args.filter!(a => a.templated).array();
  auto runArgs = item.args.filter!(a => !a.templated).array();
  if (templArgs.length > 0) {
    assert(anys.length == 0);
    a.put("(");
    semantics.dumpDParameters(templArgs, a, locals);
    a.put(")");
  } else if (anys.length > 0) {
    a.put("(");
    foreach(any; anys[0..$-1]) {
      a.put(getTemplatedTypeName(any.index));
      a.put(", ");
    }
    a.put(getTemplatedTypeName(anys[$-1].index));
    a.put(")");
  }
  a.put("(");
  if (item.type & FunctionType.OpIndexAssign) {
    assert(runArgs.length > 1);
    semantics.dumpDParameter(runArgs[$-1], a, locals, 0);
    a.put(", ");
    semantics.dumpDParameters(runArgs[0..$-1], a, locals);
  } else
    semantics.dumpDParameters(runArgs, a, locals);
  a.putLn(") {");
  a.indent();
  foreach(any; anys) {
    a.putLn(["Handle _handle_", any.value.name, " = getOrCreateHandle(", any.value.name.friendlyName, ");"]);
  }
  bool needDropHandle = anys.length != 0;
  if (returns) {
    if (needDropHandle)
      a.put("auto result = ");
    else
      a.put("return ");
    if (!semantics.isPrimitive(item.result) && !semantics.isUnion(item.result) && !semantics.isNullable(item.result)) {
      if (item.type == FunctionType.ExposedConstructor)
        a.put([".",item.name]);
      else
        item.result.generateDType(a, Context(semantics).withLocals(locals));
      a.put("(");
    }
  }
  a.put(mangleName(item.parentTypeName, item.customName.length > 0 ? item.customName : item.name,item.manglePostfix));
  a.put("(");
  if (!(item.type & FunctionType.Static)) {
    a.put(["this.", item.handle]);
    if (item.args.length > 0)
      a.put(", ");
  }
  semantics.dumpDJsArguments(item.args, a);
  if (returns) {
    if (!semantics.isPrimitive(item.result) && !semantics.isUnion(item.result) && !semantics.isNullable(item.result)) {
      a.put(")");
    }
  }
  a.putLn(");");
  foreach(any; anys) {
    a.putLn(["dropHandle!(T", any.index.to!string, ")(_handle_", any.value.name, ");"]);
  }
  if (returns && needDropHandle)
    a.putLn("return result;");
  a.undent();
  a.putLn("}");
}
void dumpDParameters(Appender)(ref Semantics semantics, Argument[] args, ref Appender a, string[] locals) {
  if (args.length == 0)
    return;
  foreach(i, arg; args[0..$-1]) {
    semantics.dumpDParameter(arg, a, locals, i);
    a.put(", ");
  }
  semantics.dumpDParameter(args[$-1], a, locals, args.length-1);
}
void dumpDParameter(Appender)(ref Semantics semantics, Argument arg, ref Appender a, string[] locals, size_t idx) {
  if (semantics.isAny(arg.type)) {
    a.put("scope auto ref ");
    a.put(getTemplatedTypeName(idx));
  } else {
    if (!semantics.isPrimitive(arg.type) || semantics.isNullable(arg.type))
      a.put("scope ref ");
    arg.type.generateDType(a, Context(semantics).withLocals(locals));
  }
  a.put(" ");
  a.putCamelCase(arg.name.friendlyName);
  if (arg.default_.matches.length > 1) {
    a.put(" ");
    if (arg.default_.children[0].matches[0] == "null") {
      if (semantics.isNullable(arg.type)) {
        a.put("/* = no!(");
        arg.type.generateDType(a, Context(semantics).withSkipOptional.withLocals(locals).setDParameter);
        a.put(") */");
        return;
      }
    }
    arg.default_.generateDType(a, Context(semantics).withLocals(locals).setDParameter);
  }
}

void dumpDJsArguments(Appender)(ref Semantics semantics, Argument[] args, ref Appender a) {
  if (args.length == 0)
    return;
  foreach(arg; args[0..$-1]) {
    semantics.dumpDJsArgument(arg, a);
    a.put(", ");
  }
  semantics.dumpDJsArgument(args[$-1], a);
}

void dumpDJsArgument(Appender)(ref Semantics semantics, Argument arg, ref Appender a) {
  if (semantics.isAny(arg.type)) {
    a.put("_handle_");
    a.put(arg.name.friendlyName);
    return;
  }
  bool optional = semantics.isNullable(arg.type);
  if (optional)
    a.put("!");
  a.put(arg.name.friendlyName);
  if (optional)
    a.put([".empty, ", arg.name.friendlyName, ".front"]);
  if (!semantics.isPrimitive(arg.type) && !semantics.isUnion(arg.type)) {
    auto s = arg.type.matches[0] in semantics.types;
    if (s !is null) {
      if (s.tree.children[1].matches.length > 1)
        a.put("._parent");
      else
        a.put(".handle");
    } else
      a.put(".handle");
  }
}

bool isSequence(Semantics semantics, ParseTree tree) {
  if (tree.name == "WebIDL.ReturnType") {
    if (tree.matches[0] == "void")
      return false;
    return semantics.isSequence(tree.children[0]);
  }
  if (tree.name == "WebIDL.Type") {
    if (tree.children[0].name == "WebIDL.SingleType")
      return false;
    return tree.children[0].children[0].children[0].name == "WebIDL.SequenceType";
  }
  if (tree.name == "WebIDL.UnionMemberType")
    return tree.children[1].children[0].name == "WebIDL.SequenceType";
  if (tree.name == "WebIDL.NonAnyType")
    return tree.children[0].name == "WebIDL.SequenceType";
  return false;
}

bool isAny(ref Semantics semantics, ParseTree tree) {
  return tree.matches[0] == "any";
}
bool isDKeyword(string s) {
  import std.algorithm : canFind;
  return dKeywords.canFind(s);
}
bool isJsKeyword(string s) {
  import std.algorithm : canFind;
  return jsKeywords.canFind(s);
}

string friendlyJsName(string s) {
  import std.ascii;
  import std.conv : text;
  import std.utf : byChar;
  if (s.length == 0)
    return s;
  if (s.isJsKeyword)
    return s~"_";
  return s;
}

string friendlyName(string s) {
  import std.ascii;
  import std.conv : text;
  import std.utf : byChar;
  if (s.length == 0)
    return s;
  if (s.isDKeyword)
    return s~"_";
  string clean = s.byChar.map!(c => c.isAlphaNum ? c : '_').text;
  if (!clean[0].isAlpha && clean[0] != '_')
    return '_'~clean;
  return clean;
}

struct IndentedStringAppender {
  import std.array : Appender;
  import std.algorithm : each;
  bool beginLine = true;
  Appender!string appender;
  int i = 0;
  void put(char c) {
    putIndent();
    appender.put(c);
  }
  void put(string s) {
    putIndent();
    appender.put(s);
  }
  void put(string[] ss) {
    putIndent();
    ss.each!(s => appender.put(s));
  }
  void putLn(char c) {
    put(c);
    appender.put("\n");
    beginLine = true;
  }
  void putLn(string s) {
    put(s);
    appender.put("\n");
    beginLine = true;
  }
  void putLn(string[] ss) {
    put(ss);
    appender.put("\n");
    beginLine = true;
  }
  void putIndent() {
    if (!beginLine)
      return;
    beginLine = false;
    import std.range : repeat;
    import std.algorithm : copy;
    ' '.repeat(i*2).copy(appender);
  }
  void indent() {
    i++;
  }
  void undent() {
    import std.algorithm : max;
    i = max(0, i-1);
  }
  auto data() {
    return appender.data;
  }
}

struct Context {
  Semantics semantics;
  ParseTree extendedAttributeList;
  ParseTree partial;
  ParseTree includes;
  bool readonly = false;
  bool primitiveType = false;
  bool sumType = false;
  bool optional = false;
  bool returnType = false;
  bool isIncludes = false;
  bool skipOptional = false;
  bool dParameter = false;
  string typeName;
  string customName;
  string[] locals;
}

auto withLocals(Context c, string[] locals) {
  c.locals = locals;
  return c;
}

auto setDParameter(Context c) {
  c.dParameter = true;
  return c;
}

auto withSkipOptional(Context c) {
  c.skipOptional = true;
  return c;
}

bool isEnum(ref Context context, ParseTree tree) {
  return context.semantics.isEnum(tree);
}
bool isEnum(ref Semantics semantics, ParseTree tree) {
  if (tree.name == "WebIDL.TypeWithExtendedAttributes" || tree.name == "WebIDL.UnionMemberType")
    return semantics.isEnum(tree.children[1]);
  return semantics.isEnum(tree.matches[0]);
}

bool isEnum(ref Semantics semantics, string typeName) {
  if (auto p = typeName in semantics.types) {
    return p.tree.name == "WebIDL.Enum";
  }
  return false;
}
bool isNullableTypedef(ref Semantics semantics, ParseTree tree) {
  if (tree.name == "WebIDL.ReturnType") {
    if (tree.matches[0] == "void")
      return false;
    return semantics.isNullableTypedef(tree.children[0]);
  }
  if (tree.name == "WebIDL.TypeWithExtendedAttributes")
    return semantics.isNullableTypedef(tree.children[1]);
  assert(tree.name == "WebIDL.Type" || tree.name == "WebIDL.UnionMemberType");
  if (tree.name == "WebIDL.UnionMemberType" && tree.children[0].name == "WebIDL.UnionType")
    return false;
  string typeName = tree.getTypeName();
  if (!semantics.isTypedef(typeName))
    return false;
  if (tree.matches[$-1] == "?")
    return true;
  return false;
}

bool isTypedef(ref Context context, ParseTree tree) {
  return context.semantics.isTypedef(tree);
}

bool isTypedef(ref Semantics semantics, ParseTree tree) {
  string typeName = tree.getTypeName();
  return semantics.isTypedef(typeName);
}

bool isTypedef(ref Context context, string typeName) {
  return context.semantics.isTypedef(typeName);
}
bool isTypedef(ref Semantics semantics, string typeName) {
  if (auto p = typeName in semantics.types) {
    return p.tree.name == "WebIDL.Typedef";
  }
  return false;
}
bool isCallback(ref Context context, string typeName) {
  return context.semantics.isCallback(typeName);
}
bool isCallback(ref Semantics semantics, ParseTree tree) {
  if (tree.name == "WebIDL.TypeWithExtendedAttributes")
    return semantics.isCallback(tree.children[1].matches[0]);
  return semantics.isCallback(tree.children[0].matches[0]);
}
bool isCallback(ref Semantics semantics, string typeName) {
  if (semantics.isTypedef(typeName)) {
    auto aliased = semantics.getAliasedType(typeName);
    return semantics.isCallback(aliased);
  }
  if (auto p = typeName in semantics.types) {
    return p.tree.name == "WebIDL.CallbackRest";
  }
  return false;
}

bool isPartial(ref Context context) {
  return context.partial.matches.length > 0;
}

void putCamelCase(Appender)(ref Appender a, string s) {
  import std.algorithm : until;
  import std.uni : isUpper, isLower, asLowerCase;
  import std.conv : text;
  if (s.length == 0)
    return;
  if (s[0].isLower) {
    a.put(s);
    return;
  }
  import std.string : toLower;
  auto head = s.until!(isLower).asLowerCase.text;
  if (head.length == 1) {
    a.put(head);
    a.put(s[head.length .. $]);
    return;
  }
  auto tail = s[head.length-1 .. $];
  a.put(head[0..$-1]);
  a.put(tail);
}

string toCamelCase(string s) {
  auto app = appender!string;
  app.putCamelCase(s);
  return app.data;
}

string mangleName(string typeName, string name, string appendix = "") {
  import std.ascii : toLower, toUpper;
  import std.array : appender;
  auto app = appender!string;
  app.put(typeName);
  app.put("_");
  app.put(name);
  if (appendix.length > 0) {
    app.put("_");
    app.put(appendix);
  }
  return app.data;
}

bool isNullable(ref Semantics semantics, ParseTree tree) {
  if (tree.name == "WebIDL.ReturnType") {
    if (tree.matches[0] == "void")
      return false;
    return semantics.isNullable(tree.children[0]);
  }
  if (tree.name == "WebIDL.TypeWithExtendedAttributes")
    return semantics.isNullable(tree.children[1]);
  if (tree.name == "WebIDL.UnionMemberType")
    return tree.matches[$-1] == "?";
  if (tree.name == "WebIDL.InterfaceRest")
    return false;
  assert(tree.name == "WebIDL.Type");
  if (tree.matches[$-1] == "?")
    return true;
  string typeName = tree.getTypeName();
  if (semantics.isTypedef(typeName)) {
    return semantics.isNullable(semantics.getAliasedType(typeName));
  }
  return false;
}

bool isRawResultType(ref Semantics semantics, ParseTree tree) {
  if (tree.name == "WebIDL.ReturnType") {
    if (tree.matches[0] == "void")
      return false;
    return semantics.isRawResultType(tree.children[0]);
  }
  if (tree.name == "WebIDL.TypeWithExtendedAttributes")
    return semantics.isRawResultType(tree.children[1]);
  if (tree.name == "WebIDL.InterfaceRest")
    return false;
  assert(tree.name == "WebIDL.Type");
  return semantics.isNullable(tree) ||
    semantics.isStringType(tree) || semantics.isUnion(tree);
}

bool isStringType(ref Semantics semantics, ParseTree tree) {
  if (tree.name == "WebIDL.ReturnType") {
    if (tree.matches[0] == "void")
      return false;
    return semantics.isStringType(tree.children[0]);
  }
  if (tree.name == "WebIDL.TypeWithExtendedAttributes")
    return semantics.isStringType(tree.children[1]);
  if (tree.name == "WebIDL.InterfaceRest")
    return false;
  assert(tree.name == "WebIDL.Type");
  string typeName = tree.getTypeName();
  if (semantics.isTypedef(typeName)) {
    return semantics.isStringType(semantics.getAliasedType(typeName));
  }
  if (tree.children[0].name != "WebIDL.SingleType")
    return false;
  if (tree.children[0].matches[0] == "any")
    return false;
  if (tree.children[0].children[0].children[0].name == "WebIDL.StringType")
    return true;
  return false;
}
bool isUnion(ref Context context, ParseTree tree) {
  return context.semantics.isUnion(tree);
}

bool isUnion(ref Semantics semantics, ParseTree tree) {
  if (tree.name == "WebIDL.ReturnType") {
    if (tree.matches[0] == "void")
      return false;
    return semantics.isUnion(tree.children[0]);
  }
  if (tree.name == "WebIDL.TypeWithExtendedAttributes")
    return semantics.isUnion(tree.children[1]);
  if (tree.name == "WebIDL.InterfaceRest")
    return false;
  assert(tree.name == "WebIDL.Type" || tree.name == "WebIDL.UnionMemberType");
  if (tree.children[0].name == "WebIDL.UnionType")
    return true;
  string typeName = tree.getTypeName();
  if (semantics.isTypedef(typeName)) {
    return semantics.isUnion(semantics.getAliasedType(typeName));
  }
  return false;
}
auto getAliasedType(ref Context context, string typeName) {
  assert(typeName in context.semantics.types);
  assert(context.semantics.types[typeName].tree.name == "WebIDL.Typedef");
  return context.semantics.types[typeName].tree.children[0];
}

auto getAliasedType(ref Semantics semantics, string typeName) {
  assert(typeName in semantics.types);
  assert(semantics.types[typeName].tree.name == "WebIDL.Typedef");
  return semantics.types[typeName].tree.children[0];
}

bool isPrimitive(Context context, ParseTree tree) {
  return context.semantics.isPrimitive(tree);
}

bool isPrimitive(ref Semantics semantics, ParseTree tree) {
  if (tree.name == "WebIDL.ReturnType") {
    if (tree.matches[0] == "void")
      return false;
    return semantics.isPrimitive(tree.children[0]);
  }
  if (tree.name == "WebIDL.TypeWithExtendedAttributes")
    return semantics.isPrimitive(tree.children[1]);
  string typeName = tree.getTypeName();
  if (tree.name == "WebIDL.UnionMemberType") {
    if (tree.children[1].name != "WebIDL.NonAnyType")
      return false;
    return tree.children[1].children[0].name == "WebIDL.PrimitiveType";
  }
  if (tree.name == "WebIDL.InterfaceRest")
    return false;
  assert(tree.name == "WebIDL.Type");
  if (semantics.isEnum(typeName) || semantics.isCallback(typeName))
    return true;
  if (semantics.isTypedef(typeName)) {
    return semantics.isPrimitive(semantics.getAliasedType(typeName));
  }
  if (tree.children[0].name != "WebIDL.SingleType")
    return false;
  if (tree.children[0].matches[0] == "any")
    return false;
  if (semantics.isStringType(tree))
    return true;
  if (tree.children[0].children[0].name != "WebIDL.NonAnyType")
    return false;
  return tree.children[0].children[0].children[0].name == "WebIDL.PrimitiveType";
}

string getTypeName(ParseTree tree) {
  if (tree.name == "WebIDL.ReturnType") {
    assert(tree.matches[0] != "void");
    return tree.children[0].getTypeName();
  }
  if (tree.name == "WebIDL.InterfaceRest") {
    return tree.matches[0];
  }
  assert(tree.name == "WebIDL.TypeWithExtendedAttributes" || tree.name == "WebIDL.Type" || tree.name == "WebIDL.UnionMemberType");
  if (tree.name == "WebIDL.UnionMemberType") {
    assert(tree.children[1].name == "WebIDL.NonAnyType");
    return tree.children[1].matches[0];
  }
  if (tree.name == "WebIDL.TypeWithExtendedAttributes")
    return tree.children[1].matches[0];
  return tree.matches[0];
}

auto isEmpty(string s) {
  return s == "";
}
auto isEmpty(string[] matches) {
  import std.algorithm : all;
  return matches.length == 0 || matches.all!(m => m.isEmpty);
}

template putWithDelimiter(alias Generator)
{
  void putWithDelimiter(Appender, Ts...)(ParseTree[] children, string delimiter,ref Appender a, Ts args) {
    import std.algorithm : each, filter;
    import std.array : array;
    auto nonEmpty = children.filter!(c => !c.matches.isEmpty).array;
    // need to filter first
    if (nonEmpty.length > 0) {
      nonEmpty[0..$-1].each!((c){if (c.matches.isEmpty) return; Generator(c, a, args);a.put(delimiter);});
      Generator(nonEmpty[$-1], a, args);
    }
  }
}

auto extractArgument(ParseTree tree) {
  assert(tree.name == "WebIDL.Argument");
  auto argRest = tree.children[$-1];
  if (argRest.matches[0] == "optional") {
    return argRest.children[1].matches[0];
  } else {
    return argRest.children[2].matches[0];
  }
}
auto extractDefault(ParseTree tree) {
  assert(tree.name == "WebIDL.Argument");
  auto argRest = tree.children[$-1];
  string typeName;
  if (argRest.matches[0] == "optional") {
    return argRest.children[2];
  } else {
    return ParseTree.init;
  }
}
auto extractType(ParseTree tree) {
  assert(tree.name == "WebIDL.Argument");
  auto argRest = tree.children[$-1];
  string typeName;
  if (argRest.matches[0] == "optional") {
    return argRest.children[0].children[1];
  } else {
    return argRest.children[0];
  }
}

string extractTypeName(ParseTree tree) {
  if (tree.name == "WebIDL.Argument") {
    auto argRest = tree.children[$-1];
    if (argRest.matches[0] == "optional") {
      return extractTypeName(argRest.children[0].children[1]);
    }
    return extractTypeName(argRest.children[0]);
  }
  assert(tree.name == "WebIDL.Type");
  string typeName = tree.matches[0];
  if (typeName == "any")
    return "Any";
  if (typeName == "DOMString")
    return "string";
  if (typeName == "boolean")
    return "bool";
  return typeName;
}
auto extractArguments(ParseTree tree) {
  import std.algorithm : map;
  assert(tree.name == "WebIDL.ArgumentList");
  return tree.children.map!(c => c.extractArgument);
}
auto extractArgumentRests(ParseTree tree) {
  assert(tree.name == "WebIDL.ArgumentList");
  return tree.children.map!(c => c.children[1]);
}
auto extractDefaults(ParseTree tree) {
  import std.algorithm : map;
  assert(tree.name == "WebIDL.ArgumentList");
  return tree.children.map!(c => c.extractDefault);
}
auto extractTypes(ParseTree tree) {
  import std.algorithm : map;
  assert(tree.name == "WebIDL.ArgumentList");
  return tree.children.map!(c => c.extractType);
}
auto extractTypeNames(ParseTree tree) {
  import std.algorithm : map;
  assert(tree.name == "WebIDL.ArgumentList");
  return tree.children.map!(c => c.extractTypeName);
}
ParseTree getArgumentList(ref Semantics semantics, ParseTree tree) {
  auto p = tree.matches[0] in semantics.types;
  assert(p != null);
  assert(p.tree.name == "WebIDL.CallbackRest");
  return p.tree.children[2];
}
auto getType(ref Semantics semantics, ParseTree tree) {
  return semantics.getType(tree.matches[0]);
}
auto getType(ref Semantics semantics, string name) {
  auto p = name in semantics.types;
  if (p is null) {
    writeln("Failed to find "~name);
    return ParseTree.init;
  }
  return p.tree;
}
auto getType(ref Context context, string name) {
  return context.semantics.getType(name);
}
auto getMatchingPartials(ref Semantics semantics, string name) {
  auto isInterface = (Type p) => p.tree.children[0].children[0].name == "WebIDL.PartialInterfaceOrPartialMixin";
  auto matches = (Type p) => p.tree.children[0].children[0].children[0].children[0].matches[0] == name;
  return semantics.partials.filter!(p => isInterface(p) && matches(p)).map!(t => t.tree).array();
}

auto getMatchingPartials(ref Context context, string name) {
  return context.semantics.getMatchingPartials(name);
}

uint getSizeOf(ref Semantics semantics, ParseTree tree) {
  switch(tree.name) {
    case "WebIDL.IntegerType":
      if (tree.matches[0] == "long") {
        if (tree.matches.length > 1)
          return 8;
        return 4;
      }
      return 2;
  case "WebIDL.StringType":
    return 8;
  case "WebIDL.FloatType":
    if (tree.matches[0] == "float")
      return 4;
    return 8;
  case "WebIDL.PrimitiveType":
    if (tree.children.length == 0) {
      if (tree.matches[0] == "boolean")
        return 4;
      return 1;
    } else
      goto default;
  case "WebIDL.SingleType":
    if (tree.matches[0] == "any")
      return 4;
    goto default;
  case "WebIDL.Identifier":
  case "WebIDL.SequenceType":
  case "WebIDL.Enum":
  case "WebIDL.RecordType":
  case "WebIDL.PromiseType":
  case "WebIDL.BufferRelatedType":
    return 4;
  case "WebIDL.UnionType":
    return 4 + tree.children.map!(c => semantics.getSizeOf(c)).maxElement;
  case "WebIDL.NonAnyType":
    if (tree.matches[0] == "object" || tree.matches[0] == "symbol" || tree.matches[0] == "Error" || tree.matches[0] == "FrozenArray") {
      return 4 + semantics.getSizeOf(tree.children[$-1]);
    }
  goto default;
  case "WebIDL.Null":
    return tree.matches[0] == "?" ? 4 : 0;
  default:
    return tree.children.map!(c => semantics.getSizeOf(c)).sum;
  }
}
string mangleTypeJs(ParseTree tree, ref Semantics semantics) {
  auto app = appender!string;
  tree.mangleTypeJs(app, semantics);
  return app.data;
}
string mangleTypeJs(ParseTree tree, ref Semantics semantics, MangleTypeJsContext context) {
  auto app = appender!string;
  tree.mangleTypeJsImpl(app, semantics, context);
  return app.data;
}

struct MangleTypeJsContext {
  bool skipOptional;
  bool inUnion = false;
}
void mangleTypeJs(Appender)(ParseTree tree, ref Appender a, ref Semantics semantics) {
  MangleTypeJsContext context;
  tree.mangleTypeJsImpl(a, semantics, context);
}
void mangleTypeJsImpl(Appender)(ParseTree tree, ref Appender a, ref Semantics semantics, MangleTypeJsContext context) {
  switch (tree.name) {
  case "WebIDL.CallbackRest":
    a.put("callback_");
    tree.children[1].mangleTypeJsImpl(a, semantics, context);
    if (tree.children[2].children.length > 0) {
      a.put("_");
      tree.children[2].mangleTypeJsImpl(a, semantics, context);
    }
    break;
  case "WebIDL.ArgumentList":
    tree.children.putWithDelimiter!(mangleTypeJsImpl)("_", a, semantics, context);
    break;
  case "WebIDL.Argument":
    auto type = tree.extractType;
    if (!semantics.isPrimitive(type) && !semantics.isUnion(type)) {
      a.put("Handle");
      break;
    }
    tree.children[1].mangleTypeJsImpl(a, semantics, context);
    break;
  case "WebIDL.UnsignedIntegerType":
    if (tree.matches[0] == "unsigned")
      a.put("u");
    tree.children[0].mangleTypeJsImpl(a, semantics, context);
    break;
  case "WebIDL.IntegerType":
    if (tree.matches[0] == "long") {
      if (tree.matches.length > 1)
        a.put("long");
      else
        a.put("int");
    } else
      a.put(tree.matches[0]);
    break;
  case "WebIDL.RecordType":
    a.put("record");
    // tree.children.putWithDelimiter!(mangleTypeJsImpl)("_", a, semantics, context);
    break;
  case "WebIDL.SequenceType":
    if (!context.skipOptional && tree.matches[$-1] == "?")
      a.put("optional_");
    a.put("sequence");
    // tree.children[0].mangleTypeJsImpl(a, semantics, context);
    break;
  case "WebIDL.SingleType":
    if (tree.matches[0] == "any") {
      a.put("Handle");
    } else if (tree.matches[0] == "void") {
      a.put("void");
    } else {
      tree.children[0].mangleTypeJsImpl(a, semantics, context);
    }
    break;
  case "WebIDL.Type":
    string typeName = getTypeName(tree);
    if (semantics.isTypedef(typeName)) {
      if (tree.matches[$-1] == "?") {
        if (context.skipOptional)
          context.skipOptional = false;
        else
          a.put("optional_");
      }
      auto aliasMangled = semantics.getAliasedType(typeName).mangleTypeJs(semantics, context);
      if (aliasMangled.length < typeName.length)
        a.put(aliasMangled);
      else
        a.put(typeName);
      return;
    }
    if (tree.children.length == 2 && tree.children[$-1].matches[0] == "?") {
      if (context.skipOptional)
        context.skipOptional = false;
      else
        a.put("optional_");
    }
    tree.children[0].mangleTypeJsImpl(a, semantics, context);
    break;
  case "WebIDL.UnionType":
    a.put("union");
    a.put(tree.children.length.to!string);
    a.put("_");
    context.inUnion = true;
    tree.children.putWithDelimiter!(mangleTypeJsImpl)("_", a, semantics, context);
    break;
  case "WebIDL.UnionMemberType":
    if (tree.children[1].name == "WebIDL.NonAnyType")
      tree.children[1].mangleTypeJsImpl(a, semantics, context);
    else {
      tree.children[0].mangleTypeJsImpl(a, semantics, context);
      if (tree.children[$-1].matches[0] == "?")
        a.put("_Null");
    }
    break;
  case "WebIDL.NonAnyType":
    if (tree.children.length > 1 && tree.children[$-1].matches[0] == "?") {
      if (context.skipOptional)
        context.skipOptional = false;
      else
        a.put("optional_");
    }
    if (tree.children[0].name == "WebIDL.Null")
      a.put(tree.matches[0]); // Maybe return here?
    if (tree.matches[0] == "FrozenArray")
      assert(false);
    tree.children[0].mangleTypeJsImpl(a, semantics, context);
    break;
  case "WebIDL.FloatType":
    a.put(tree.matches[0]);
    break;
  case "WebIDL.TypeWithExtendedAttributes":
    tree.children[1].mangleTypeJsImpl(a, semantics, context);
    break;
  case "WebIDL.Identifier":
    auto typeName = tree.matches[0];
    if (!context.inUnion && !semantics.isEnum(tree)) {
      a.put("Handle");
      return;
    }
    // TODO: could be nullable typedef
    if (semantics.isTypedef(typeName)) {
      auto aliasMangled = semantics.getAliasedType(typeName).mangleTypeJs(semantics, context);
      if (aliasMangled.length < tree.matches[0].length) {
        a.put(aliasMangled);
        return;
      }
    }
    a.put(tree.matches[0]);
    break;
  case "WebIDL.StringType":
    a.put("string");
    break;
  case "WebIDL.ArgumentRest":
    tree.children[0].mangleTypeJsImpl(a, semantics, context);
    break;
  case "WebIDL.PrimitiveType":
    if (tree.children.length == 1) {
      tree.children[0].mangleTypeJsImpl(a, semantics, context);
    } else {
      switch (tree.matches[0]) {
      case "byte": a.put("byte"); break;
      case "octet": a.put("ubyte"); break;
      case "boolean": a.put("bool"); break;
      default: a.put(tree.matches[0]); break;
      }
    }
    break;
  default:
    tree.children.each!(c => c.mangleTypeJsImpl(a, semantics, context));
  }
}

string generateDImports(ParseTree tree, Context context) {
  auto app = IndentedStringAppender();
  tree.generateDImports(app, context);
  return app.data;
}
void generateDImports(Appender)(ParseTree tree, ref Appender a, Context context) {
  import std.algorithm : each, joiner, map;
  import std.range : chain;
  import std.conv : text;
  switch (tree.name) {
  case "WebIDL.InterfaceRest":
  case "WebIDL.InterfaceMembers":
  case "WebIDL.InterfaceMember":
  case "WebIDL.ReadOnlyMember":
  case "WebIDL.AttributeRest":
    break;
  case "WebIDL.TypeWithExtendedAttributes":
    tree.children[1].generateDImports(a, context);
    break;
  case "WebIDL.NonAnyType":
    bool optional = !context.skipOptional && (context.optional || tree.children[$-1].name == "WebIDL.Null" && tree.children[$-1].matches[0] == "?");
    if (optional) {
      if (context.returnType)
        a.put("Optional!(");
      else
        a.put("bool, ");
    }
    if (!(optional && context.returnType) && !context.primitiveType && !context.sumType && !(context.returnType && tree.children[0].name == "WebIDL.SequenceType"))
      a.put("Handle");
    else
      tree.children.each!(c => c.generateDType(a, context));
    if (optional && context.returnType)
      a.put(")");
    break;
  case "WebIDL.SingleType":
    if (tree.matches[0] == "any") {
      a.put("Handle");
    } else
      tree.children[0].generateDImports(a, context);
    break;
  case "WebIDL.PrimitiveType":
    if (tree.children.length == 0) {
      switch (tree.matches[0]) {
      case "byte": a.put("byte"); break;
      case "octet": a.put("ubyte"); break;
      case "boolean": a.put("bool"); break;
      default: a.put(tree.matches[0]); break;
      }
    } else
      tree.children[0].generateDImports(a, context);
    break;
  case "WebIDL.StringType":
    a.put("string");
    break;
  case "WebIDL.ArgumentName":
  case "WebIDL.AttributeName":
    break;
  case "WebIDL.UnrestrictedFloatType":
    // TODO: handle unrestricted
    tree.children[0].generateDImports(a, context);
    break;
  case "WebIDL.UnsignedIntegerType":
    if (tree.matches[0] == "unsigned")
      a.put("u");
    tree.children[0].generateDType(a, context);
    break;
  case "WebIDL.IntegerType":
    if (tree.matches[0] == "long") {
      if (tree.matches.length > 1)
        a.put("long");
      else
        a.put("int");
    } else
      a.put(tree.matches[0]);
    break;
  case "WebIDL.ExtendedAttributeList":
    break;
  case "WebIDL.FloatType":
  case "WebIDL.Identifier":
    a.put(tree.matches[0]);
    break;
  case "WebIDL.SpecialOperation":
  case "WebIDL.RegularOperation":
    break;
  case "WebIDL.Type":
    context.optional = false;
    if (context.isUnion(tree)) {
      bool optional = tree.matches[$-1] == "?";
      context.optional = optional;
      if (optional) {
        if (context.returnType)
          a.put("Optional!(");
        else
          a.put("bool, ");
      }
      a.put("scope ref ");
      if (!context.isTypedef(tree)) {
        a.put("SumType!(");
      }
      context.sumType = true;
      tree.children[0].children.putWithDelimiter!(generateDImports)(", ", a, context.withSkipOptional);
      if (optional && context.returnType)
        a.put(")");
      if (!context.isTypedef(tree))
        a.put(")");
      break;
    } else if (context.isTypedef(tree) && context.semantics.isNullable(tree)) {
      auto typeName = tree.getTypeName();
      auto aliasedType = context.semantics.getAliasedType(typeName);
      aliasedType.generateDImports(a, context);
    } else {
      context.primitiveType = context.isPrimitive(tree);
      tree.children[0].generateDImports(a, context);
    }
    break;
  case "WebIDL.UnionMemberType":
    context.optional = false;
    if (!context.isTypedef(tree) && context.isUnion(tree)) {
      bool optional = tree.matches[$-1] == "?";
      context.optional = optional;
      if (optional) {
        if (context.returnType)
          a.put("Optional!(");
        else
          a.put("bool, ");
      }
      a.put("SumType!(");
      tree.children[0].children.putWithDelimiter!(generateDImports)(", ", a, context);
      if (optional && context.returnType)
        a.put(")");
      a.put(")");
      break;
    } else
      tree.children.each!(c => c.generateDImports(a, context));
    break;
  case "WebIDL.IncludesStatement":
    break;
  case "WebIDL.ReturnType":
    context.returnType = true;
    if (tree.children.length > 0) {
      if (context.isPrimitive(tree.children[0]) || context.isUnion(tree.children[0]) || tree.matches[$-1] == "?")
        tree.children[0].generateDImports(a, context);
      else if (tree.matches[0] != "void")
        a.put("Handle");
      else
        a.put("void");
    }
    else
      a.put(tree.matches[0]);
    break;
  case "WebIDL.OperationRest":
  case "WebIDL.Enum":
  case "WebIDL.Dictionary":
  case "WebIDL.DictionaryMember":
  case "WebIDL.Iterable":
  case "WebIDL.Typedef":
  case "WebIDL.SetlikeRest":
  case "WebIDL.MaplikeRest":
  case "WebIDL.CallbackRest":
  case "WebIDL.MixinRest":
    break;
  case "WebIDL.SequenceType":
    a.put("Handle");
    break;
  case "WebIDL.MixinMember":
  case "WebIDL.Const":
  case "WebIDL.Partial":
    break;
  case "WebIDL.PromiseType":
    a.put("Promise!(");
    tree.children[0].generateDImports(a, context);
    a.put(")");
    break;
  case "WebIDL.PartialInterfaceRest":
    tree.children[1].generateDImports(a, context);
    break;
  default:
    tree.children.each!(c => generateDImports(c, a, context));
  }
}

string orNone(string s) {
  if (s.length == 0)
    return "none";
  return s;
}

auto createOptionalOverloads(FunctionNode func) {
  static bool notOptional(ref Argument arg) {
    return arg.argRest.matches[0] != "optional";
  }
  return chain([func],func.args.retro.until!(notOptional).enumerate.map!((t){
        return new FunctionNode(func.name, func.args[0..$-(t.index+1)], func.result, func.type, func.manglePostfix~t.index.to!string, func.baseType, func.customName);
      }));
}

IR toIr(ref Module module_) {
  auto app = appender!(Node[]);
  module_.iterate!(toIr)(app, Context(module_.semantics));
  return new IR([new ModuleNode(module_, app.data)], module_.semantics);
}
IR toIr(ref Semantics semantics) {
  auto app = appender!(ModuleNode[]);
  foreach(module_; semantics.modules) {
    auto mApp = appender!(Node[]);
    module_.iterate!(toIr)(mApp, Context(semantics));
    app.put(new ModuleNode(module_, mApp.data));
  }
  return new IR(app.data, semantics);
}

void toIr(Appender)(ParseTree tree, ref Appender a, Context context) {
  switch (tree.name) {
  case "WebIDL.Namespace":
    // TODO: get matching partials
    auto app = appender!(Node[]);
    tree.children[1..$].each!(c => toIr(c, app, context));
    a.put(new StructNode(tree.children[0].matches[0], ParseTree.init, app.data, Yes.isStatic));
    break;
  case "WebIDL.InterfaceRest":
    ParseTree baseType;
    if (tree.children[1].children.length > 0 && tree.children[1].children[0].matches.length != 0)
      baseType = tree.children[1].children[0];
    auto app = appender!(Node[]);
    tree.children[2..$].each!(c => toIr(c, app, context));
    a.put(new StructNode(tree.children[0].matches[0], baseType, app.data));
    if (context.extendedAttributeList != ParseTree.init) {
      auto constructors = context.extendedAttributeList.children.filter!(attr => attr.matches[0] == "Constructor").array();
      auto exposeds = context.extendedAttributeList.children.filter!(attr => attr.matches[0] == "Exposed").map!(e => e.children[0].children[1].children).joiner();
      bool overloads = constructors.length > 1;
      foreach(constructor; constructors) {
        Argument[] args;
        string manglePostfix;
        if (constructor.children[0].children.length > 1) {
          auto argList = constructor.children[0].children[1];
          args = zip(argList.extractArguments,argList.extractTypes,argList.extractDefaults,argList.extractArgumentRests).map!(a=>Argument(a[0],a[1],a[2],a[3])).array();
        }
        if (overloads) {
          manglePostfix = "_" ~ args.map!(arg => arg.type.mangleTypeJs(context.semantics)).joiner("_").text;
        }
        auto name = tree.children[0].matches[0];
        auto result = context.semantics.getType(tree.children[0].matches[0]);
        foreach(exposed; exposeds) {
          auto baseTypeName = exposed.matches[0];
          a.put(new ExposedConstructorNode(name, args, result, baseTypeName, manglePostfix));
        }
      }
    }
    break;
  case "WebIDL.IncludesStatement":
    context.isIncludes = true;
    context.includes = tree;
    context.typeName = tree.children[1].matches[0];
    ParseTree mixinRest = context.getType(context.typeName);
    auto partials = context.getMatchingPartials(context.typeName);
    auto app = appender!(Node[]);
    mixinRest.children[1].toIr(app, context);
    partials.each!((c){
        if (c.children[0].children[0].children[0].name == "WebIDL.MixinRest")
          toIr(c.children[0].children[0].children[0].children[1], app, context);
        else
          toIr(c.children[0], app, context);
      });
    a.put(new StructIncludesNode(tree.children[0].matches[0], tree.children[1].matches[0], app.data));
    break;
  case "WebIDL.Iterable":
    // a.putLn("// TODO: add iterable");
    break;
  case "WebIDL.MixinRest":
    context.typeName = tree.children[0].matches[0];
    auto partials = context.getMatchingPartials(context.typeName);
    auto app = appender!(Node[]);
    tree.children[1].toIr(app, context);
    partials.each!(c => toIr(c.children[0].children[0].children[0].children[1], app, context));
    a.put(new MixinNode(tree.children[0].matches[0], app.data));
    break;
  case "WebIDL.Const":
    a.put(new ConstNode(tree.children[0].generateDType(context),
                        tree.children[1].generateDType(context),
                        tree.children[2].generateDType(context)));
    break;
  case "WebIDL.InterfaceMember":
    context.extendedAttributeList = tree.children[0];
    tree.children[1].toIr(a, context);
    break;
  case "WebIDL.ReadOnlyMember":
    context.readonly = true;
    tree.children[0].toIr(a, context);
    break;
  case "WebIDL.MixinMember":
    if (tree.children[0].name == "WebIDL.ReadOnly") {
      if (tree.children[0].matches[0] == "readonly") {
        context.readonly = true;
      }
      tree.children[1].toIr(a, context);
    } else
      tree.children[0].toIr(a, context);
    break;
  case "WebIDL.AttributeRest":
    if (context.isIncludes) {
      auto name = tree.children[1].matches[0];
      auto baseName = context.includes.children[0].matches[0];
      auto attrType = tree.children[0];
      auto attrArg = Argument(name, attrType);

      if (!context.readonly)
        a.put(new FunctionNode( name, [attrArg], ParseTree.init, FunctionType.Attribute | FunctionType.Includes, "Set", baseName, ""));
      a.put(new FunctionNode( name, [], attrType, FunctionType.Attribute | FunctionType.Includes, "Get", baseName, ""));
      break;
    }
    if (context.isPartial) {
      auto name = tree.children[1].matches[0];
      auto baseName = context.partial.children[0].children[0].matches[0];
      auto attrType = tree.children[0];
      auto attrArg = Argument(name, attrType);

      if (!context.readonly)
        a.put(new FunctionNode( name, [attrArg], ParseTree.init, FunctionType.Attribute | FunctionType.Partial, "Set", baseName, ""));
      a.put(new FunctionNode( name, [], attrType, FunctionType.Attribute | FunctionType.Partial, "Get", baseName, ""));
      break;
    }
    auto name = tree.children[1].matches[0];
    auto attrType = tree.children[0];
    if (!context.readonly)
      a.put(new FunctionNode( name, [Argument(name, attrType)], ParseTree.init, FunctionType.Attribute, "Set", "", ""));
    a.put(new FunctionNode( name, [], attrType, FunctionType.Attribute, "Get", "", ""));
    break;
  case "WebIDL.ExtendedAttributeList":
    context.extendedAttributeList = tree;
    break;
  case "WebIDL.SpecialOperation":
    if (tree.children[1].children[1].children[0].matches[0] != "") {
      // context.customName = tree.children[0].matches[0];
      tree.children[1].toIr(a, context);
      switch(tree.matches[0]) {
      case "getter":
        // (cast(FunctionNode)a.data[$-1]).type |= FunctionType.Getter;
        (cast(FunctionNode)a.data[$-1]).manglePostfix = tree.children[0].matches[0];
        break;
      case "setter":
        // (cast(FunctionNode)a.data[$-1]).type |= FunctionType.Getter;
        (cast(FunctionNode)a.data[$-1]).manglePostfix = tree.children[0].matches[0];
        break;
      default: break;
      }
      break;
    }
    auto rest = tree.children[1].children[1];
    auto args = zip(rest.children[1].extractArguments,rest.children[1].extractTypes, rest.children[1].extractArgumentRests).map!(a=>Argument(a[0],a[1],ParseTree.init,a[2])).array();
    auto result = tree.children[1].children[0];
    switch(tree.matches[0]) {
    case "getter":
      assert(args.length == 1);
      a.put(new FunctionNode( "getter", args, result, FunctionType.OpIndex | FunctionType.Getter, "", "", ""));
      args = args.dup();
      args[0].templated = true;
      a.put(new FunctionNode( "getter", args, result, FunctionType.OpDispatch | FunctionType.Getter, "", "" ,""));
      break;
    case "setter":
      assert(args.length == 2);
      a.put(new FunctionNode( "setter", args, ParseTree.init, FunctionType.OpIndexAssign | FunctionType.Setter, "", "", ""));
      args = args.dup();
      args[0].templated = true;
      a.put(new FunctionNode( "setter", args, ParseTree.init, FunctionType.OpDispatch | FunctionType.Setter, "", "", ""));
      break;
    case "deleter":
      a.put(new FunctionNode( "remove", args, ParseTree.init, FunctionType.Function | FunctionType.Deleter, "", "", "deleter"));
      break;
    default: assert(0);
    }
    break;
  case "WebIDL.RegularOperation":
    auto rest = tree.children[1];
    auto args = zip(rest.children[1].extractArguments,rest.children[1].extractTypes,rest.children[1].extractDefaults,rest.children[1].extractArgumentRests).map!(a=>Argument(a[0],a[1],a[2],a[3])).array();
    auto result = tree.children[0];
    if (context.isIncludes) {
      auto name = tree.children[1].matches[0];
      auto baseName = context.includes.children[0].matches[0];
      createOptionalOverloads(new FunctionNode( name, args, result, FunctionType.Function | FunctionType.Includes, "", baseName, context.customName)).copy(a);
      break;
    }
    if (context.isPartial) {
      auto name = rest.children[0].matches[0];
      auto baseName = context.partial.children[0].children[0].matches[0];
      createOptionalOverloads(new FunctionNode( name, args, result, FunctionType.Function | FunctionType.Partial, "", baseName, context.customName)).copy(a);
      break;
    }
    auto name = rest.children[0].matches[0];
    createOptionalOverloads(new FunctionNode( name, args, result, FunctionType.Function, "", "", context.customName)).copy(a);
    break;
  case "WebIDL.Enum":
    a.put(new EnumNode(tree.children[0].matches[0], tree.children[1].children.map!(c => c.matches[0][1..$-1].orNone.friendlyName).joiner(",\n  ").text));
    break;
  case "WebIDL.Dictionary":
    ParseTree baseType;
    if (tree.children[1].children.length > 0 && tree.children[1].children[0].matches.length != 0)
      baseType = tree.children[1].children[0];
    auto app = appender!(Node[]);
    Argument[] args;
    app.put(new FunctionNode("create", args, ParseTree.init, FunctionType.DictionaryConstructor, "", "", ""));
    tree.children[2].toIr(app, context);
    a.put(new StructNode(tree.children[0].matches[0], baseType, app.data));
    break;
  case "WebIDL.DictionaryMember":
    context.extendedAttributeList = tree.children[0];
    tree.children[1].toIr(a, context);
    break;
  case "WebIDL.MaplikeRest":
    a.put(new MaplikeNode(tree.children[0], tree.children[1]));
    break;
  case "WebIDL.DictionaryMemberRest":
    auto name = tree.children[1].matches[0];
    auto paramType = tree.children[0];
    a.put(new FunctionNode(name, [Argument(name, paramType)], ParseTree.init, FunctionType.Attribute, "Set", "", ""));
    a.put(new FunctionNode(name, [], paramType, FunctionType.Attribute, "Get", "", ""));
    break;
  case "WebIDL.Typedef":
    a.put(new TypedefNode(tree.children[1].matches[0], tree.children[0].generateDType(context), tree.children[0]));
    break;
  case "WebIDL.Partial":
    context.partial = tree;
    if (tree.children[0].children[0].name == "WebIDL.PartialInterfaceOrPartialMixin") {
      context.typeName = tree.children[0].children[0].children[0].children[0].matches[0];
      auto baseType = context.getType(context.typeName);
      if (baseType.name == "WebIDL.MixinRest")
        return;
    } else if (tree.children[0].children[0].name == "WebIDL.PartialDictionary")
      context.typeName = tree.children[0].children[0].children[0].matches[0];
    tree.children[0].toIr(a, context);
    break;
  case "WebIDL.PartialInterfaceRest":
    tree.children[1].toIr(a, context);
    break;
  case "WebIDL.CallbackRest":
    auto argList = tree.children[2];
    auto args = zip(argList.extractArguments,argList.extractTypes,argList.extractDefaults,argList.extractArgumentRests).map!(a=>Argument(a[0],a[1],a[2],a[3])).array();

    a.put(new CallbackNode(tree.children[0].matches[0], tree.children[1], args));
    break;
  default:
    tree.children.each!(c => toIr(c, a, context));
    return;
  }
}

auto collectFunctions(IR ir, string[] filter) {
  import std.algorithm : canFind;
  auto app = appender!(FunctionNode[]);
  void recurse(Node node, string parentName) {
    if (auto fun = cast(FunctionNode)node) {
      string name = mangleName(parentName.length > 0 ? parentName : fun.baseType, fun.name, fun.manglePostfix);
      if (filter.length == 0 || filter.canFind(name)) {
        app.put(fun);
      }
    } else if (auto structNode = cast(StructNode)node) {
      foreach(child; structNode.children)
        recurse(child, structNode.name);
    } else if (auto includesNode = cast(StructIncludesNode)node) {
      foreach(child; includesNode.children)
        recurse(child, includesNode.name);
    } else if (auto moduleNode = cast(ModuleNode)node) {
      foreach(child; moduleNode.children)
        recurse(child, "");
    }
  }
  ir.nodes.each!(node => recurse(node, ""));
  return app.data;
}
auto collectCallbacks(alias pred)(IR ir) {
  import std.algorithm : canFind;
  auto app = appender!(CallbackNode[]);
  void recurse(Node node) {
    if (auto cb = cast(CallbackNode)node) {
      if (pred(cb)) {
        app.put(cb);
      }
    } else if (auto moduleNode = cast(ModuleNode)node) {
      foreach(child; moduleNode.children)
        recurse(child);
    }
  }
  ir.nodes.each!(node => recurse(node));
  return app.data;
}
auto collectUsedCallbackNames(IR ir, FunctionNode[] funcs) {
  return funcs.map!(f => f.args).joiner.map!(a => a.type).filter!(t => ir.semantics.isCallback(t)).map!((c){
      if (ir.semantics.isTypedef(c))
        return ir.semantics.getAliasedType(c.getTypeName());
      return c;
    }).map!(t => t.getTypeName()).array().sort.uniq;
}
void generateDecodedTypes(IR ir, ref Appender!(ParseTree[]) a, string[] filter) {
  auto semantics = ir.semantics;
  auto funcs = collectFunctions(ir, filter);
  auto callbackNames = collectUsedCallbackNames(ir, funcs);
  auto cbs = collectCallbacks!(c => callbackNames.canFind(c.name))(ir);
  foreach(fun; funcs) {
    foreach(arg; fun.args) {
      if (semantics.isUnion(arg.type) || semantics.isEnum(arg.type)) {
        a.put(arg.type);
      }
    }
  }
  foreach(cb; cbs) {
    if (semantics.isUnion(cb.result) || semantics.isEnum(cb.result) || semantics.isAny(cb.result))
      a.put(cb.result);
  }
}
void generateEncodedTypes(IR ir, ref Appender!(ParseTree[]) a, string[] filter) {
  auto semantics = ir.semantics;
  auto funcs = collectFunctions(ir, filter);
  foreach(fun; funcs) {
    if (fun.result != ParseTree.init && fun.result.matches[0] != "void") {
      if (semantics.isStringType(fun.result) || semantics.isUnion(fun.result) || semantics.isNullable(fun.result) || semantics.isEnum(fun.result)) {
        a.put(fun.result);
      }
    }
    foreach(arg; fun.args) {
      if (semantics.isCallback(arg.type.matches[0])){
        auto argList = semantics.getArgumentList(arg.type);
        auto types = extractTypes(argList);
        foreach(type; types) {
          if (semantics.isStringType(type) || semantics.isUnion(type)
              || semantics.isNullable(type) || semantics.isEnum(type))
            a.put(type);
        }
      }
    }
  }
}

auto stripNullable(const ParseTree tree) {
  ParseTree clone = tree.dup();
  if (clone.children.length == 0)
    return clone;
  switch (clone.name) {
  case "WebIDL.ExtendedAttributeList": return clone;
  case "WebIDL.CallbackRest": return clone;
  case "WebIDL.Dictionary": return clone;
  case "WebIDL.CallbackOrInterfaceOrMixin": return clone;
  case "WebIDL.PartialDefinition": return clone;
  default:
  }
  if (clone.children[$-1].name == "WebIDL.Null") {
    clone.children = clone.children.dup;
    clone.children[$-1].matches = [""];
    clone.matches[$-1] = "";
    return clone;
  } else if (clone.matches[$-1] == "?") {
    clone.matches = clone.matches.dup[0..$-1];
  }
  clone.children = clone.children.map!(c => c.stripNullable).array;
  return clone;
}

void generateJsDecoder(Decoder)(Decoder decoder, ref IndentedStringAppender a, ref Semantics semantics, bool isVar) {
  a.put("spasm_decode_");
  a.put(decoder.mangled);
  if (isVar) {
    a.put(" = ");
  } else {
    a.put(": ");
  }
  if (semantics.isPrimitive(decoder.tree)) {
    switch (decoder.mangled) {
    case "uint":
    case "bool":
      a.put("getUInt");
      return;
    case "double":
      a.put("getDouble");
      return;
    default:
    }
  }
  if (decoder.mangled == "Handle" || decoder.mangled == "object" || decoder.mangled == "sequence" || decoder.mangled == "object" || decoder.mangled == "record") {
    a.put("decode_handle");
    return;
  }
  a.putLn("(ptr)=>{");
  a.indent();
  // enum
  // optional!T
  // sumType!Ts
  // typedef to T
  if (semantics.isNullableTypedef(decoder.tree)) {
    string typeName = decoder.tree.getTypeName();
    auto aliasedType = semantics.getAliasedType(typeName);
    uint structSize = semantics.getSizeOf(aliasedType);
    a.putLn(["if (getBool(ptr+", structSize.to!string, ")) {"]);
    a.indent();
    auto typedefMangled = aliasedType.mangleTypeJs(semantics);
    a.putLn(["return spasm_decode_",typedefMangled,"(ptr);"]);
    a.undent();
    a.putLn("}");
  } else if (semantics.isTypedef(decoder.tree)) {
    string typeName = decoder.tree.getTypeName();
    auto aliasedType = semantics.getAliasedType(typeName);
    auto typedefMangled = aliasedType.mangleTypeJs(semantics);
    a.putLn(["return spasm_decode_",typedefMangled,"(ptr);"]);
  } else if (semantics.isNullable(decoder.tree)) {
    auto baseType = decoder.tree.stripNullable;
    uint structSize = semantics.getSizeOf(baseType);
    a.putLn(["if (getBool(ptr+", structSize.to!string, ")) {"]);
    a.indent();
    auto typedefMangled = baseType.mangleTypeJs(semantics);
    a.putLn(["return spasm_decode_",typedefMangled,"(ptr);"]);
    a.undent();
    a.putLn("}");
  } else if (semantics.isEnum(decoder.tree)) {
    string typeName = decoder.tree.getTypeName();
    auto aliasedType = (typeName in semantics.types).tree;
    a.putLn(["const vals = [",aliasedType.children[1].children.map!(c => c.matches[0]).joiner(", ").text,"];"]);
    a.putLn("return vals[ptr];");
  } else if (semantics.isUnion(decoder.tree)) {
    void outputChild(Child)(Child c, ref Semantics semantics) {
      a.putLn(["if (getUInt(ptr) == ", c.index.to!string, ") {"]);
      a.indent();
      a.putLn(["return spasm_decode_",c.value.mangleTypeJs(semantics),"(ptr+4);"]);
      a.undent();
      a.put("}");
    }
    auto children = semantics.getUnionChildren(decoder.tree).enumerate;
    if (children.length > 0) {
      children[0..$-1].each!((c){
        outputChild(c, semantics);
        a.put(" else ");
      });
      outputChild(semantics.getUnionChildren(decoder.tree).enumerate[$-1], semantics);
    }
    a.putLn("");
  } else if (semantics.isSequence(decoder.tree)) {
    a.putLn("// sequence");
  } else if (semantics.isPrimitive(decoder.tree)) {
    switch (decoder.mangled) {
    case "ulong":
      a.putLn("return getUInt(ptr) + (getUInt(ptr+4) << 32);");
      break;
    default:
      a.putLn("// primitive");
      a.putLn(["// ", decoder.tree.name]);
      a.putLn(decoder.tree.toString);
      break;
    }
  } else {
    a.putLn(["// ", decoder.tree.name]);
    a.putLn("// other");
  }
  // where T can be any of the above
  // and Ts two or more of the set including the above and the following:
  // - any primitive (double, bool, int; unsigned/signed; etc.)
  // - a JsHandle
  a.undent();
  a.put("}");
}
void generateJsEncoder(Encoder)(Encoder encoder, ref IndentedStringAppender a, ref Semantics semantics, bool isVar) {
  a.put("spasm_encode_");
  a.put(encoder.mangled);
  if (isVar) {
    a.put(" = ");
  } else {
    a.put(": ");
  }
  if (semantics.isPrimitive(encoder.tree)) {
    switch (encoder.mangled) {
    case "uint":
    case "bool":
      a.put("setUInt");
      return;
    case "double":
      a.put("setDouble");
      return;
    default:
    }
  }
  if (encoder.mangled == "Handle" || encoder.mangled == "object" || encoder.mangled == "sequence" || encoder.mangled == "object" || encoder.mangled == "record") {
    a.put("encode_handle");
    return;
  }
  a.putLn("(ptr, val)=>{");
  a.indent();
  // enum
  // optional!T
  // sumType!Ts
  // typedef to T
  if (semantics.isNullableTypedef(encoder.tree)) {
    string typeName = encoder.tree.getTypeName();
    auto aliasedType = semantics.getAliasedType(typeName);
    uint structSize = semantics.getSizeOf(aliasedType);
    a.putLn(["if (setBool(ptr+", structSize.to!string, ", isDefined(val))) {"]);
    a.indent();
    auto typedefMangled = aliasedType.mangleTypeJs(semantics);
    a.putLn(["spasm_encode_",typedefMangled,"(ptr, val);"]);
    a.undent();
    a.putLn("}");
  } else if (semantics.isTypedef(encoder.tree)) {
    string typeName = encoder.tree.getTypeName();
    auto aliasedType = semantics.getAliasedType(typeName);
    auto typedefMangled = aliasedType.mangleTypeJs(semantics);
    a.putLn(["spasm_encode_",typedefMangled,"(ptr, val);"]);
  } else if (semantics.isNullable(encoder.tree)) {
    auto baseType = encoder.tree.stripNullable;
    uint structSize = semantics.getSizeOf(baseType);
    a.putLn(["if (setBool(ptr+", structSize.to!string, ", isDefined(val))) {"]);
    a.indent();
    auto typedefMangled = baseType.mangleTypeJs(semantics);
    a.putLn(["spasm_encode_",typedefMangled,"(ptr, val);"]);
    a.undent();
    a.putLn("}");
  } else if (semantics.isEnum(encoder.tree)) {
    string typeName = encoder.tree.getTypeName();
    auto aliasedType = (typeName in semantics.types).tree;
    a.putLn(["const vals = [",aliasedType.children[1].children.map!(c => c.matches[0]).joiner(", ").text,"];"]);
    a.putLn("setInt(ptr, vals.indexOf(val))");
  } else if (semantics.isUnion(encoder.tree)) {
    void outputChild(Child)(Child c, ref Semantics semantics) {
        a.putLn(["if (val instanceof ",c.value.getTypeName,") {"]);
        a.indent();
        a.putLn(["setUInt(ptr, ",c.index.to!string ,");"]);
        a.putLn(["spasm_encode_",c.value.mangleTypeJs(semantics),"(ptr+4, val);"]);
        a.undent();
        a.put("}");
    }
    auto children = semantics.getUnionChildren(encoder.tree).enumerate;
    if (children.length > 0) {
      children[0..$-1].each!((c){
        outputChild(c, semantics);
        a.put(" else ");
      });
      outputChild(semantics.getUnionChildren(encoder.tree).enumerate[$-1], semantics);
    }
    a.putLn("");
  } else if (semantics.isSequence(encoder.tree)) {
    a.putLn("// sequence");
  } else if (semantics.isPrimitive(encoder.tree)) {
    switch (encoder.mangled) {
    case "ulong":
      a.putLn("setUInt(ptr, val & 0xffffffff);");
      a.putLn("setUInt(ptr+4, val >> 32);");
      break;
    default:
      a.putLn("// primitive");
      a.putLn(["// ", encoder.tree.name]);
      a.putLn(encoder.tree.toString);
      break;
    }
  } else {
    a.putLn(["// ", encoder.tree.name]);
    a.putLn("// other");
  }
  // where T can be any of the above
  // and Ts two or more of the set including the above and the following:
  // - any primitive (double, bool, int; unsigned/signed; etc.)
  // - a JsHandle
  a.undent();
  a.put("}");
}


void iterate(alias fun, Appender, Args...)(ref Module module_, ref Appender app, Args args) {
  foreach (key; module_.types.keys.array.sort) {
    auto type = module_.types[key];
    static if (Args.length > 0)
      args[0].extendedAttributeList = type.attributes;
    fun(type.tree, app, args);
  }
  foreach (namespace; module_.namespaces.dup.schwartzSort!(i => i.tree.name)) { 
    fun(namespace.tree, app, args);
  }
  foreach (partialType; module_.partials.dup.schwartzSort!(i => i.tree.name)) {
    static if (Args.length > 0)
      args[0].extendedAttributeList = partialType.attributes;
    fun(partialType.tree, app, args);
  }
  foreach (mixinType; module_.mixins.dup.schwartzSort!(i => i.tree.name)) {
    fun(mixinType.tree, app, args);
  }
}

ParseTree[] getUnionChildren(ref Semantics semantics, ParseTree tree) {
  if (tree.name == "WebIDL.ReturnType")
    return semantics.getUnionChildren(tree.children[0].children[0]);
  if (tree.name == "WebIDL.TypeWithExtendedAttributes")
    return semantics.getUnionChildren(tree.children[1].children[0]);
  if (tree.name == "WebIDL.Type") {
    assert(tree.children[0].name == "WebIDL.UnionType");
    return semantics.getUnionChildren(tree.children[0]);
  }
  assert(tree.name == "WebIDL.UnionType");
  return tree.children;
}
struct TypeEncoder {
  string mangled;
  ParseTree tree;
  bool external;
}
struct TypeDecoder {
  string mangled;
  ParseTree tree;
}
TypeDecoder[] generateDecodedTypes(IR ir, string[] filter) {
  auto semantics = ir.semantics;
  auto app = appender!(ParseTree[]);
  ir.generateDecodedTypes(app, filter);
  auto decodedTypes = app.data.map!(t => TypeDecoder(t.mangleTypeJs(semantics),t)).array.sort!((a,b){return a.mangled < b.mangled;}).uniq!((a, b){return a.mangled == b.mangled;}).array;

  auto decoders = appender!(TypeDecoder[]);
  decodedTypes.copy(decoders);

  ulong start = 0, end = decoders.data.length;
  while (start != end) {
    foreach(decoder; decoders.data[start..end].dup) {
      if (semantics.isNullableTypedef(decoder.tree)) {
        string typeName = decoder.tree.getTypeName();
        auto aliasedType = semantics.getAliasedType(typeName);
        auto typedefMangled = aliasedType.mangleTypeJs(semantics);
        decoders.put(TypeDecoder(typedefMangled, aliasedType));
      } else if (semantics.isTypedef(decoder.tree)) {
        string typeName = decoder.tree.getTypeName();
        auto aliasedType = semantics.getAliasedType(typeName);
        auto typedefMangled = aliasedType.mangleTypeJs(semantics);
        decoders.put(TypeDecoder(typedefMangled, aliasedType));
      } else if (semantics.isNullable(decoder.tree)) {
        ParseTree clone = decoder.tree;
        auto baseType = clone.stripNullable;
        auto typedefMangled = baseType.mangleTypeJs(semantics);
        decoders.put(TypeDecoder(typedefMangled, baseType));
      } else if (semantics.isUnion(decoder.tree)) {
        foreach (child; semantics.getUnionChildren(decoder.tree)) {
          auto typedefMangled = child.mangleTypeJs(semantics);
          decoders.put(TypeDecoder(typedefMangled, child));
        }
      }
    }
    start = end;
    end = decoders.data.length;
  }
  return decoders.data;
}

TypeEncoder[] generateEncodedTypes(IR ir, string[] filter) {
  auto semantics = ir.semantics;
  auto app = appender!(ParseTree[]);
  ir.generateEncodedTypes(app, filter);
  auto encodedTypes = app.data.map!(t => TypeEncoder(t.mangleTypeJs(semantics),t,true)).array.sort!((a,b){return a.mangled < b.mangled;}).uniq!((a, b){return a.mangled == b.mangled;});

  auto encoders = appender!(TypeEncoder[]);
  encodedTypes.copy(encoders);

  ulong start = 0, end = encoders.data.length;
  while (start != end) {
    foreach(encoder; encoders.data[start..end].dup) {
      if (semantics.isNullableTypedef(encoder.tree)) {
        string typeName = encoder.tree.getTypeName();
        auto aliasedType = semantics.getAliasedType(typeName);
        auto typedefMangled = aliasedType.mangleTypeJs(semantics);
        encoders.put(TypeEncoder(typedefMangled, aliasedType, false));
      } else if (semantics.isTypedef(encoder.tree)) {
        string typeName = encoder.tree.getTypeName();
        auto aliasedType = semantics.getAliasedType(typeName);
        auto typedefMangled = aliasedType.mangleTypeJs(semantics);
        encoders.put(TypeEncoder(typedefMangled, aliasedType, false));
      } else if (semantics.isNullable(encoder.tree)) {
        ParseTree clone = encoder.tree;
        auto baseType = clone.stripNullable;
        auto typedefMangled = baseType.mangleTypeJs(semantics);
        encoders.put(TypeEncoder(typedefMangled, baseType, false));
      } else if (semantics.isUnion(encoder.tree)) {
        foreach (child; semantics.getUnionChildren(encoder.tree)) {
          auto typedefMangled = child.mangleTypeJs(semantics);
          encoders.put(TypeEncoder(typedefMangled, child, false));
        }
      }
    }
    start = end;
    end = encoders.data.length;
  }
  return encoders.data;
}

auto getImports(IR ir, Module module_) {
  import std.format : format;
  import std.typecons : tuple, Tuple;
  alias Item = Tuple!(Type,"type",string,"name");
  auto app = appender!(Item[]);
  auto semantics = ir.semantics;
  void extractTypes(alias sink)(Semantics semantics, ParseTree tree, Appender!(Item[]) app) {
    if (tree.name == "WebIDL.Typedef") {
      sink(tree.children[1].matches[0], semantics, app);
    } else if (tree.name == "WebIDL.NonAnyType" && tree.children[0].name == "WebIDL.Identifier") {
      sink(tree.matches[0], semantics, app);
    } else if (tree.name == "WebIDL.Inheritance") {
      if (tree.children.length > 0) {
        sink(tree.children[0].matches[0], semantics, app);
      }
    }
    else
      tree.children.each!(c => extractTypes!(sink)(semantics, c, app));
  }
  static void sink(string name, Semantics semantics, Appender!(Item[]) app) {
    if (name == "void")
      return;
    if (auto p = name in semantics.types) {
      if (semantics.isTypedef(name)) {
        auto baseType = semantics.getAliasedType(name);
        auto str = generateDType(baseType, Context(semantics));
        if (str.length < name.length) {
          if (auto q = str in semantics.types) {
            app.put(tuple!("type", "name")(*q, str));
            return;
          }
        }
      }
      app.put(tuple!("type","name")(*p, name));
    } else {
      writeln("Cannot find ", name);
    }
  }
  void recurse(Node node) {
    if (cast(FunctionNode)node) {
      extractTypes!sink(semantics, (cast(FunctionNode)node).result, app);
      (cast(FunctionNode)node).args.each!(arg => extractTypes!sink(semantics, arg.type, app));
    } else if (cast(TypedefNode)node) {
      extractTypes!sink(semantics, (cast(TypedefNode)node).rhs, app);
    } else if (cast(CallbackNode)node) {
      extractTypes!sink(semantics, (cast(CallbackNode)node).result, app);
      (cast(CallbackNode)node).args.each!(arg => extractTypes!sink(semantics, arg.type, app));
    } else if (cast(StructNode)node) {
      auto baseType = (cast(StructNode)node).baseType;
      if (baseType != ParseTree.init && baseType.matches[0].length > 0)
        sink(baseType.matches[0], semantics, app);
      (cast(StructNode)node).children.each!(node => recurse(node));
    } else if (cast(StructIncludesNode)node) {
      auto name = (cast(StructIncludesNode)node).name;
      sink(name, semantics, app);
      (cast(StructIncludesNode)node).children.each!(node => recurse(node));
    } else if (cast(ModuleNode)node)
      (cast (ModuleNode)node).children.each!(node => recurse(node));
    else if (cast(MixinNode)node) {
      (cast(MixinNode)node).children.each!(node => recurse(node));
    } else if (auto cons = cast(ExposedConstructorNode)node) {
      sink(cons.name, semantics, app);
    }
  }
  ir.nodes.filter!(n => n.module_ is module_).each!((node){
      node.children.each!(c => recurse(c));
    });
  return app.data.filter!(t => t.type.module_ !is module_).map!(t => t.type.module_.name).map!(n => format("import spasm.bindings.%s;",n)).array.sort.uniq.array;
  // return app.data.schwartzSort!(a => a.name).uniq!((a,b){return a.name == b.name;}).filter!(t => t.type.module_ !is module_).map!(t => format("import spasm.bindings.%s : %s;", t.type.module_.name,t.name)).array;
}

class IR {
  ModuleNode[] nodes;
  StructNode[string] structs;
  Semantics semantics;
  this(ModuleNode[] nodes, Semantics semantics) {
    this.nodes = nodes;
    this.semantics = semantics;
    nodes.each!(mod => mod.children.map!(n => cast(StructNode)n).filter!(n => n !is null).each!((n){
          structs[n.name] = n;
        }));
    this.resolvePartialsAndIncludes();
    this.mangleJsOverloads(semantics);
    this.moveExposedConstructors();
    this.collectMethods();
  }
}

auto collectMethods(IR ir) {
  ir.structs.values.each!((s){
      foreach(child; s.children) {
        if (auto constructor = cast(ExposedConstructorNode)child) {
          s.functions ~= constructor.name;
        } else if (auto includes = cast(StructIncludesNode)child) {
          foreach(includesChild; includes.children) {
            if (auto func = cast(FunctionNode)includesChild) {
              s.functions ~= func.name;
            }
          }
        } else if (auto func = cast(FunctionNode)child) {
          s.functions ~= func.name;
        }
      }
    });
}
template skipType(T) {
  auto skipType(Range)(auto ref Range range) {
    return range.filter!(i => (cast(T)i) is null);
  }
}
template mapType(T) {
  auto mapType(Range)(auto ref Range range) {
    return range.map!(n => cast(T)n).filter!(n => n !is null);
  }
}
auto resolvePartialsAndIncludes(IR ir) {
  ir.nodes.each!(mod => mod.children.skipType!(ExposedConstructorNode).mapType!(FunctionNode).filter!(n => n.baseType.length > 0).each!((n){
        if (auto p = n.baseType in ir.structs)
          p.children ~= n;
        else
          writeln("Error: Type ", n.baseType, " is unknown: ");
      }));
  ir.nodes.each!(mod => mod.children.mapType!(StructIncludesNode).each!((n){
        if (auto p = n.baseType in ir.structs) {
          p.children ~= n;
        }
        else
          writeln("Error: Type ", n.baseType, " is unknown");
      }));
}
auto moveExposedConstructors(IR ir) {
  foreach(mod; ir.nodes) {
    mod.children.mapType!(ExposedConstructorNode).each!((constructor){
      if (auto p = constructor.baseType in ir.structs) {
        p.children ~= constructor;
      } else
        writeln("Error: cannot find type ", constructor.baseType," to exposed constructor ",constructor.name, " on.");
      });
  }
  foreach(mod; ir.nodes) {
    mod.children = std.algorithm.remove!(n => cast(ExposedConstructorNode)n)(mod.children);
  }
}
auto mangleJsOverloads(IR ir, Semantics semantics) {
  void handleSet(Node[] nodes) {
    auto funcs = nodes.mapType!(FunctionNode).array;
    nodes.mapType!(StructIncludesNode).each!(i => handleSet(i.children));
    auto overloadGroups = funcs.schwartzSort!((a){
        if (a.customName.length > 0)
          return a.customName ~ a.manglePostfix;
        return a.name ~ a.manglePostfix;
      }).groupBy.map!(g => g.array).filter!(g => g.length > 1);
    foreach(group; overloadGroups) {
      foreach(fun; group) {
        fun.manglePostfix ~= "_" ~ fun.args.map!(arg => arg.type.mangleTypeJs(semantics)).joiner("_").text;
      }
    }
  }
  import std.algorithm : schwartzSort;
  foreach(item; ir.structs.byValue) {
    handleSet(item.children);
  }
  foreach(item; ir.nodes.map!(n => n.children).joiner) {
    auto mixinNode = cast(MixinNode)item;
    if (mixinNode)
      handleSet(mixinNode.children);
  }
}
string generateDBindings(IR ir, Module module_) {
  auto app = IndentedStringAppender();
  auto context = Context(module_.semantics);
  ir.nodes.filter!(mod => mod.module_ is module_).each!(n => n.toDBinding(module_.semantics, &app));
  return app.data;
}

string generateDImports(IR ir, Module module_) {
  auto app = IndentedStringAppender();
  ir.nodes.filter!(mod => mod.module_ is module_).each!(n => n.toDImport(module_.semantics, &app));
  if (app.data.length > 0)
    return app.data[0 .. $ - 1]; // remove last newline
  return app.data;
}

string generateSingleJsBinding(IR ir, string[] filtered = []) {
  import std.algorithm : map, filter, joiner, each, sort, uniq, cmp;
  import std.array : array;
  import std.conv : text;
  import std.typecons : tuple;
  auto semantics = ir.semantics;
  auto app = IndentedStringAppender();
  app.putLn("// File is autogenerated with `dub spasm:webidl -- --bindgen`");
  app.putLn("import {spasm as spa, encoders as encoder, decoders as decoder} from '../modules/spasm.js';");
  app.putLn("let spasm = spa;");

  auto decodedTypes = ir.generateDecodedTypes(filtered).sort!((a,b){return a.mangled < b.mangled;}).uniq!((a, b){return a.mangled == b.mangled;});
  auto encodedTypes = ir.generateEncodedTypes(filtered).sort!((a,b){return a.mangled < b.mangled;}).uniq!((a, b){return a.mangled == b.mangled;});
  app.putLn("const setBool = (ptr, val) => (spasm.heapi32u[ptr/4] = +val),");
  app.putLn("      setInt = (ptr, val) => (spasm.heapi32s[ptr/4] = val),");
  app.putLn("      setUInt = (ptr, val) => (spasm.heapi32u[ptr/4] = val),");
  app.putLn("      setShort = (ptr, val) => (spasm.heapi16s[ptr/2] = val),");
  app.putLn("      setUShort = (ptr, val) => (spasm.heapi16u[ptr/2] = val),");
  app.putLn("      setByte = (ptr, val) => (spasm.heapi8s[ptr] = val),");
  app.putLn("      setUByte = (ptr, val) => (spasm.heapi8u[ptr] = val),");
  app.putLn("      setFloat = (ptr, val) => (spasm.heapf32[ptr/4] = val),");
  app.putLn("      setDouble = (ptr, val) => (spasm.heapf64[ptr/8] = val),");
  app.putLn("      getBool = (ptr) => spasm.heapi32u[ptr/4],");
  app.putLn("      getInt = (ptr) => spasm.heapi32s[ptr/4],");
  app.putLn("      getUInt = (ptr) => spasm.heapi32u[ptr/4],");
  app.putLn("      getShort = (ptr) => spasm.heapi16s[ptr/2],");
  app.putLn("      getUShort = (ptr) => spasm.heapi16u[ptr/2],");
  app.putLn("      getByte = (ptr) => spasm.heapi8s[ptr],");
  app.putLn("      getUByte = (ptr) => spasm.heapi8u[ptr],");
  app.putLn("      getFloat = (ptr) => spasm.heapf32[ptr/4],");
  app.putLn("      getDouble = (ptr) => spasm.heapf64[ptr/8],");
  app.putLn("      isDefined = (val) => (val != undefined && val != null),");
  app.putLn("      encode_handle = (ptr, val) => { setUInt(ptr, spasm.addObject(val)); },");
  app.putLn("      decode_handle = (ptr) => { return spasm.objects[getUInt(ptr)]; },");
  app.putLn("      spasm_encode_string = encoder.string,");
  app.putLn("      spasm_decode_string = decoder.string,");
  app.put("      spasm_indirect_function_get = (ptr)=>spasm.instance.exports.__indirect_function_table.get(ptr)");
  app.indent();
  foreach(encoder; encodedTypes.filter!(e => e.mangled != "string")) {
    app.putLn(",");
    encoder.generateJsEncoder(app, semantics, true);
  }
  foreach(decoder; decodedTypes.filter!(e => e.mangled != "string")) {
    app.putLn(",");
    decoder.generateJsDecoder(app, semantics, true);
  }
  app.putLn(";");
  app.undent();
  app.putLn("export let jsExports = {");
  app.indent();

  auto pos = app.data.length;
  ir.nodes.each!(n => n.toJsExport(semantics, filtered, &app));
  ir.generateJsGlobalBindings(filtered, app);

  app.undent();
  app.put("}");
  return app.data;
}

class Type {
  ParseTree tree;
  ParseTree attributes;
  Module module_;
  this(ParseTree t, ParseTree a, Module m) {
    tree = t;
    attributes = a;
    module_ = m;
  }
}

class Module {
  string name;
  Type[string] types;
  Type[] partials;
  Type[] mixins;
  Type[] namespaces;
  Semantics semantics;
  this(string n, Semantics semantics) {
    this.name = n;
    this.semantics = semantics;
  }
}

class Semantics {
  Type[string] types;
  Type[] partials;
  Type[] mixins;
  Type[] namespaces;
  Module[string] modules;
  Module analyse(string module_, ParseTree tree) {
    import std.range : chunks;
    assert(tree.name == "WebIDL");
    auto m = new Module(module_, this);
    foreach(chunk; tree.children[0].children.chunks(2)) {
      assert(chunk.length == 2);
      analyse(m, chunk[1], chunk[0]);
    }
    modules[module_] = m;
    foreach (n; m.namespaces)
      namespaces ~= n;
    foreach(p; m.partials)
      partials ~= p;
    foreach(mix; m.mixins)
      mixins ~= mix;
    foreach(k,v; m.types)
      types[k] = v;
    return m;
  }
  void dumpTypes() {
    import std.format;
    writefln("%(%s\n%)",types.keys.map!((key){return format("%s.%s", types[key].module_.name, key);}).array.sort);
  }
  private void analyse(Module module_, ParseTree tree, ParseTree attributes) {
    switch (tree.name) {
    case "WebIDL.IncludesStatement":
      module_.mixins ~= new Type(tree, ParseTree.init, module_);
      break;
    case "WebIDL.Dictionary":
    case "WebIDL.InterfaceRest":
    case "WebIDL.Enum":
    case "WebIDL.CallbackRest":
    case "WebIDL.MixinRest":
      string name = tree.children[0].matches[0];
    if (auto p = name in types) {
      writefln("Warning: duplicated entry for %s", name);
      writefln("A in %s: %s",(*p).module_.name,(*p).tree.input[(*p).tree.begin .. (*p).tree.end]);
      writefln("B in %s: %s",module_.name,tree.input[tree.begin .. tree.end]);
    }
    module_.types[name] = new Type(tree, attributes, module_);
    break;
    case "WebIDL.Partial":
      module_.partials ~= new Type(tree, attributes, module_);
      break;
    case "WebIDL.Typedef":
      string name = tree.children[1].matches[0];
      module_.types[name] = new Type(tree, attributes, module_);
      break;
    case "WebIDL.Namespace":
      module_.namespaces ~= new Type(tree, attributes, module_);
      break;
    default:
      tree.children.each!(c => analyse(module_, c, attributes));
    }
  }
}
string generateDType(ParseTree tree, Context context) {
  auto app = IndentedStringAppender();
  tree.generateDType(app, context);
  return app.data;
}
void generateDType(Appender)(ParseTree tree, ref Appender a, Context context) {
  switch (tree.name) {
  case "WebIDL.InterfaceRest":
  case "WebIDL.IncludesStatement":
  case "WebIDL.Iterable":
  case "WebIDL.MixinRest":
  case "WebIDL.Const":
  case "WebIDL.InterfaceMember":
  case "WebIDL.ReadOnlyMember":
  case "WebIDL.MixinMember":
  case "WebIDL.AttributeRest":
  case "WebIDL.ExtendedAttributeList":
  case "WebIDL.SpecialOperation":
  case "WebIDL.RegularOperation":
  case "WebIDL.ArgumentList":
  case "WebIDL.ArgumentName":
  case "WebIDL.ArgumentRest":
  case "WebIDL.Enum":
  case "WebIDL.Dictionary":
  case "WebIDL.DictionaryMember":
  case "WebIDL.SetlikeRest":
  case "WebIDL.MaplikeRest":
  case "WebIDL.DictionaryMemberRest":
  case "WebIDL.Typedef":
  case "WebIDL.Partial":
  case "WebIDL.PartialInterfaceRest":
  case "WebIDL.CallbackRest":
    break;
  case "WebIDL.SequenceType":
    if (tree.children[$-1].matches[0] == "?")
      a.put("Optional!(Sequence!(");
    else
      a.put("Sequence!(");
    tree.children[0].generateDType(a, context);
    a.put(")");
    if (tree.children[$-1].matches[0] == "?")
      a.put(")");
    break;
  case "WebIDL.TypeWithExtendedAttributes":
    context.extendedAttributeList = tree.children[0];
    tree.children[1].generateDType(a, context);
    break;
  case "WebIDL.StringType":
    a.put("string");
    break;
  case "WebIDL.SingleType":
    if (tree.matches[0] == "any")
      a.put("Any");
    else
      tree.children[0].generateDType(a, context);
    break;
  case "WebIDL.NonAnyType":
    bool optional = !context.skipOptional && (context.optional || tree.children[$-1].name == "WebIDL.Null" && tree.children[$-1].matches[0] == "?");
    if (optional) {
      a.put("Optional!(");
    }
    switch (tree.matches[0]) {
    case "object":
      a.put("JsObject");
      break;
    case "symbol":
      a.put("Symbol");
      break;
    case "Error":
      a.put("Error");
      break;
    case "FrozenArray":
      a.put("FrozenArray!(");
      tree.children[$-2].generateDType(a, context);
      a.put(")");
      break;
    default:
      tree.children.each!(c => c.generateDType(a, context));
    }
    if (optional) {
      a.put(")");
    }
    break;
  case "WebIDL.PrimitiveType":
    if (tree.children.length == 0) {
      switch (tree.matches[0]) {
      case "byte": a.put("byte"); break;
      case "octet": a.put("ubyte"); break;
      case "boolean": a.put("bool"); break;
      default: a.put(tree.matches[0]); break;
      }
    } else
      tree.children[0].generateDType(a, context);
    break;
  case "WebIDL.UnrestrictedFloatType":
    // TODO: handle unrestricted
    tree.children[0].generateDType(a, context);
    break;
  case "WebIDL.UnsignedIntegerType":
    if (tree.matches[0] == "unsigned")
      a.put("u");
    tree.children[0].generateDType(a, context);
    break;
  case "WebIDL.IntegerType":
    if (tree.matches[0] == "long") {
      if (tree.matches.length > 1)
        a.put("long");
      else
        a.put("int");
    } else
      a.put(tree.matches[0]);
    break;
  case "WebIDL.FloatType":
  case "WebIDL.Identifier":
    string typeName = tree.matches[0];
    if (context.isTypedef(typeName)) {
      auto aliasedType = context.getAliasedType(typeName);
      IndentedStringAppender app;
      aliasedType.generateDType(app, context);
      if (app.data.length < tree.matches[0].length)
        return a.put(app.data);
    }
    if (context.locals.canFind(tree.matches[0]))
      a.put(".");
    a.put(tree.matches[0]);
    break;
  case "WebIDL.ReturnType":
    if (tree.children.length > 0)
      tree.children[0].generateDType(a, context);
    else
      a.put(tree.matches[0]);
    break;
  case "WebIDL.Default":
    if (tree.children.length == 0)
      return;
    a.put("/* = ");
    tree.children[0].generateDType(a, context);
    a.put(" */");
    break;
  case "WebIDL.DefaultValue":
    if (tree.children.length == 0) {
      a.put("[]");
      return;
    }
    tree.children[0].generateDType(a, context);
    break;
  case "WebIDL.ConstValue":
    if (tree.children.length == 0) {
      a.put(tree.matches);
      break;
    }
    tree.children[0].generateDType(a, context);
    break;
  case "WebIDL.BooleanLiteral":
  case "WebIDL.Integer":
    a.put(tree.matches);
    break;
  case "WebIDL.Float":
    a.put(tree.matches[0]);
    break;
  case "WebIDL.FloatLiteral":
    if (tree.children.length == 0) {
      switch (tree.matches[0]) {
      case "-Infinity": a.put("-float.infinity"); break;
      case "Infinity": a.put("float.infinity"); break;
      case "NaN": a.put("float.nan"); break;
      default: assert(false);
      }
      break;
    }
    tree.children[0].generateDType(a, context);
    break;
  case "WebIDL.String":
    a.put(tree.matches);
    break;
  case "WebIDL.RecordType":
    a.put("Record!(");
    tree.children.putWithDelimiter!(generateDType)(", ", a, context);
    a.put(")");
    break;
  case "WebIDL.PromiseType":
    a.put("Promise!(");
    tree.children[0].generateDType(a, context);
    a.put(")");
    break;
  case "WebIDL.Type":
    context.optional = false;
    if (tree.children[0].name == "WebIDL.UnionType") {
      bool optional = !context.skipOptional && tree.children[1].matches[0] == "?";
      context.optional = optional;
      if (optional) {
        a.put("Optional!(");
      }
      a.put("SumType!(");
      tree.children[0].children.putWithDelimiter!(generateDType)(", ", a, context);
      if (optional)
        a.put(")");
      a.put(")");
      break;
    } else
      tree.children[0].generateDType(a, context);
    break;
  case "WebIDL.UnionMemberType":
    context.optional = false;
    if (tree.children[0].name == "WebIDL.UnionType") {
      bool optional = !context.skipOptional && tree.matches[$-1] == "?";
      context.optional = optional;
      if (optional) {
        a.put("Optional!(");
      }
      a.put("SumType!(");
      tree.children[0].children.putWithDelimiter!(generateDType)(", ", a, context);
      if (optional)
        a.put(")");
      a.put(")");
      break;
    } else
      tree.children.each!(c => c.generateDType(a, context));
    break;
  default:
    tree.children.each!(c => generateDType(c, a, context));
  }
}
