import spasm.bindings;
import spasm.dom;
import spasm.types;

@safe:

extern (C) export void _start()
{
  auto canvas = document.createElement("canvas").as!HTMLCanvasElement;

  canvas.width = 400;
  canvas.height = 400;
  import std.algorithm : move;
  auto root = document.querySelector("body").front.move;
  root.appendChild(canvas);

  auto context = canvas.getContext("2d").front.trustedGet!CanvasRenderingContext2D.move;
  context.fillText("Hello World!", 10, 10);
}
