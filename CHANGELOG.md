# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## 0.2.0

- JsHandle now has unique semantics. This means JS resources are freed deterministically (when the JsHandle goes out of scope), without the cost of reference counting. It also means the JsHandle is non-copyable and it requires dip1000 with `scope ref` to get it to pass safely to other functions. **Breaking change**
- The JS glue code now has a freelist to reuse handles.
- Handle growable memory. The base allocator in Spasm first queries the break point before growing memory. This allows other code to call the grow memory intrinsic (e.g C code compiled with WASI).
- The `make` template function used to allocate memory now keeps a separate allocation list for each type. This is required to quickly call a type's destructor (if any) when the memory is freed by the GC. 
- `markMemory` and `freeUnmarked` GC functions are introduced. Currently they are not scheduled and can only be called from JS. The GC requires explicit adding of root pointer. **Experimental** 
- Call destructors when GC is freeing garbage
- Handle growing memory not being continuous
- Implement `_d_allocmemory` to support closures (currently they aren't freed)
- Insert a call to `setupMemory` in each JS glue code function. Everytime WebAssembly's memory is grown the typed arrays in JS get invalidated. Since other linked-in WebAssembly code (e.g. WASI) can also grow memory we cannot reliably detect it, therefor we need to check every time we call a JS function.
- Introduce `toOpt` to safely transform a `T` to `Optional!(T*)`. Because the underlying JsHandle (which is used in every binding struct) now has unique semantics, it cannot easily be passed to a function expecting a Optional!(T). The `toOpt` instead returns a `Optional!(T*)` with `return scope` attributes. Together with dip1000 this allows us to have a temporary reference to a JsHandle. Eventually the pointer gets compiled away.
- Have bindings accept both `Optional!(T)` and `Optional!(T*)`.
- Change `P().as!(T)` to return `T*` to `&P`. A very useful hack to allow us to upcast binding structs. Returned types from web apis are often a base class (e.g. HTMLElement). To actually call a derived type's (e.g. HTMLCanvasElement) function we need to create a (temporary) instance of the derived type. But because we use unique semantics on the JsHandle we cannot copy the handle. Instead the `as` template function takes the address of the base type, casts it to a pointer of the derived type and returns it. Because all bindings struct have the same memory layout, and because of dip1000, it works. Safely.
- Introduce `is32Bit` to constrain `long` to `int`. Javascript cannot handle long. The solution for now is to use (u)int.
- Reduce compile time by templating all bindings. By making all functions of the bindings wrapper structs template we have reduced compile time by 38%.
- Added ccsomview and csspseudo bindings (https://www.w3.org/TR/cssom-view-1/ and https://www.w3.org/TR/css-pseudo-4/)
- Introduce env at jsExports. This is required for functions which exported or imported under a different module (e.g. WASI). **Breaking change for custom JS modules**
- Introduce static `create` functions on TypedArray's (like Float32Array)
- Drop support for ldc 1.13.0 and ldc 1.14.0
- Made JsHandle handle member package protected
- Strongly type the Node mixin. Now the mixed-in node field has the corresponding HTMLElement type of the tag (e.g. `"canvas"` -> `HTMLCanvaseElement`).
- Rename `NamedJsHandle` to `NamedNode`
- Fix CSS extended style set extraction
- Create css static table for enums
- add a SPASM_GC_DEBUG version to include code for rendering allocation pools
- Basic hot module reloading
- add spa unittests
- add css unittests
