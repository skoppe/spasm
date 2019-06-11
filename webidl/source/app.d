import std.stdio;
import webidl.binding.generator;
import webidl.grammar;
import std.algorithm : filter, joiner, map;
import std.array : array;
import std.range : chain, only;
import std.conv : text;
import wasm_reader.reader;
import std.process;
import std.file;
import std.stdio;
import std.path;
import std.getopt;
import std.format;
import std.typecons;
import openmethods;

string[] getFunctionsToGenerateBindingsFor(string wasmFile) {
  import std.algorithm : map, filter, joiner;
  import std.array : array;
  import std.range : drop, take;
  auto input = File(wasmFile).byChunk(4096).joiner().drop(8);
  auto sections = input.readSections.filter!(s => s.id == 2);
  auto importSections = sections.map!(s => s.payload.read!import_section);
  auto entries = importSections.map!(s => s.entries).joiner();
  auto functions = entries.filter!(e => e.kind == external_kind.Function);
  return functions.map!(e => e.field_str).array();
}
auto ignoreExceptions(Block)(lazy Block block) {
  try {
    block();
  } catch (Exception e) {}
}

string guessWasmFile() {
  import sdlang;
  import asdf;
  string path;
  if (exists("dub.sdl")) {
    Tag targetProject = parseFile("dub.sdl");
    path = getcwd() ~ "/" ~ targetProject.expectTagValue!string("name");
  } else if (exists("dub.json")) {
    struct Def {
      string name;
    }
    auto project = readText("dub.json").deserialize!Def;
    path = getcwd() ~ "/" ~ project.name;
  } else {
    throw new Exception("Must be run in folder with dub.sdl/dub.json file");
  }
  if (!exists(path)) {
    path = path.setExtension("wasm");
    if (!exists(path))
      throw new Exception("Cannot find wasm file automatically to generate bindings for. Make sure you build it or otherwise specify it manually with --wasm [file]");
  }
  return path;
}
void main(string[] args)
{
  updateMethods();

  string inFile = "";
  string dFolder = "";
  string jsFolder = "";
  string wasmFile = "";
  bool generateBindings = false;
  bool exportAll = false;
  auto helpInformation = getopt(
                                args,
                                "inDir",  &inFile,
                                "dDir", &dFolder,
                                "jsDir", &jsFolder,
                                "wasm", &wasmFile,
                                "bindgen", &generateBindings,
                                "export-all", &exportAll);

  if (generateBindings) {
    if (jsFolder == "")
      jsFolder = getcwd() ~ "/spasm/modules";
    mkdirRecurse(jsFolder).ignoreExceptions;
    dFolder = "";
    if (wasmFile == "")
      wasmFile = guessWasmFile();
  } else if (dFolder == "" && jsFolder == "") {
    writeln("Specify at least one of dFolder or jsFolder as argument.");
    return;
  }

  if (helpInformation.helpWanted) {
    defaultGetoptPrinter("Some information about the program.",
                         helpInformation.options);
    return;
  }

  if (inFile == "")
    inFile = args[0].dirName ~ "/definitions";

  auto ir = readDefinitions(inFile);
  string[] includeJsExports;
  if (wasmFile != "" && !exportAll) {
    writeln("Generating js bindings for ", wasmFile.baseName);
    includeJsExports = wasmFile.getFunctionsToGenerateBindingsFor();
  }

  if (dFolder != "") {
    ir.generateDFiles(dFolder);
  }
  if (jsFolder != "") {
    ir.generateJsFiles(jsFolder,includeJsExports);
  }
}

IR readDefinitions(string path) {
  auto semantics = new Semantics();
  writeln("Reading definitions...");
  if (isDir(path)) {
    auto entries = dirEntries(path, SpanMode.depth);
    foreach(entry; entries) {
      if (entry.name.extension() != ".idl")
        continue;
      auto input = readText(entry.name);
      auto document = WebIDL(input);
      if (!document.successful) {
        writeln("Failed to parse input. Are you sure it is valid WebIDL? Details:\n", document.failMsg);
        continue;
      }
      semantics.analyse(entry.name.baseName.stripExtension,document);
    }
  } else {
    auto input = readText(path);
    auto document = WebIDL(input);
    if (!document.successful) {
      throw new Error("Failed to parse input. Are you sure it is valid WebIDL? Details:\n" ~ document.failMsg);
    }
    semantics.analyse(path.baseName.stripExtension,document);
  }
  return semantics.toIr();
}

void generateDFiles(IR ir, string dFolder) {
  foreach(m; ir.semantics.modules) {
    auto name = m.name;
    string dFile = dFolder ~ "/" ~ name.setExtension("d");
    writeln("Writing ", dFile);
    std.file.write(dFile, "module spasm.bindings." ~ name ~ ";\n\n"~
                   "import spasm.types;\n");
    auto imports = ir.getImports(m);
    if (imports.length > 0)
      std.file.append(dFile, imports.joiner("\n").text~"\n\n");
    std.file.append(dFile, "nothrow:\n");
    std.file.append(dFile, ir.generateDBindings(m) ~ "\n\n");
    std.file.append(dFile, ir.generateDImports(m));
  }
  auto packageFile = dFolder ~ "/package.d";
  writeln("Writing ", packageFile);
  std.file.write(
                 packageFile,
                 chain(
                       "module spasm.bindings;\n\n",
                       ir.semantics.modules.values.map!(m => format("public import spasm.bindings.%s;",m.name)).joiner("\n")
                       ).text()
                 );
}

void generateJsFiles(IR ir, string jsFolder, string[] jsExportFilters) {
  string jsFile = jsFolder ~ "/bindings.js";
  writeln("Writing bindings file");
  std.file.write(jsFile, ir.generateSingleJsBinding(jsExportFilters));
  auto items = jsFolder.dirEntries("*.js", SpanMode.depth).map!(e=>tuple!("file","name")(e.name.relativePath(jsFolder),e.name.baseName.stripExtension)).filter!((i){ return i.name != "index" && i.name[0] != '.' && i.name[0] != '#';}).array;
  auto imports = items.map!((entry){return format("import * as %s from './%s';", entry.name, entry.file);});
  auto modulesLine = chain("const modules = [", items.map!(i => i.name).joiner(", "), "];").text;
  std.file.write(jsFolder ~ "/index.js", chain(only("// File is autogenerated with `dub spasm:webidl -- --bindgen`"), imports, only(modulesLine), only("export { spasm, modules }")).joiner("\n").text);
}
