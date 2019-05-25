module spasm.rt.memory;
pragma(LDC_no_moduleinfo);
pragma(LDC_no_typeinfo);

import spasm.rt.allocator: Region;
import stdx.allocator.building_blocks.null_allocator;
private __gshared Region!(NullAllocator) regionAllocator;

import ldc.attributes;

void alloc_init() {
  regionAllocator = Region!(NullAllocator)(
                                 (
                                  cast(ubyte[])(cast(void*)
                                   (
                                    cast(uint)
                                    5*1024*1024
                                    )
                                  )
                                  [0..11*1024*1024])
                                   );
}

version (unittest) {
  struct Allocator {
    void[] allocate(size_t n) {
      auto mem = new byte[n];
      return mem;
    }
    bool deallocate(void[] b) {
      return true;
    }
  }
  __gshared Allocator gcAllocator;
  __gshared Allocator* allocator = &gcAllocator;
} else {
  __gshared Region!(NullAllocator)* allocator = &regionAllocator;
}

template make(T) {
  import spasm.types;
  static if (is(T == Item[], Item)) {
    Item[] make(A)(A allocator, size_t size) {
      void[] raw = allocator.allocate(Item.sizeof * size);
      auto t = cast(Item*) raw.ptr;
      return t[0 .. size];
    }
  } else static if (is(T == Item[size], Item, size_t size)) {
    Item[] make(A)(A allocator)
    {
      void[] raw = allocator.allocate(Item.sizeof * size);
      auto t = cast(Item*) raw.ptr;
      return t[0..size];
    }
  } else {
    T* make(A, Args...)(A allocator, Args args)
    {
      void[] raw = allocator.allocate(T.sizeof);
      auto t = cast(T*) raw.ptr;
      *t = T.init;
      static if (Args.length) {
        *t = T(args);
      }
      return t;
    }
  }
}

extern (C) void * memcpy(void * destination, const void * source, size_t num) {
  foreach(i; 0..num) {
    (cast(ubyte*)destination)[i] = (cast(ubyte*)source)[i];
  }
  return destination;
}

extern (C) void * memset(void* ptr, int value, size_t num) {
  // TODO
  return ptr;
}

private import ldc.intrinsics;

extern(C) {
  int memcmp(void*a,void*b,size_t cnt) {
    foreach(i;0..cnt) {
      if ((cast(byte*)a)[i] < (cast(byte*)b)[i])
        return -1;
      if ((cast(byte*)a)[i] > (cast(byte*)b)[i])
        return 1;
    }
    return 0;
  }
// per-element array init routines

void _d_array_init_i16(ushort* a, size_t n, ushort v)
{
    auto p = a;
    auto end = a+n;
    while (p !is end)
        *p++ = v;
}

void _d_array_init_i32(uint* a, size_t n, uint v)
{
    auto p = a;
    auto end = a+n;
    while (p !is end)
        *p++ = v;
}

void _d_array_init_i64(ulong* a, size_t n, ulong v)
{
    auto p = a;
    auto end = a+n;
    while (p !is end)
        *p++ = v;
}

void _d_array_init_float(float* a, size_t n, float v)
{
    auto p = a;
    auto end = a+n;
    while (p !is end)
        *p++ = v;
}

void _d_array_init_double(double* a, size_t n, double v)
{
    auto p = a;
    auto end = a+n;
    while (p !is end)
        *p++ = v;
}

void _d_array_init_real(real* a, size_t n, real v)
{
    auto p = a;
    auto end = a+n;
    while (p !is end)
        *p++ = v;
}

void _d_array_init_cfloat(cfloat* a, size_t n, cfloat v)
{
    auto p = a;
    auto end = a+n;
    while (p !is end)
        *p++ = v;
}

void _d_array_init_cdouble(cdouble* a, size_t n, cdouble v)
{
    auto p = a;
    auto end = a+n;
    while (p !is end)
        *p++ = v;
}

void _d_array_init_creal(creal* a, size_t n, creal v)
{
    auto p = a;
    auto end = a+n;
    while (p !is end)
        *p++ = v;
}

void _d_array_init_pointer(void** a, size_t n, void* v)
{
    auto p = a;
    auto end = a+n;
    while (p !is end)
        *p++ = v;
}

void _d_array_init_mem(void* a, size_t na, void* v, size_t nv)
{
    auto p = a;
    auto end = a + na*nv;
    while (p !is end) {
        llvm_memcpy(p,v,nv,0);
        p += nv;
    }
}

deprecated("since ldc 1.14.0")
size_t _d_array_cast_len(size_t len, size_t elemsz, size_t newelemsz)
{
    if (newelemsz == 1) {
        return len*elemsz;
    }
    else if ((len*elemsz) % newelemsz) {
      assert(0);
    }
    return (len*elemsz)/newelemsz;
}

@trusted nothrow
size_t _d_arraycast_len(size_t len, size_t elemsz, size_t newelemsz) {
    const size = len * elemsz;
    const newlen = size / newelemsz;
    if (newlen * newelemsz != size)
        assert(0);
    return newlen;
}

// slice copy when assertions are enabled
void _d_array_slice_copy(void* dst, size_t dstlen, void* src, size_t srclen, size_t elemsz)
{
    if (dstlen != 0) assert(dst);
    if (dstlen != 0) assert(src);
    if (dstlen != srclen)
      assert(0);
    else if (dst+dstlen*elemsz <= src || src+srclen*elemsz <= dst)
        llvm_memcpy!size_t(dst, src, dstlen * elemsz, 0);
    else
      assert(0);
}

 void _d_arraybounds(string file, int line) {
 }
}
