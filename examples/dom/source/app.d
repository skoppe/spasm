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
      // console.log(event);
      // console.log(event.as!MouseEvent.clientX);
    });

  import std.algorithm : move;
  auto root = document.querySelector("body").front.move;
  root.appendChild(elem);
}
