module spasm.bindings.worklet;

import spasm.types;
import spasm.bindings.fetch;

struct Worklet {
  JsHandle handle;
  alias handle this;
  auto addModule(string moduleURL, WorkletOptions options) {
    return Promise!(void)(JsHandle(Worklet_addModule(this.handle, moduleURL, options.handle)));
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
  void credentials(RequestCredentials credentials) {
    WorkletOptions_credentials_Set(this.handle, credentials);
  }
  auto credentials() {
    return WorkletOptions_credentials_Get(this.handle);
  }
}


extern (C) Handle Worklet_addModule(Handle, string, Handle);
extern (C) void WorkletOptions_credentials_Set(Handle, RequestCredentials);
extern (C) RequestCredentials WorkletOptions_credentials_Get(Handle);