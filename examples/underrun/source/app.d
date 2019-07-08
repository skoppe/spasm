pragma(LDC_no_moduleinfo);
pragma(LDC_no_typeinfo);

import ldc.attributes;

import spasm.types;
import spasm.spa;
import spasm.dom;
import game.math;
import game.terminal;
import game.renderer;
import game.level;
import game.entity;
import game.game;
import game.audio;
import canvas;

nothrow:
@safe:

mixin Spa!App;

struct App {
  nothrow:
  @child Canvas canvas;
  @child Terminal terminal;
  Game game;
  SoundPlayer sound;
  void onMount() @trusted {
    sound = createSoundPlayer();
    gSoundPlayer = &sound;
    .gTerminal = &terminal;
    .gGame = &game;
    terminal_run_intro(terminal);
    document.addEventListener("click", &onClick);
  }
  void onClick(spasm.bindings.dom.Event event) {
    document.removeEventListener("onClick", &onClick);
    gameStart();
  }
  void gameStart() {
    terminal.cancel();
    terminal.add("INITIATING...");
    game.init(canvas.width, canvas.height);
  }
}

extern(C)
export
@assumeUsed
void jsCallback0(uint ctx, uint fun) @trusted {
  static struct Handler {
    nothrow:
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
@assumeUsed
void jsCallback(uint ctx, uint fun, uint arg) @trusted {
  static struct Handler {
    nothrow:
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
