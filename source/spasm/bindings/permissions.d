module spasm.bindings.permissions;

import spasm.types;
import spasm.bindings.dom;
import spasm.bindings.html;

nothrow:
struct DevicePermissionDescriptor {
  nothrow:
  spasm.bindings.permissions.PermissionDescriptor _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .PermissionDescriptor(h);
  }
  static auto create() {
    return DevicePermissionDescriptor(JsHandle(spasm_add__object()));
  }
  void deviceId(string deviceId) {
    DevicePermissionDescriptor_deviceId_Set(this._parent, deviceId);
  }
  auto deviceId() {
    return DevicePermissionDescriptor_deviceId_Get(this._parent);
  }
}
struct MidiPermissionDescriptor {
  nothrow:
  spasm.bindings.permissions.PermissionDescriptor _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .PermissionDescriptor(h);
  }
  static auto create() {
    return MidiPermissionDescriptor(JsHandle(spasm_add__object()));
  }
  void sysex(bool sysex) {
    MidiPermissionDescriptor_sysex_Set(this._parent, sysex);
  }
  auto sysex() {
    return MidiPermissionDescriptor_sysex_Get(this._parent);
  }
}
struct PermissionDescriptor {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return PermissionDescriptor(JsHandle(spasm_add__object()));
  }
  void name(PermissionName name) {
    PermissionDescriptor_name_Set(this.handle, name);
  }
  auto name() {
    return PermissionDescriptor_name_Get(this.handle);
  }
}
enum PermissionName {
  geolocation,
  notifications,
  push,
  midi,
  camera,
  microphone,
  speaker,
  device_info,
  background_fetch,
  background_sync,
  bluetooth,
  persistent_storage,
  ambient_light_sensor,
  accelerometer,
  gyroscope,
  magnetometer,
  clipboard,
  display
}
struct PermissionSetParameters {
  nothrow:
  JsHandle handle;
  alias handle this;
  static auto create() {
    return PermissionSetParameters(JsHandle(spasm_add__object()));
  }
  void descriptor(PermissionDescriptor descriptor) {
    PermissionSetParameters_descriptor_Set(this.handle, descriptor.handle);
  }
  auto descriptor() {
    return PermissionDescriptor(JsHandle(PermissionSetParameters_descriptor_Get(this.handle)));
  }
  void state(PermissionState state) {
    PermissionSetParameters_state_Set(this.handle, state);
  }
  auto state() {
    return PermissionSetParameters_state_Get(this.handle);
  }
  void oneRealm(bool oneRealm) {
    PermissionSetParameters_oneRealm_Set(this.handle, oneRealm);
  }
  auto oneRealm() {
    return PermissionSetParameters_oneRealm_Get(this.handle);
  }
}
enum PermissionState {
  granted,
  denied,
  prompt
}
struct PermissionStatus {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .EventTarget(h);
  }
  auto state() {
    return PermissionStatus_state_Get(this._parent);
  }
  void onchange(EventHandler onchange) {
    PermissionStatus_onchange_Set(this._parent, onchange);
  }
  auto onchange() {
    return PermissionStatus_onchange_Get(this._parent);
  }
}
struct Permissions {
  nothrow:
  JsHandle handle;
  alias handle this;
  auto query(JsObject permissionDesc) {
    return Promise!(PermissionStatus)(JsHandle(Permissions_query(this.handle, permissionDesc.handle)));
  }
}
struct PushPermissionDescriptor {
  nothrow:
  spasm.bindings.permissions.PermissionDescriptor _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = .PermissionDescriptor(h);
  }
  static auto create() {
    return PushPermissionDescriptor(JsHandle(spasm_add__object()));
  }
  void userVisibleOnly(bool userVisibleOnly) {
    PushPermissionDescriptor_userVisibleOnly_Set(this._parent, userVisibleOnly);
  }
  auto userVisibleOnly() {
    return PushPermissionDescriptor_userVisibleOnly_Get(this._parent);
  }
}


extern (C) void DevicePermissionDescriptor_deviceId_Set(Handle, string);
extern (C) string DevicePermissionDescriptor_deviceId_Get(Handle);
extern (C) void MidiPermissionDescriptor_sysex_Set(Handle, bool);
extern (C) bool MidiPermissionDescriptor_sysex_Get(Handle);
extern (C) void PermissionDescriptor_name_Set(Handle, PermissionName);
extern (C) PermissionName PermissionDescriptor_name_Get(Handle);
extern (C) void PermissionSetParameters_descriptor_Set(Handle, Handle);
extern (C) Handle PermissionSetParameters_descriptor_Get(Handle);
extern (C) void PermissionSetParameters_state_Set(Handle, PermissionState);
extern (C) PermissionState PermissionSetParameters_state_Get(Handle);
extern (C) void PermissionSetParameters_oneRealm_Set(Handle, bool);
extern (C) bool PermissionSetParameters_oneRealm_Get(Handle);
extern (C) PermissionState PermissionStatus_state_Get(Handle);
extern (C) void PermissionStatus_onchange_Set(Handle, EventHandler);
extern (C) EventHandler PermissionStatus_onchange_Get(Handle);
extern (C) Handle Permissions_query(Handle, Handle);
extern (C) void PushPermissionDescriptor_userVisibleOnly_Set(Handle, bool);
extern (C) bool PushPermissionDescriptor_userVisibleOnly_Get(Handle);