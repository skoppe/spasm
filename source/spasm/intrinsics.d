module spasm.intrinsics;

version (WebAssembly):

nothrow:

// returns amount of 64Kb pages
pragma(LDC_intrinsic, "llvm.wasm.memory.size.i32")
private int _wasmMemorySize(int memIndex);

pragma(inline, true)
auto wasmMemorySize() {
  return _wasmMemorySize(0);
}

// adjust memory according to delta (64Kb pages)
pragma(LDC_intrinsic, "llvm.wasm.memory.grow.i32")
int _wasmMemoryGrow(int memIndex, int delta);

pragma(inline, true)
auto wasmMemoryGrow(int delta) {
  return _wasmMemoryGrow(0, delta);
}
