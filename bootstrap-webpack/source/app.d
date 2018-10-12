import std.stdio;

void main(string[] args)
{
  import std.file;
  import sdlang;
  import std.array : replace;
  immutable string appjs = import("./app.js");
  immutable string indexhtml = import("./index.html");
  immutable string devserver = import("./dev-server.js");
  immutable string packagejson = import("./package.json");
  immutable string webpackconfigjs = import("./webpack.config.js");

  string name;
  if (exists("dub.sdl")) {
    Tag targetProject = parseFile("dub.sdl");
    name = targetProject.expectTagValue!string("name");
  } else if (exists("dub.json")) {
    import asdf;
    struct Def {
      string name;
    }
    auto project = readText("dub.json").deserialize!Def;
    name = project.name;
  } else {
    throw new Exception("Must be run in folder with dub.sdl/dub.json file");
  }
  writeln("\nThis bootstrap project sets up the js-runtime needed to run applications build on top of spasm, as well as a webpack configuration used to bundle an `index.html`.");
  writeln("\nCopy runtime files and webpack config...");
  write("app.js",appjs.replace("@@targetProjectName@@",name));
  write("index.template.html",indexhtml);
  write("dev-server.js",devserver);
  write("package.json",packagejson);
  write("webpack.config.js",webpackconfigjs);
  writeln("Done!");
  writeln("\nNext steps:");
  writeln("run `npm install` to install js dependencies");
  writeln("run `npx webpack` to bundle js");
  writeln("run `npm run start` to start a dev-server");
  writeln("\nNote:");
  writeln("It is assumed you wasm binary is called `"~name~"`.\nIf that is not the case, or you change it in the future, you'll need to update app.js\n");
}
