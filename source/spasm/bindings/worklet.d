module spasm.bindings.worklet;

import spasm.types;
import spasm.bindings.fetch;

struct Worklet {
  JsHandle handle;
  alias handle this;
  auto addModule(string moduleURL, WorkletOptions options) {
    return Promise!(void)(Worklet_addModule(this.handle, moduleURL, options.handle));
  }
}
struct WorkletGlobalScope {
  JsHandle handle;
  alias handle this;
}
struct WorkletOptions {
  JsHandle handle;
  alias handle this;
  auto credentials(RequestCredentials credentials) {
    WorkletOptions_credentials_Set(this.handle, credentials);
  }
  auto credentials() {
    return WorkletOptions_credentials_Get(this.handle);
  }
}


extern (C) JsHandle Worklet_addModule(JsHandle, string, JsHandle);
extern (C) void WorkletOptions_credentials_Set(JsHandle, RequestCredentials);
extern (C) RequestCredentials WorkletOptions_credentials_Get(JsHandle);