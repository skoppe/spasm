module game.game;

import game.renderer;
import game.level;
import game.terminal;
import spasm.types;
import spasm.event;
import spasm.dom;
import spasm.rt.memory;
import game.audio;

extern(C) void load_image(string name, void delegate (JsHandle) cb);
extern(C) void load_level(uint id, ubyte[] level, uint ctx, uint fun);
extern(C) void scheduleFrame(uint ctx, uint fun);

struct Game {
  Renderer renderer;
  SoundPlayer sound;
  Level level;
  uint time_last = 0;
  Input input = Input.None;
  JsHandle canvas;
  int width, height;
  int mouseX, mouseY;
  bool running;
  bool finished;
  void init(JsHandle canvas, int w, int h) {
    this.canvas = canvas;
    glSetContext(canvas.getContext());
    renderer.renderer_init(w,h);
    width = w;
    height = h;
    load_image("q2", &this.textureLoaded);
    // TODO: simplify this manual call into addEventListenerTyped(&onKeydown)
    document.addEventListenerTyped!"onKeydown"(this);
    document.addEventListenerTyped!"onKeyup"(this);
    canvas.addEventListenerTyped!"onMousemove"(this);
    document.addEventListenerTyped!"onMousedown"(this);
    document.addEventListenerTyped!"onMouseup"(this);
  }
  void loadNextLevel() {
    if (current_level == 3) {
      (*gTerminal).terminal_run_outro();
      finished = true;
      return;
    }
    current_level++;
    loadLevel();
  }
  void loadLevel() {
    running = false;
    if (level.data.length == 0)
      level.data = allocator.make!(ubyte[64*64]);
    load_level(current_level, level.data, toTuple(&this.generateLevel).expand);
  }
  void onKeyup(KeyboardEvent event) {
    processKey(event.key.getKey, false);
  }
  void onKeydown(KeyboardEvent event) {
    processKey(event.key.getKey, true);
  }
  void processKey(Input key, bool pressed) {
    if (pressed)
      input |= key;
    else if (key != Input.None)
      input &= ~key;
  }
  void onMousedown(MouseEvent event) {
    input |= Input.Shoot;
  }
  void onMouseup(MouseEvent event) {
    input &= ~Input.Shoot;
  }
  void onMousemove(MouseEvent event) {
    int clientWidth = canvas.getPropertyInt("clientWidth");
    int clientHeight = canvas.getPropertyInt("clientHeight");
    mouseX = cast(int)(width * (cast(double)event.offsetX)/clientWidth);
    mouseY = cast(int)(height * (cast(double)event.offsetY)/clientHeight);
  }
  extern(C) void textureLoaded(JsHandle image) {
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
