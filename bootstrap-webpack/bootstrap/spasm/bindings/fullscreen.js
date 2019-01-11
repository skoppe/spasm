import spasm from '../modules/spasm.js';
export default {
  jsExports: {
    FullscreenOptions_navigationUI_Set: function(ctx, navigationUI) {
      spasm.objects[ctx].navigationUI = spasm.decode_FullscreenNavigationUI(navigationUI);
    },
    FullscreenOptions_navigationUI_Get: function(ctx) {
      return spasm.encode.FullscreenNavigationUI(spasm.objects[ctx].navigationUI);
    },
  }
}