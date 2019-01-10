import spasm from './spasm.js';
export default {
  jsExports: {
    CompositionEvent_data_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].data);
    },
    CompositionEventInit_data_Set: function(ctx, dataLen, dataPtr) {
      spasm.objects[ctx].data = spasm.decode_string(dataLen, dataPtr);
    },
    CompositionEventInit_data_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].data);
    },
    EventModifierInit_ctrlKey_Set: function(ctx, ctrlKey) {
      spasm.objects[ctx].ctrlKey = ctrlKey;
    },
    EventModifierInit_ctrlKey_Get: function(ctx) {
      return spasm.objects[ctx].ctrlKey;
    },
    EventModifierInit_shiftKey_Set: function(ctx, shiftKey) {
      spasm.objects[ctx].shiftKey = shiftKey;
    },
    EventModifierInit_shiftKey_Get: function(ctx) {
      return spasm.objects[ctx].shiftKey;
    },
    EventModifierInit_altKey_Set: function(ctx, altKey) {
      spasm.objects[ctx].altKey = altKey;
    },
    EventModifierInit_altKey_Get: function(ctx) {
      return spasm.objects[ctx].altKey;
    },
    EventModifierInit_metaKey_Set: function(ctx, metaKey) {
      spasm.objects[ctx].metaKey = metaKey;
    },
    EventModifierInit_metaKey_Get: function(ctx) {
      return spasm.objects[ctx].metaKey;
    },
    EventModifierInit_modifierAltGraph_Set: function(ctx, modifierAltGraph) {
      spasm.objects[ctx].modifierAltGraph = modifierAltGraph;
    },
    EventModifierInit_modifierAltGraph_Get: function(ctx) {
      return spasm.objects[ctx].modifierAltGraph;
    },
    EventModifierInit_modifierCapsLock_Set: function(ctx, modifierCapsLock) {
      spasm.objects[ctx].modifierCapsLock = modifierCapsLock;
    },
    EventModifierInit_modifierCapsLock_Get: function(ctx) {
      return spasm.objects[ctx].modifierCapsLock;
    },
    EventModifierInit_modifierFn_Set: function(ctx, modifierFn) {
      spasm.objects[ctx].modifierFn = modifierFn;
    },
    EventModifierInit_modifierFn_Get: function(ctx) {
      return spasm.objects[ctx].modifierFn;
    },
    EventModifierInit_modifierFnLock_Set: function(ctx, modifierFnLock) {
      spasm.objects[ctx].modifierFnLock = modifierFnLock;
    },
    EventModifierInit_modifierFnLock_Get: function(ctx) {
      return spasm.objects[ctx].modifierFnLock;
    },
    EventModifierInit_modifierHyper_Set: function(ctx, modifierHyper) {
      spasm.objects[ctx].modifierHyper = modifierHyper;
    },
    EventModifierInit_modifierHyper_Get: function(ctx) {
      return spasm.objects[ctx].modifierHyper;
    },
    EventModifierInit_modifierNumLock_Set: function(ctx, modifierNumLock) {
      spasm.objects[ctx].modifierNumLock = modifierNumLock;
    },
    EventModifierInit_modifierNumLock_Get: function(ctx) {
      return spasm.objects[ctx].modifierNumLock;
    },
    EventModifierInit_modifierScrollLock_Set: function(ctx, modifierScrollLock) {
      spasm.objects[ctx].modifierScrollLock = modifierScrollLock;
    },
    EventModifierInit_modifierScrollLock_Get: function(ctx) {
      return spasm.objects[ctx].modifierScrollLock;
    },
    EventModifierInit_modifierSuper_Set: function(ctx, modifierSuper) {
      spasm.objects[ctx].modifierSuper = modifierSuper;
    },
    EventModifierInit_modifierSuper_Get: function(ctx) {
      return spasm.objects[ctx].modifierSuper;
    },
    EventModifierInit_modifierSymbol_Set: function(ctx, modifierSymbol) {
      spasm.objects[ctx].modifierSymbol = modifierSymbol;
    },
    EventModifierInit_modifierSymbol_Get: function(ctx) {
      return spasm.objects[ctx].modifierSymbol;
    },
    EventModifierInit_modifierSymbolLock_Set: function(ctx, modifierSymbolLock) {
      spasm.objects[ctx].modifierSymbolLock = modifierSymbolLock;
    },
    EventModifierInit_modifierSymbolLock_Get: function(ctx) {
      return spasm.objects[ctx].modifierSymbolLock;
    },
    FocusEvent_relatedTarget_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].relatedTarget);
    },
    FocusEventInit_relatedTarget_Set: function(ctx, relatedTargetDefined, relatedTarget) {
      spasm.objects[ctx].relatedTarget = relatedTargetDefined ? spasm.objects[relatedTarget] : undefined;
    },
    FocusEventInit_relatedTarget_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].relatedTarget);
    },
    InputEvent_data_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].data);
    },
    InputEvent_isComposing_Get: function(ctx) {
      return spasm.objects[ctx].isComposing;
    },
    InputEvent_inputType_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].inputType);
    },
    InputEventInit_data_Set: function(ctx, dataDefined, dataLen, dataPtr) {
      spasm.objects[ctx].data = dataDefined ? spasm.decode_string(dataLen, dataPtr) : undefined;
    },
    InputEventInit_data_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].data);
    },
    InputEventInit_isComposing_Set: function(ctx, isComposing) {
      spasm.objects[ctx].isComposing = isComposing;
    },
    InputEventInit_isComposing_Get: function(ctx) {
      return spasm.objects[ctx].isComposing;
    },
    InputEventInit_inputType_Set: function(ctx, inputTypeLen, inputTypePtr) {
      spasm.objects[ctx].inputType = spasm.decode_string(inputTypeLen, inputTypePtr);
    },
    InputEventInit_inputType_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].inputType);
    },
    KeyboardEvent_key_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].key);
    },
    KeyboardEvent_code_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].code);
    },
    KeyboardEvent_location_Get: function(ctx) {
      return spasm.objects[ctx].location;
    },
    KeyboardEvent_ctrlKey_Get: function(ctx) {
      return spasm.objects[ctx].ctrlKey;
    },
    KeyboardEvent_shiftKey_Get: function(ctx) {
      return spasm.objects[ctx].shiftKey;
    },
    KeyboardEvent_altKey_Get: function(ctx) {
      return spasm.objects[ctx].altKey;
    },
    KeyboardEvent_metaKey_Get: function(ctx) {
      return spasm.objects[ctx].metaKey;
    },
    KeyboardEvent_repeat_Get: function(ctx) {
      return spasm.objects[ctx].repeat;
    },
    KeyboardEvent_isComposing_Get: function(ctx) {
      return spasm.objects[ctx].isComposing;
    },
    KeyboardEvent_getModifierState: function(ctx, keyArgLen, keyArgPtr) {
      return spasm.objects[ctx].getModifierState(spasm.decode_string(keyArgLen, keyArgPtr));
    },
    KeyboardEvent_charCode_Get: function(ctx) {
      return spasm.objects[ctx].charCode;
    },
    KeyboardEvent_keyCode_Get: function(ctx) {
      return spasm.objects[ctx].keyCode;
    },
    KeyboardEventInit_key_Set: function(ctx, keyLen, keyPtr) {
      spasm.objects[ctx].key = spasm.decode_string(keyLen, keyPtr);
    },
    KeyboardEventInit_key_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].key);
    },
    KeyboardEventInit_code_Set: function(ctx, codeLen, codePtr) {
      spasm.objects[ctx].code = spasm.decode_string(codeLen, codePtr);
    },
    KeyboardEventInit_code_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].code);
    },
    KeyboardEventInit_location_Set: function(ctx, location) {
      spasm.objects[ctx].location = location;
    },
    KeyboardEventInit_location_Get: function(ctx) {
      return spasm.objects[ctx].location;
    },
    KeyboardEventInit_repeat_Set: function(ctx, repeat) {
      spasm.objects[ctx].repeat = repeat;
    },
    KeyboardEventInit_repeat_Get: function(ctx) {
      return spasm.objects[ctx].repeat;
    },
    KeyboardEventInit_isComposing_Set: function(ctx, isComposing) {
      spasm.objects[ctx].isComposing = isComposing;
    },
    KeyboardEventInit_isComposing_Get: function(ctx) {
      return spasm.objects[ctx].isComposing;
    },
    MouseEvent_screenX_Get: function(ctx) {
      return spasm.objects[ctx].screenX;
    },
    MouseEvent_screenY_Get: function(ctx) {
      return spasm.objects[ctx].screenY;
    },
    MouseEvent_clientX_Get: function(ctx) {
      return spasm.objects[ctx].clientX;
    },
    MouseEvent_clientY_Get: function(ctx) {
      return spasm.objects[ctx].clientY;
    },
    MouseEvent_ctrlKey_Get: function(ctx) {
      return spasm.objects[ctx].ctrlKey;
    },
    MouseEvent_shiftKey_Get: function(ctx) {
      return spasm.objects[ctx].shiftKey;
    },
    MouseEvent_altKey_Get: function(ctx) {
      return spasm.objects[ctx].altKey;
    },
    MouseEvent_metaKey_Get: function(ctx) {
      return spasm.objects[ctx].metaKey;
    },
    MouseEvent_button_Get: function(ctx) {
      return spasm.objects[ctx].button;
    },
    MouseEvent_buttons_Get: function(ctx) {
      return spasm.objects[ctx].buttons;
    },
    MouseEvent_relatedTarget_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].relatedTarget);
    },
    MouseEvent_getModifierState: function(ctx, keyArgLen, keyArgPtr) {
      return spasm.objects[ctx].getModifierState(spasm.decode_string(keyArgLen, keyArgPtr));
    },
    MouseEventInit_screenX_Set: function(ctx, screenX) {
      spasm.objects[ctx].screenX = screenX;
    },
    MouseEventInit_screenX_Get: function(ctx) {
      return spasm.objects[ctx].screenX;
    },
    MouseEventInit_screenY_Set: function(ctx, screenY) {
      spasm.objects[ctx].screenY = screenY;
    },
    MouseEventInit_screenY_Get: function(ctx) {
      return spasm.objects[ctx].screenY;
    },
    MouseEventInit_clientX_Set: function(ctx, clientX) {
      spasm.objects[ctx].clientX = clientX;
    },
    MouseEventInit_clientX_Get: function(ctx) {
      return spasm.objects[ctx].clientX;
    },
    MouseEventInit_clientY_Set: function(ctx, clientY) {
      spasm.objects[ctx].clientY = clientY;
    },
    MouseEventInit_clientY_Get: function(ctx) {
      return spasm.objects[ctx].clientY;
    },
    MouseEventInit_button_Set: function(ctx, button) {
      spasm.objects[ctx].button = button;
    },
    MouseEventInit_button_Get: function(ctx) {
      return spasm.objects[ctx].button;
    },
    MouseEventInit_buttons_Set: function(ctx, buttons) {
      spasm.objects[ctx].buttons = buttons;
    },
    MouseEventInit_buttons_Get: function(ctx) {
      return spasm.objects[ctx].buttons;
    },
    MouseEventInit_relatedTarget_Set: function(ctx, relatedTargetDefined, relatedTarget) {
      spasm.objects[ctx].relatedTarget = relatedTargetDefined ? spasm.objects[relatedTarget] : undefined;
    },
    MouseEventInit_relatedTarget_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].relatedTarget);
    },
    UIEvent_view_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].view);
    },
    UIEvent_detail_Get: function(ctx) {
      return spasm.objects[ctx].detail;
    },
    UIEvent_which_Get: function(ctx) {
      return spasm.objects[ctx].which;
    },
    UIEventInit_view_Set: function(ctx, viewDefined, view) {
      spasm.objects[ctx].view = viewDefined ? spasm.objects[view] : undefined;
    },
    UIEventInit_view_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].view);
    },
    UIEventInit_detail_Set: function(ctx, detail) {
      spasm.objects[ctx].detail = detail;
    },
    UIEventInit_detail_Get: function(ctx) {
      return spasm.objects[ctx].detail;
    },
    WheelEvent_deltaX_Get: function(ctx) {
      return spasm.objects[ctx].deltaX;
    },
    WheelEvent_deltaY_Get: function(ctx) {
      return spasm.objects[ctx].deltaY;
    },
    WheelEvent_deltaZ_Get: function(ctx) {
      return spasm.objects[ctx].deltaZ;
    },
    WheelEvent_deltaMode_Get: function(ctx) {
      return spasm.objects[ctx].deltaMode;
    },
    WheelEventInit_deltaX_Set: function(ctx, deltaX) {
      spasm.objects[ctx].deltaX = deltaX;
    },
    WheelEventInit_deltaX_Get: function(ctx) {
      return spasm.objects[ctx].deltaX;
    },
    WheelEventInit_deltaY_Set: function(ctx, deltaY) {
      spasm.objects[ctx].deltaY = deltaY;
    },
    WheelEventInit_deltaY_Get: function(ctx) {
      return spasm.objects[ctx].deltaY;
    },
    WheelEventInit_deltaZ_Set: function(ctx, deltaZ) {
      spasm.objects[ctx].deltaZ = deltaZ;
    },
    WheelEventInit_deltaZ_Get: function(ctx) {
      return spasm.objects[ctx].deltaZ;
    },
    WheelEventInit_deltaMode_Set: function(ctx, deltaMode) {
      spasm.objects[ctx].deltaMode = deltaMode;
    },
    WheelEventInit_deltaMode_Get: function(ctx) {
      return spasm.objects[ctx].deltaMode;
    },
  }
}