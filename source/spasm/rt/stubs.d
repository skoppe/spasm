module spasm.rt.stubs;
pragma(LDC_no_moduleinfo);
pragma(LDC_no_typeinfo);

import std.typecons : Ternary;
pragma(mangle, "_D3std8typecons7Ternary6__ctorMFNaNbNcNiNfbZSQBrQBqQBk") auto ternaryModuleConstructor(bool, Ternary* t) {return t;};
