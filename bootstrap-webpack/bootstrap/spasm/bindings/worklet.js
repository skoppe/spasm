import spasm from '../modules/spasm.js';
export default {
  jsExports: {
    Worklet_addModule: function(ctx, moduleURLLen, moduleURLPtr, options) {
      return spasm.addObject(spasm.objects[ctx].addModule(spasm.decode_string(moduleURLLen, moduleURLPtr), spasm.objects[options]));
    },
    WorkletOptions_credentials_Set: function(ctx, credentials) {
      spasm.objects[ctx].credentials = spasm.decode_RequestCredentials(credentials);
    },
    WorkletOptions_credentials_Get: function(ctx) {
      return spasm.encode.RequestCredentials(spasm.objects[ctx].credentials);
    },
  }
}