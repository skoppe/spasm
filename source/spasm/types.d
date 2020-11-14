module spasm.types;

nothrow:

public import optional;
public import spasm.sumtype;
import std.traits : hasMember, isCallable, isBasicType;
version (LDC) {
  public import ldc.attributes : assumeUsed;
} else {
  enum assumeUsed;
}

version (unittest) {
  @safe:
  Handle spasm_add__object() {return 0;}
  void spasm_removeObject(Handle) {}
} else {
  extern (C) {
    @safe:
    void doLog(uint val);
    Handle spasm_add__bool(bool);
    Handle spasm_add__int(int);
    Handle spasm_add__uint(uint);
    Handle spasm_add__long(long);
    Handle spasm_add__ulong(ulong);
    Handle spasm_add__short(short);
    Handle spasm_add__ushort(ushort);
    Handle spasm_add__float(float);
    Handle spasm_add__double(double);
    Handle spasm_add__byte(byte);
    Handle spasm_add__ubyte(ubyte);
    Handle spasm_add__string(scope ref string);
    Handle spasm_add__object();
    void spasm_removeObject(Handle);
    Handle spasm_get__field(Handle, string);
    bool spasm_get__bool(Handle);
    int spasm_get__int(Handle);
    uint spasm_get__uint(Handle);
    long spasm_get__long(Handle);
    ulong spasm_get__ulong(Handle);
    short spasm_get__short(Handle);
    ushort spasm_get__ushort(Handle);
    float spasm_get__float(Handle);
    double spasm_get__double(Handle);
    byte spasm_get__byte(Handle);
    ubyte spasm_get__ubyte(Handle);
    string spasm_get__string(Handle);
  }
}

@trusted extern(C) export @assumeUsed ubyte* allocString(uint bytes) {
  import spasm.rt.memory;
  return allocator.make!(ubyte[])(bytes).ptr;
}

@safe:

alias Handle = uint;
struct JsHandle {
  nothrow:
  package Handle handle;
  ~this() {
    import spasm.types;
    if (handle > 2) {
      spasm_removeObject(handle);
    }
  }
  void opAssign(Handle handle) {
    this.handle = handle;
  }
  @disable this(this);
  alias handle this;
}

auto ptr(return scope ref JsHandle handle) @system {
  return &handle.handle;
}

enum JsHandle invalidHandle = JsHandle(0);
alias EventHandle = uint;

enum NodeType {
  a = 0,
  abbr = 1,
  address = 2,
  area = 3,
  article = 4,
  aside = 5,
  audio = 6,
  b = 7,
  base = 8,
  bdi = 9,
  bdo = 10,
  blockquote = 11,
  body_ = 12,
  br = 13,
  button = 14,
  canvas = 15,
  caption = 16,
  cite = 17,
  code = 18,
  col = 19,
  colgroup = 20,
  data = 21,
  datalist = 22,
  dd = 23,
  del = 24,
  dfn = 25,
  div = 26,
  dl = 27,
  dt = 28,
  em = 29,
  embed = 30,
  fieldset = 31,
  figcaption = 32,
  figure = 33,
  footer = 34,
  form = 35,
  h1 = 36,
  h2 = 37,
  h3 = 38,
  h4 = 39,
  h5 = 40,
  h6 = 41,
  head = 42,
  header = 43,
  hr = 44,
  html = 45,
  i = 46,
  iframe = 47,
  img = 48,
  input = 49,
  ins = 50,
  kbd = 51,
  keygen = 52,
  label = 53,
  legend = 54,
  li = 55,
  link = 56,
  main = 57,
  map = 58,
  mark = 59,
  meta = 60,
  meter = 61,
  nav = 62,
  noscript = 63,
  object = 64,
  ol = 65,
  optgroup = 66,
  option = 67,
  output = 68,
  p = 69,
  param = 70,
  pre = 71,
  progress = 72,
  q = 73,
  rb = 74,
  rp = 75,
  rt = 76,
  rtc = 77,
  ruby = 78,
  s = 79,
  samp = 80,
  script = 81,
  section = 82,
  select = 83,
  small = 84,
  source = 85,
  span = 86,
  strong = 87,
  style = 88,
  sub = 89,
  sup = 90,
  table = 91,
  tbody = 92,
  td = 93,
  template_ = 94,
  textarea = 95,
  tfoot = 96,
  th = 97,
  thead = 98,
  time = 99,
  title = 100,
  tr = 101,
  track = 102,
  u = 103,
  ul = 104,
  var = 105,
  video = 106,
  wbr = 107,
  root = 1024 // Special element used in unittests
}

