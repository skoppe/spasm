pragma(LDC_no_moduleinfo);
pragma(LDC_no_typeinfo);

import ldc.attributes;

import spasm.types;
import spasm.spa;
import spasm.rt.array;
import spasm.rt.memory;
import spasm.dom;
import game.math;
import game.terminal;
import std.range : only, chain;
import game.renderer;
import game.level;
import game.entity;
import game.game;
import game.audio;

mixin Spa!App;

struct App {
  @child Canvas canvas;
  @child Terminal terminal;
  Game game;
  SoundPlayer sound;
  void onMount() {
    sound = createSoundPlayer();
    gSoundPlayer = &sound;
    .gTerminal = &terminal;
    .gGame = &game;
    terminal_run_intro(terminal);
    document.addEventListenerTyped!"onClick"(this);
  }
  void onClick(MouseEvent event) {
    document.removeEventListenerTyped!"onClick"(this);
    gameStart();
  }
  void gameStart() {
    terminal.cancel();
    terminal.add("INITIATING...");
    game.init(canvas.node, canvas.width, canvas.height);
  }
}

struct Canvas {
  mixin Slot!"toggle";
  mixin Node!"canvas";
  @prop id = "c";
  @prop width = 320;
  @prop height = 180;
}

extern(C)
export
void jsCallback0(uint ctx, uint fun) {
  static struct Handler {
    union {
      void delegate() handle;
      struct {
        void* contextPtr;
        void* funcPtr;
      }
    }
  }
  Handler c;
  c.contextPtr = cast(void*) ctx;
  c.funcPtr = cast(void*) fun;
  c.handle();
}

extern(C)
export
void jsCallback(uint ctx, uint fun, uint arg) {
  static struct Handler {
    union {
      void delegate(uint) handle;
      struct {
        void* contextPtr;
        void* funcPtr;
      }
    }
  }
  Handler c;
  c.contextPtr = cast(void*) ctx;
  c.funcPtr = cast(void*) fun;
  c.handle(arg);
}
