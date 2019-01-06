import spasm from './spasm.js';
export default {
  jsExports: {
    DevicePermissionDescriptor_deviceId_Set: function(ctx, deviceIdLen, deviceIdPtr) {
      spasm.objects[ctx].deviceId = spasm.decode_string(deviceIdLen, deviceIdPtr);
    },
    DevicePermissionDescriptor_deviceId_Get: function(rawResult, ctx) {
      spasm.encode_string(rawResult, spasm.objects[ctx].deviceId);
    },
    MidiPermissionDescriptor_sysex_Set: function(ctx, sysex) {
      spasm.objects[ctx].sysex = sysex;
    },
    MidiPermissionDescriptor_sysex_Get: function(ctx) {
      return spasm.objects[ctx].sysex;
    },
    PermissionDescriptor_name_Set: function(ctx, name) {
      spasm.objects[ctx].name = spasm.decode_PermissionName(name);
    },
    PermissionDescriptor_name_Get: function(ctx) {
      return spasm.encode_PermissionName(spasm.objects[ctx].name);
    },
    PermissionSetParameters_descriptor_Set: function(ctx, descriptor) {
      spasm.objects[ctx].descriptor = spasm.objects[descriptor];
    },
    PermissionSetParameters_descriptor_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].descriptor);
    },
    PermissionSetParameters_state_Set: function(ctx, state) {
      spasm.objects[ctx].state = spasm.decode_PermissionState(state);
    },
    PermissionSetParameters_state_Get: function(ctx) {
      return spasm.encode_PermissionState(spasm.objects[ctx].state);
    },
    PermissionSetParameters_oneRealm_Set: function(ctx, oneRealm) {
      spasm.objects[ctx].oneRealm = oneRealm;
    },
    PermissionSetParameters_oneRealm_Get: function(ctx) {
      return spasm.objects[ctx].oneRealm;
    },
    PermissionStatus_state_Get: function(ctx) {
      return spasm.encode_PermissionState(spasm.objects[ctx].state);
    },
    PermissionStatus_onchange_Set: function(ctx, onchange) {
      spasm.objects[ctx].onchange = onchange;
    },
    PermissionStatus_onchange_Get: function(ctx) {
      return spasm.objects[ctx].onchange;
    },
    Permissions_query: function(ctx, permissionDesc) {
      return spasm.addObject(spasm.objects[ctx].query(spasm.objects[permissionDesc]));
    },
    PushPermissionDescriptor_userVisibleOnly_Set: function(ctx, userVisibleOnly) {
      spasm.objects[ctx].userVisibleOnly = userVisibleOnly;
    },
    PushPermissionDescriptor_userVisibleOnly_Get: function(ctx) {
      return spasm.objects[ctx].userVisibleOnly;
    },
  }
}