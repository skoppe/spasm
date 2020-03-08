module webidl.binding.it;

import webidl.binding.generator;
import webidl.grammar;

version (unittest):

import unit_threaded;

unittest {
  ensureJsBinding(["DOMStringMap_getter__string", "DOMStringMap_deleter"]);
}

void ensureJsBinding(string[] funs, in string file = __FILE__, in size_t line = __LINE__) {
  auto ir = getDefinitions();
  import std.algorithm : canFind;
  auto output = ir.generateSingleJsBinding(funs);
  foreach(fun; funs)
    output.canFind(fun).shouldBeTrue(file,line);
}

IR ir;

auto getDefinitions() {
  import std.file : dirEntries, SpanMode;
  import std.file : readText;
  import std.path : extension, baseName, stripExtension;
  if (ir)
    return ir;
  string path = "./definitions";
  Semantics semantics = new Semantics();
  auto entries = dirEntries(path, SpanMode.depth);
  foreach(entry; entries) {
    if (entry.name.extension() != ".idl")
      continue;
    auto input = readText(entry.name);
    auto document = WebIDL(input);
    if (!document.successful) {
      continue;
    }
    semantics.analyse(entry.name.baseName.stripExtension,document);
  }
  ir = semantics.toIr();
  return ir;
}
