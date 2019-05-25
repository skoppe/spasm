module spasm.hmr;

version(hmr):

import spasm.rt.array;
import spasm.node;
import std.traits;

string dumpState(T)(ref T app) {
  void recurse(T, Sink)(ref T app, ref Sink sink) {
    enum len = T.tupleof.length;
    bool first = true;
    static foreach(idx, t; T.tupleof) {
      static if (isBoolean!(typeof(t))) {
        if (!first)
          sink.write(",");
        sink.write(__traits(identifier, t), ":b:");
        if (app.tupleof[idx] == true)
          sink.write("t");
        else
          sink.write("f");
        first = false;
      } else static if (is(typeof(t) : NamedNode!tag, string tag)) {
      } else static if (isSomeString!(typeof(t))) {
        if (!first)
          sink.write(",");
        sink.write(__traits(identifier, t), ":s:", app.tupleof[idx].length, ":", app.tupleof[idx]);
        first = false;
      } else static if (is(typeof(t) == enum)) {
      } else static if (isAggregateType!(typeof(t))) {
        if (!first)
          sink.write(",");
        sink.write(__traits(identifier, t), `:a:{`);
        recurse(app.tupleof[idx], sink);
        sink.write('}');
        first = false;
      } else static if (isIntegral!(typeof(t))) {
        if (!first)
          sink.write(",");
        sink.write(__traits(identifier, t), `:i:`);
        sink.write(app.tupleof[idx]);
        first = false;
      }
    }
  }
  StringAppender sink;
  sink.write('{');
  recurse(app, sink);
  sink.write('}');
  auto end = sink.length;
  return cast(string)sink[0..end];
}

ptrdiff_t countUntil(Range, Needle)(Range range, Needle needle) {
  foreach(idx, r; range)
    if (r == needle)
      return idx;
  return -1;
}

bool readBoolean(ref string state) {
  auto c = state[0];
  state = state[1..$];
  return c == 't';
}

unittest {
  import unit_threaded;
  string str = "t,";
  str.readBoolean.should == true;
  str.should == ",";
}

int readInt(ref string state) {
  size_t p = 0;
  int c = 0;
  while(true) {
    if (state[p] < '0' || state[p] > '9') {
      state = state[p..$];
      return c;
    }
    c = c * 10 + (state[p] - '0');
    p++;
  }
}

unittest {
  import unit_threaded;
  string str = "1234,";
  readInt(str).should == 1234;
  str.should == ",";
}

string readString(ref string state) {
  int size = readInt(state);
  string s = text(state[1..size+1]);
  state = state[size+1..$];
  return s;
}

void skipField(ref string state) {
  if (state[0] == 'b')
    readBoolean(state);
  else if (state[0] == 's')
    readString(state);
  else if (state[0] == 'i')
    readInt(state);
  else if (state[0] == 'a')
    skipObject(state);
  else
    state = "}";
}

void skipObject(ref string state) {
  while(1) {
    auto d = countUntil(state, ':');
    if (d == -1) {
      state = "}";
      return;
    }
    state = state[d+1..$];
    skipField(state);
    if (state[0] == ',') {
      state = state[1..$];
    } else {
      if (state[0] == '}')
        state = state[1..$];
      else
        state = "}";
      return;
    }
  }
}

private void update(string field, T)(ref T t) {
  import spasm.dom;
  alias member = __traits(getMember, t, field);
  spasm.dom.update!(member)(t);
}

void loadState(T)(ref T app, string state) {
  void readObject(T)(ref T app, ref string state) {
    while(1) {
      auto d = countUntil(state, ':');
      if (d == -1) {
        state = "}";
        return;
      }
      auto field = state[0..d];
      state = state[d+1..$];
      static foreach(idx, t; T.tupleof) {{
          if (field == __traits(identifier, t)) {
            static if (isBoolean!(typeof(t))) {
              if (state[0] != 'b')
                skipField(state);
              else {
                state = state[2..$];
                app.tupleof[idx] = readBoolean(state);
                update!(__traits(identifier, t),T)(app);
              }
            } else static if (is(typeof(t) : NamedNode!tag, string tag)) {
            } else static if (isSomeString!(typeof(t))) {
              if (state[0] != 's')
                skipField(state);
              else {
                state = state[2..$];
                app.tupleof[idx] = readString(state);
                update!(__traits(identifier, t),T)(app);
              }
            } else static if (is(typeof(t) == enum)) {
            } else static if (isAggregateType!(typeof(t))) {
              if (state[0] != 'a')
                skipField(state);
              else {
                state = state[3..$];
                readObject(app.tupleof[idx],state);
              }
            } else static if (isIntegral!(typeof(t))) {
              if (state[0] != 'i')
                skipField(state);
              else {
                state = state[2..$];
                app.tupleof[idx] = cast(typeof(t))readInt(state);
                update!(__traits(identifier, t),T)(app);
              }
            }
          }
        }}
      if (state[0] == ',') {
        state = state[1..$];
      } else {
        if (state[0] == '}')
          state = state[1..$];
        else
          state = "}";
        return;
      }
    }
  }
  state = state[1 .. $];
  readObject(app, state);
}

unittest {
  import unit_threaded;
  struct Bar {
    string str = "My Nested String";
    int number = 5678;
    bool boolean = false;
  }
  struct Foo {
    string str = "My String";
    int number = 1234;
    bool boolean = true;
    Bar bar;
  }
  struct Bar2 {
    string str;
    int number;
    bool boolean;
  }
  struct Foo2 {
    string str;
    int number;
    bool boolean;
    Bar bar;
  }
  Foo foo;
  string state = foo.dumpState();
  Foo2 foo2;
  foo2.loadState(state);
  foo2.str.should == "My String";
  foo2.number.should == 1234;
  foo2.boolean.should == true;
  foo2.bar.str.should == "My Nested String";
  foo2.bar.number.should == 5678;
  foo2.bar.boolean.should == false;
}