/**
 * User defined attribute to register the symbol as event handler to the event
 * listener of the same name as the symbol.
 *
 * Examples:
 * ---
 * @callback void onClick(MouseEvent event) {
 *   this.update.textContent = "ouch!";
 * }
 * ---
 */
enum callback;

// deprecated("Use spasm.types.Child instead") enum child;
/**
 * User defined attribute to attach to children that should be embedded into the
 * DOM as child nodes.
 *
 * Using `@child` on a `DynamicArray!(Item*)` makes all items embed as children.
 *
 * Otherwise the given symbol will be embedded as child.
 */
enum child;

/**
 * User defined attribute to attach to any member field or member function to
 * set the value. On rendering or updating this causes the property on this node
 * with the same name as the symbol on which this UDA is attached on to change
 * value to what the symbol evaluates to.
 *
 * Property means this property name on the native JavaScript object will be
 * changed.
 *
 * Incompatible with @child (will not match in that case)
 *
 * Examples:
 * ---
 * struct SaveButton {
 *   mixin Node!"button";
 *   mixin Slot!"click";
 *
 *   @prop string innerText = "Save";
 *
 *   @callback void onClick(MouseEvent event) {
 *     this.emit(click);
 *   }
 * }
 * ---
 */
enum prop;

/**
 * User defined attribute to attach to any member field or member function to
 * set the value. On rendering or updating this causes the attribute for this
 * node with the same name as the symbol on which this UDA is attached on to
 * change value to what the symbol evaluates to.
 *
 * Attribute means a DOM attribute on a node which is set using setAttribute.
 *
 * Incompatible with @prop and @child (will not match in those cases)
 *
 * Examples:
 * ---
 * struct Checkbox {
 *   mixin Node!"input";
 *   @attr string type = "checkbox";
 * }
 * ---
 */
enum attr;

/** 
 * User defined attribute to attach to member functions to call
 * `this.<args>.add(&func)` when rendering this into a node.
 *
 * Supports 2 kinds of overloads:
 *   `@connect!"someMember.someEvent"` with an arbitrary string to add this
 *     function into. Most commonly some kind of `"button.click"` string.
 *   `@connect!("someMember", "someEvent")` which is the same as using a single
 *     string but writes a dot after the first argument and replaces all dots in
 *     the second argument with underscores.
 *
 * Examples:
 * ---
 * struct App {
 *   @child Button addButton;
 *   @connect!"addButton.click" void addClick() {
 *     Item* item = allocator.make!Item;
 *     item.innerText = "Item";
 *     this.items.put(item);
 *     this.update!(items);
 *   }
 * }
 * ---
 */
struct connect(field...) {}

/**
 * User defined attribute to attach to a member boolean field or a member
 * function evaluating to a boolean value to make the given argument field
 * appear or disappear.
 *
 * `visible` actually removes and readds the nodes when mounting or updating.
 *
 * Params:
 *   target = the name of the member that is supposed to be hidden/shown based
 *            on the value. `true` means it is shown, `false` means it's hidden.
 *
 * Examples:
 * ---
 * struct App {
 *   @child Dialog loginDialog;
 *   @visible!"loginDialog" bool showLoginDialog;
 * }
 * ---
 */
struct visible(alias target) {}

