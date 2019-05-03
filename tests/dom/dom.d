module dom.dom;

version (unittest):

import unit_threaded;
import spasm.dom;
import spasm.spa;
import spasm.types;

string renderToString(T)() {
  import std.format : format;
  T app;
  Handle rootIdx = cast(Handle)unittest_dom_nodes.data.length;
  import std.stdio;
  auto rootNode = new UnittestDomNode(NodeType.root, rootIdx + 1);
  unittest_dom_nodes.put(rootNode);
  app.setPointers();
  spasm.dom.render(JsHandle(rootIdx + 1), app);
  return format("%s", rootNode);
}

struct Div {
  mixin Node!"div";
}

unittest {
  renderToString!Div.should == "<div></div>";
}

unittest {
  struct Styled {
    @style!"class" mixin Node!"div";
  }
  renderToString!Styled.should == `<div class="class"></div>`;
}

unittest {
  struct App {
    mixin Node!"section";
    @child Div div;
  }
  renderToString!App.should == "<section><div></div></section>";
}
