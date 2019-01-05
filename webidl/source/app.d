import std.stdio;
import webidl.binding.generator;
import webidl.grammar;
import std.algorithm : filter, joiner;
import std.conv : text;

void main(string[] args)
{
  updateMethods();
  import std.getopt;
  string inFile = "";
  string outFolder = ".";
  string dFolder = ".";
  string jsFolder = ".";
  auto helpInformation = getopt(
                                args,
                                "inDir",  &inFile,
                                "outDir", &outFolder,
                                "dDir", &dFolder,
                                "jsDir", &jsFolder);
  if (outFolder != "." && dFolder == ".")
    dFolder = outFolder;

  if (outFolder != "." && jsFolder == ".")
    jsFolder = outFolder;

  if (helpInformation.helpWanted) {
    defaultGetoptPrinter("Some information about the program.",
                         helpInformation.options);
    return;
  }

  if (inFile == "") {
    writeln("Cannot find input file.");
    return;
  }

  import std.file;
  import std.stdio;
  import std.path;
  auto semantics = new Semantics();
  if (isDir(inFile)) {
    auto entries = dirEntries(inFile, SpanMode.depth);
    foreach(entry; entries) {
      writeln("Processing ", entry.name);
      auto input = readText(entry.name);
      auto document = WebIDL(input);
      if (!document.successful) {
        writeln("Failed to parse input. Are you sure it is valid WebIDL?");
        continue;
      }
      semantics.analyse(entry.name.baseName.stripExtension,document);
    }
  } else {
    auto input = readText(inFile);
    auto document = WebIDL(input);
    if (!document.successful) {
      writeln("Failed to parse input. Are you sure it is valid WebIDL?");
      return;
    }
    semantics.analyse(inFile.baseName.stripExtension,document);
  }
  // semantics.dumpTypes;
  auto ir = semantics.toIr();
  foreach(m; semantics.modules) {
    auto name = m.name;
    string dFile = dFolder ~ "/" ~ name.setExtension("d");
    string jsFile = jsFolder ~ "/" ~ name.setExtension("js");
    writeln("Writing ", dFile, " and ", jsFile);
    std.file.write(dFile, "module spasm.bindings." ~ name ~ ";\n\n"~
                   "import spasm.types;\n");
    auto imports = ir.getImports(m);
    if (imports.length > 0)
      std.file.append(dFile, imports.joiner("\n").text~"\n\n");
    std.file.append(dFile, ir.generateDBindings(m) ~ "\n\n");
    std.file.append(dFile, ir.generateDImports(m));
    std.file.write(jsFile, ir.generateJsExports(m));
  }
  string encoderFile = jsFolder ~ "/spasm.encoder.js";
  std.file.write(encoderFile, ir.generateJsEncoders(semantics));
}