template isTOrPointer(T, Target) {
  enum isTOrPointer = is(T : Target) || is(T : Target*);
}
// TODO: implement others as well
enum ListenerType {
  click = 0,
  change = 1,
  input = 2,
  keydown = 3,
  keyup = 4,
  dblclick = 5,
  blur = 6,
  mousemove = 7,
  mouseup = 8,
  mousedown = 9,
  keypress = 10,
  focus = 11
}

enum EventType {
  animation = 0,
  audioProcessing = 1,
  beforeUnload = 2,
  blob = 3,
  clipboard = 4,
  close = 5,
  composition = 6,
  custom = 7,
  deviceLight = 8,
  deviceMotion = 9,
  deviceOrientation = 10,
  deviceProximity = 11,
  drag = 12,
  error = 13,
  fetch = 14,
  focus = 15,
  gamepad = 16,
  hashChange = 17,
  idbVersionChange = 18,
  input = 19,
  keyboard = 20,
  mediaStream = 21,
  message = 22,
  mouse = 23,
  mutation = 24,
  offlineAudioCompletion = 25,
  pageTransition = 26,
  paymentRequestUpdate = 27,
  pointer = 28,
  popState = 29,
  progress = 30,
  rtcDataChannel = 31,
  rtcIdentityError = 32,
  rtcIdentity = 33,
  rtcPeerConnectionIce = 34,
  storage = 35,
  svg = 36,
  time = 37,
  touch = 38,
  trackTransition = 39,
  ui = 40,
  userProximity = 41,
  webGlContext = 42,
  wheel = 43,
  event = 44
}

@safe template as(Target) {
  static if (isBasicType!Target || is(Target : string)) {
    auto as(Source)(auto ref Source s) if (hasMember!(Source, "handle")){
      mixin("return spasm_get__" ~ Target.stringof ~ "(s.handle);");
    }
  } else static if (__traits(compiles, "Target.init.handle")) {
    @safe auto as(Source)(scope return ref Source s) {
      return cast(Target*)&s;
    }
    @safe auto as(Source)(Source s) if (hasMember!(Source, "handle")){
      Handle h = s.handle;
      s.handle = 0;
      return Target(h);
    }
  }
}

auto toOpt(T)(return scope ref T item) @trusted {
  return Optional!(T*)(&item);
}

auto frontRef(T)(return scope ref T t) @trusted {
  static if(is(T : Optional!(Base*), Base))
    return t.front;
  else
    return &t.front();
}

Handle getOrCreateHandle(T)(scope ref T data) {
  static if (isBasicType!T || is(T : string)) {
    mixin("return spasm_add__" ~ T.stringof~ "(data);");
  } else static if (is(T : Optional!U, U)) {
    if (data.empty)
      return 0;
    return data.front;
  } else
    return data.handle;
}

auto dropHandle(T)(Handle data) {
  import std.traits : isBasicType;
  static if (isBasicType!T || is(T : string)) {
    spasm_removeObject(data);
  }
}

struct Any {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
}

template SpasmMangle(T) {
  static if (hasMember!(T, "handle") || hasMember!(T, "_parent")) {
    enum SpasmMangle = "handle";
  } else {
    enum SpasmMangle = T.mangleof;
  }
}
template BridgeType(T) {
  static if (hasMember!(T, "handle") || hasMember!(T, "_parent")) {
    alias BridgeType = JsHandle;
  } else {
    alias BridgeType = T;
  }
}

mixin template ExternPromiseCallback(string funName, T, U) {
  nothrow:
  static if (is(T == void)) {
    pragma(mangle, funName)
      mixin("extern(C) Handle "~funName~"(Handle, U delegate() nothrow);");
  } else {
    import spasm.bindings;
    pragma(mangle, funName)
      mixin("extern(C) Handle "~funName~"(Handle, U delegate("~T.stringof~") nothrow);");
  }
}

