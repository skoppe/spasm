# Canvas

This is a spasm example to show how to draw 'Hello World' on a browser's canvas.

```d
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
```

# Notes

* createElement actually returns an instance of `Element`. The reason we need to typecase it to `HTMLCanvasElement` is because canvas methods like `getContext` are only exposed on `HTMLCanvasElement`. In javascript this is not an issue because of the prototype chain.
* `querySelector` actually returns an instance of `Element?`, so we first have to unwrap the optional to access the `Element`.
* `getContext` returns an optional SumType, we need to unwrap the optional and get the CanvasRenderingContext2D.
