module ut.array;

version (unittest):

import unit_threaded;
import spasm.dom;
import spasm.spa;
import spasm.types;
import spasm.rt.array;

@safe:

enum Filter {
  All,
  Checked,
  Unchecked
}

struct Item {
  mixin Node!"div";
  bool checked;
  @prop key = 0;
  this(bool c, int k) {
    this.checked = c;
    this.key = k;
  }
}

struct Container {
  nothrow:
  mixin Node!"section";
  @child UnorderedList!Item list;
  Filter filter;
  DynamicArray!(Item*) items;
  auto transform(ref DynamicArray!(Item*) items, Filter filter) @trusted {
    with (Filter) {
      final switch(filter) {
      case All:
        return items[].update(list);
      case Checked:
        import std.algorithm : filter ;
        return items[].filter!(i=>i.checked).update(list);
      case Unchecked:
        import std.algorithm : filter ;
        return items[].filter!(i=>!i.checked).update(list);
      }
    }
  }
}

unittest {
  renderToString!Container.should == "<section><ul></ul></section>";
}

unittest {
  Container container;
  auto node = container.renderToNode;
  node.renderToString().should == "<section><ul></ul></section>";
  container.items.put(new Item(true, 1));
  container.update!(container.items);
  node.renderToString().should == "<section><ul><div key=1></div></ul></section>";
  container.update.filter = Filter.Unchecked;
  node.renderToString().should == "<section><ul></ul></section>";
}

unittest {
  Container container;
  auto node = container.renderToNode;
  foreach(i; 1..3)
    container.items.put(new Item(true, i));
  foreach(i; 3..6)
    container.items.put(new Item(false, i));
  foreach(i; 6..9)
    container.items.put(new Item(true, i));
  container.update!(container.items);
  node.renderToString().should == "<section><ul><div key=1></div><div key=2></div><div key=3></div><div key=4></div><div key=5></div><div key=6></div><div key=7></div><div key=8></div></ul></section>";
  container.update.filter = Filter.Checked;
  node.renderToString().should == "<section><ul><div key=1></div><div key=2></div><div key=6></div><div key=7></div><div key=8></div></ul></section>";
  container.update.filter = Filter.Unchecked;
  node.renderToString().should == "<section><ul><div key=3></div><div key=4></div><div key=5></div></ul></section>";
  container.update.filter = Filter.All;
  node.renderToString().should == "<section><ul><div key=1></div><div key=2></div><div key=3></div><div key=4></div><div key=5></div><div key=6></div><div key=7></div><div key=8></div></ul></section>";
  container.update.filter = Filter.Unchecked;
  node.renderToString().should == "<section><ul><div key=3></div><div key=4></div><div key=5></div></ul></section>";
  container.update.filter = Filter.Checked;
  node.renderToString().should == "<section><ul><div key=1></div><div key=2></div><div key=6></div><div key=7></div><div key=8></div></ul></section>";
  container.update.filter = Filter.All;
  node.renderToString().should == "<section><ul><div key=1></div><div key=2></div><div key=3></div><div key=4></div><div key=5></div><div key=6></div><div key=7></div><div key=8></div></ul></section>";
}
