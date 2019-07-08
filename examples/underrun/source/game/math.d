module game.math;

nothrow:
@safe:

extern(C){
  float atan2(float,float);
  float cos(float);
  float sin(float);
  float sqrt(float);
  float random();
  float pow(float, float);
}

extern(C) float fmodf(float a, float b) {
  float c = a / b;
  c -= cast(int)c;
  return c * b;
}

auto abs(T)(T t) {
  import std.traits : isFloatingPoint;
  static if (isFloatingPoint!T) {
    if (t < cast(T)0f)
      return -t;
  } else {
  if (t < cast(T)0)
    return -t;
  }
  return t;
}
