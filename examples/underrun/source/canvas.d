module canvas;

import spasm.types;
import spasm.spa;
import spasm.dom;

nothrow:
@safe:

struct Canvas {
  mixin Slot!"toggle";
  mixin Node!"canvas";
  @prop id = "c";
  @prop width = 320;
  @prop height = 180;
}
