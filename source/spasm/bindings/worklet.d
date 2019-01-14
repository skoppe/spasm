module spasm.bindings.worklet;

import spasm.types;
import spasm.bindings.fetch;

struct Worklet {
  JsHandle handle;
  alias handle this;
  auto addModule(string moduleURL, WorkletOptions options) {
    auto result = Promise!(void)(JsHandle(Worklet_addModule(this.handle, moduleURL, options.handle)));
    return result;
  }
}
struct WorkletGlobalScope {
  JsHandle handle;
  alias handle this;
}
struct WorkletOptions {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return WorkletOptions(JsHandle(spasm_add__object()));
  }
  auto credentials(RequestCredentials credentials) {
    WorkletOptions_credentials_Set(this.handle, credentials);
  }
  auto credentials() {
    auto result = WorkletOptions_credentials_Get(this.handle);
    return result;
  }
}


extern (C) Handle Worklet_addModule(Handle, string, Handle);
extern (C) void WorkletOptions_create(Handle);
extern (C) void WorkletOptions_credentials_Set(Handle, RequestCredentials);
extern (C) RequestCredentials WorkletOptions_credentials_Get(Handle);