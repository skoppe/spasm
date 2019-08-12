module game.game;

import game.renderer;
import game.level;
import game.terminal;
import spasm.types;
import spasm.event;
import spasm.dom;
import spasm.rt.memory;
import game.audio;
import canvas;

nothrow:
@safe:

extern(C) void load_image(string name, void delegate (Handle) cb);
extern(C) void load_level(uint id, ubyte[] level, uint ctx, uint fun);
extern(C) void scheduleFrame(uint ctx, uint fun);
// extern(C)
// export ubyte* allocString(uint bytes) {
//   import spasm.rt.memory;
//   void[] raw = allocator.allocate(bytes);
//   return cast(ubyte*)raw.ptr;
// }


struct Game {
  import spasm.bindings.webgl;
  nothrow:
  Renderer renderer;
  Level level;
  uint time_last = 0;
  Input input = Input.None;
  Canvas* canvas;
  WebGLRenderingContext context;
  int width, height;
  int mouseX, mouseY;
  bool running;
  bool finished;
  void init(int w, int h) @trusted {
    import std.algorithm : move;
    this.context = canvas.node.getContext("webgl").front.trustedGet!WebGLRenderingContext.move;
    glSetContext(*context.handle.ptr);
    renderer.renderer_init(w,h);
    width = w;
    height = h;
    load_image("q2", &this.textureLoaded);
    // TODO: simplify this manual call into addEventListenerTyped(&onKeydown)
    document.addEventListener("keydown",(event)=>processKey(event.as!KeyboardEvent.key.getKey, true));
    document.addEventListener("keyup",(event)=>processKey(event.as!KeyboardEvent.key.getKey, false));
    canvas.node.addEventListener("mousemove",(event)=>onMousemove(event.as!MouseEvent));
    document.addEventListener("mousedown",(event){input |= Input.Shoot;});
    document.addEventListener("mouseup",(event){input &= ~Input.Shoot;});
  }
  void loadNextLevel() @trusted {
    if (current_level == 3) {
      (*gTerminal).terminal_run_outro();
      finished = true;
      return;
    }
    current_level++;
    loadLevel();
  }
  void loadLevel() @trusted {
    running = false;
    if (level.data.length == 0)
      level.data = allocator.make!(ubyte[64*64]);
    load_level(current_level, level.data, toTuple(&this.generateLevel).expand);
  }
  void processKey(Input key, bool pressed) {
    if (pressed)
      input |= key;
    else if (key != Input.None)
      input &= ~key;
  }
  void onMousemove(scope MouseEvent* event) {
    int clientWidth = canvas.node.clientWidth;
    int clientHeight = canvas.node.clientHeight;
    mouseX = cast(int)(width * (cast(double)event.offsetX)/clientWidth);
    mouseY = cast(int)(height * (cast(double)event.offsetY)/clientHeight);
  }
  extern(C) void textureLoaded(Handle image) @trusted {
    gTerminal.hide();
    renderer.renderer_bind_image(image);
    loadLevel();
  }
  void generateLevel(uint) {
    level.decodeLevel(renderer);
    scheduleFrame(toTuple(&this.tick).expand);
    running = true;
  }
  void tick(uint time_now) {
    auto time_elapsed = cast(float)(time_now - time_last)/1000;
    time_last = time_now;

    renderer.renderer_prepare_frame();

    level.updateEntities(time_elapsed, input, mouseX, mouseY);
    level.render(renderer, time_elapsed);
    renderer.update_camera(level.player);

    renderer.renderer_end_frame();

    if (running)
      scheduleFrame(toTuple(&this.tick).expand);
  }
}