struct Promise(T, U = Any) {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  alias JoinedType = BridgeType!T;
  enum ResultMangled = SpasmMangle!T;
  static if (is(T == void)) {
    alias FulfillCallback(P = void) = P delegate() nothrow;
    alias JoinedCallback(P = void) = extern(C) P delegate() nothrow;
  } else {
    alias FulfillCallback(P) = P delegate(T) nothrow;
    alias JoinedCallback(P) = extern(C) P delegate(JoinedType) nothrow;
  }
  alias RejectCallback = void delegate(U) nothrow;
  // NOTE: right now we support no error callback
  auto then(ResultType)(ResultType delegate(T) nothrow cb) @trusted {
    enum TMangled = SpasmMangle!T;
    enum ResultTypeMangled = SpasmMangle!ResultType;
    enum funName = "promise_then_"~TMangled.length.stringof~TMangled~ResultTypeMangled;
    mixin ExternPromiseCallback!(funName, JoinedType, BridgeType!ResultType);
    mixin("return Promise!(ResultType, U)("~funName~"(handle, cast(JoinedCallback!(BridgeType!ResultType))cb));");
  }
}
struct Sequence(T) {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
}
struct TypedArray(T) {
  nothrow:
	JsHandle handle;
	alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
}
struct Int8Array {
  nothrow:
	TypedArray!(byte) _array;
	alias _array this;
  this(Handle h) {
    _array = TypedArray!(byte)(h);
  }
  static auto create(const byte[] data) {
    return Int8Array(Int8Array_Create(data));
  }
}
struct Int16Array {
  nothrow:
	TypedArray!(short) _array;
	alias _array this;
  this(Handle h) {
    _array = TypedArray!(short)(h);
  }
}
struct Int32Array {
  nothrow:
	TypedArray!(int) _array;
	alias _array this;
  this(Handle h) {
    _array = TypedArray!(int)(h);
  }
  static auto create(const int[] data) {
    return Int32Array(Int32Array_Create(data));
  }
}
struct Uint8Array {
  nothrow:
	TypedArray!(ubyte) _array;
	alias _array this;
  this(Handle h) {
    _array = TypedArray!(ubyte)(h);
  }
  static auto create(const ubyte[] data) {
    return Uint8Array(Uint8Array_Create(data));
  }
}
struct Uint16Array {
  nothrow:
	TypedArray!(ushort) _array;
	alias _array this;
  this(Handle h) {
    _array = TypedArray!(ushort)(h);
  }
}
struct Uint32Array {
  nothrow:
	TypedArray!(uint) _array;
	alias _array this;
  this(Handle h) {
    _array = TypedArray!(uint)(h);
  }
}
struct Float32Array {
  nothrow:
	TypedArray!(float) _array;
	alias _array this;
  this(Handle h) {
    _array = TypedArray!(float)(h);
  }
  static auto create(const float[] data) {
    return Float32Array(Float32Array_Create(data));
  }
}
struct Float64Array {
  nothrow:
	TypedArray!(double) _array;
	alias _array this;
  this(Handle h) {
    _array = TypedArray!(double)(h);
  }
}
struct Uint8ClampedArray {
  nothrow:
	JsHandle handle;
	alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
}
struct DataView {
  nothrow:
	JsHandle handle;
	alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create(const ubyte[] data) {
    return DataView(DataView_Create(data));
  }
}
struct ArrayBuffer {
  nothrow:
	JsHandle handle;
	alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
}
struct FrozenArray(T) {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
}
// TODO: for now animation is defined here, but when accepted we can use the idl (or newer) at https://www.w3.org/TR/2018/WD-web-animations-1-20181011
struct Animation {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
}
struct Iterator(T) {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
}
struct Record(T...) {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
}
struct ArrayPair(T,U) {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
}

struct JsObject {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto opDispatch(string name)() {
    return Any(spasm_get__field(this.handle, name));
  }
}

struct Json {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto opDispatch(string name)() {
    return Json(spasm_get__field(this.handle, name));
  }
  auto as(Target)() {
    return .as!(Target)(this);
  }
}

extern (C) {
  Handle Int8Array_Create(const byte[]);
  Handle Int32Array_Create(const int[]);
  Handle Uint8Array_Create(const ubyte[]);
  Handle Float32Array_Create(const float[]);
  Handle DataView_Create(const ubyte[]);
}
