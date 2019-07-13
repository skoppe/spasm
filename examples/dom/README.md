# DOM

This is a spasm example to show how to call the browser's DOM api.

```d
import spasm.bindings;
import spasm.dom;
import spasm.types;

@safe:

extern (C) export void _start()
{
  auto elem = document.createElement("div").as!HTMLElement;
  elem.style.backgroundColor = "green";
  elem.innerHTML = "BLA BLA!";
  elem.addEventListener("mouseover",(event){
      console.log("onmouseover");
      console.log(event);
      console.log(event.as!MouseEvent.clientX);
    });

  import std.algorithm : move;
  auto root = document.querySelector("body").front.move;
  root.appendChild(elem);
}
```

# Notes

* createElement actually returns an instance of `Element`. The reason we need to typecase it to `HTMLElement` is because `innerHTML` and `style` are only exposed on `HTMLElement`. In javascript this is not an issue because of the prototype chain.
* The same is happening when we access the `clientX`. The `event` is typed as `Event` and first needs to be converted to a `MouseEvent`.
* `querySelector` actually returns an instance of `Element?`, so we first have to unwrap the optional to access the `Element`.
