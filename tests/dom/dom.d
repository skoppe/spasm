module dom.dom;

version (unittest):

import unit_threaded;
import spasm.dom;
import spasm.spa;
import spasm.types;

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

unittest {
  struct Toggle {
    mixin Node!"li";
    @style!"active" bool active;
  }
  Toggle toggle;
  import std.stdio;
  auto node = toggle.renderToNode;
  node.renderToString().should == "<li></li>";
  toggle.update.active = true;
  node.renderToString().should == `<li class="active"></li>`;
}

unittest {
  struct ChildStyle {
    mixin Node!"li";
    @style!"inner" @child Div div;
  }
  renderToString!ChildStyle.should == `<li><div class="inner"></div></li>`;
}

unittest {
  struct ChildVisibility {
    mixin Node!"li";
    @child Div div;
    @visible!"div" bool show;
  }
  ChildVisibility app;
  auto node = app.renderToNode;
  node.renderToString().should == `<li></li>`;
  app.update.show = true;
  node.renderToString().should == `<li><div></div></li>`;
}

unittest {
  struct Inner {
    mixin Node!"span";
    @attr int* key;
  }
  struct App {
    mixin Node!"div";
    int key = 0;
    @child Inner inner;
  }
  App app;
  auto node = app.renderToNode;
  node.renderToString().should == `<div><span key=0></span></div>`;
  app.update.key = 5;
  node.renderToString().should == `<div><span key=5></span></div>`;
}

unittest {
  static struct Appy {
    mixin Node!"section";
    bool hidden;
    @style!"active" bool isActive(bool hidden) {
      return !hidden;
    }
  }
  Appy app;
  auto node = app.renderToNode;
  node.renderToString().should == `<section class="active"></section>`;
  app.update.hidden = true;
  node.renderToString().should == `<section></section>`;
}

unittest {
  // params
}
