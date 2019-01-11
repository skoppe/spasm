import spasm from '../modules/spasm.js';
export default {
  jsExports: {
    ApplicationCache_status_Get: function(ctx) {
      return spasm.objects[ctx].status;
    },
    ApplicationCache_update: function(ctx) {
      spasm.objects[ctx].update();
    },
    ApplicationCache_abort: function(ctx) {
      spasm.objects[ctx].abort();
    },
    ApplicationCache_swapCache: function(ctx) {
      spasm.objects[ctx].swapCache();
    },
    ApplicationCache_onchecking_Set: function(ctx, onchecking) {
      spasm.objects[ctx].onchecking = onchecking;
    },
    ApplicationCache_onchecking_Get: function(ctx) {
      return spasm.objects[ctx].onchecking;
    },
    ApplicationCache_onerror_Set: function(ctx, onerror) {
      spasm.objects[ctx].onerror = onerror;
    },
    ApplicationCache_onerror_Get: function(ctx) {
      return spasm.objects[ctx].onerror;
    },
    ApplicationCache_onnoupdate_Set: function(ctx, onnoupdate) {
      spasm.objects[ctx].onnoupdate = onnoupdate;
    },
    ApplicationCache_onnoupdate_Get: function(ctx) {
      return spasm.objects[ctx].onnoupdate;
    },
    ApplicationCache_ondownloading_Set: function(ctx, ondownloading) {
      spasm.objects[ctx].ondownloading = ondownloading;
    },
    ApplicationCache_ondownloading_Get: function(ctx) {
      return spasm.objects[ctx].ondownloading;
    },
    ApplicationCache_onprogress_Set: function(ctx, onprogress) {
      spasm.objects[ctx].onprogress = onprogress;
    },
    ApplicationCache_onprogress_Get: function(ctx) {
      return spasm.objects[ctx].onprogress;
    },
    ApplicationCache_onupdateready_Set: function(ctx, onupdateready) {
      spasm.objects[ctx].onupdateready = onupdateready;
    },
    ApplicationCache_onupdateready_Get: function(ctx) {
      return spasm.objects[ctx].onupdateready;
    },
    ApplicationCache_oncached_Set: function(ctx, oncached) {
      spasm.objects[ctx].oncached = oncached;
    },
    ApplicationCache_oncached_Get: function(ctx) {
      return spasm.objects[ctx].oncached;
    },
    ApplicationCache_onobsolete_Set: function(ctx, onobsolete) {
      spasm.objects[ctx].onobsolete = onobsolete;
    },
    ApplicationCache_onobsolete_Get: function(ctx) {
      return spasm.objects[ctx].onobsolete;
    },
    AssignedNodesOptions_flatten_Set: function(ctx, flatten) {
      spasm.objects[ctx].flatten = flatten;
    },
    AssignedNodesOptions_flatten_Get: function(ctx) {
      return spasm.objects[ctx].flatten;
    },
    AudioTrack_id_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].id);
    },
    AudioTrack_kind_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].kind);
    },
    AudioTrack_label_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].label);
    },
    AudioTrack_language_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].language);
    },
    AudioTrack_enabled_Set: function(ctx, enabled) {
      spasm.objects[ctx].enabled = enabled;
    },
    AudioTrack_enabled_Get: function(ctx) {
      return spasm.objects[ctx].enabled;
    },
    AudioTrack_sourceBuffer_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].sourceBuffer);
    },
    AudioTrackList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    AudioTrackList_getter__uint: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx][index]);
    },
    AudioTrackList_getTrackById: function(rawResult, ctx, idLen, idPtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getTrackById(spasm.decode_string(idLen, idPtr)));
    },
    AudioTrackList_onchange_Set: function(ctx, onchange) {
      spasm.objects[ctx].onchange = onchange;
    },
    AudioTrackList_onchange_Get: function(ctx) {
      return spasm.objects[ctx].onchange;
    },
    AudioTrackList_onaddtrack_Set: function(ctx, onaddtrack) {
      spasm.objects[ctx].onaddtrack = onaddtrack;
    },
    AudioTrackList_onaddtrack_Get: function(ctx) {
      return spasm.objects[ctx].onaddtrack;
    },
    AudioTrackList_onremovetrack_Set: function(ctx, onremovetrack) {
      spasm.objects[ctx].onremovetrack = onremovetrack;
    },
    AudioTrackList_onremovetrack_Get: function(ctx) {
      return spasm.objects[ctx].onremovetrack;
    },
    BarProp_visible_Get: function(ctx) {
      return spasm.objects[ctx].visible;
    },
    BeforeUnloadEvent_returnValue_Set: function(ctx, returnValueLen, returnValuePtr) {
      spasm.objects[ctx].returnValue = spasm.decode_string(returnValueLen, returnValuePtr);
    },
    BeforeUnloadEvent_returnValue_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].returnValue);
    },
    BroadcastChannel_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    BroadcastChannel_postMessage: function(ctx, message) {
      spasm.objects[ctx].postMessage(spasm.objects[message]);
    },
    BroadcastChannel_close: function(ctx) {
      spasm.objects[ctx].close();
    },
    BroadcastChannel_onmessage_Set: function(ctx, onmessage) {
      spasm.objects[ctx].onmessage = onmessage;
    },
    BroadcastChannel_onmessage_Get: function(ctx) {
      return spasm.objects[ctx].onmessage;
    },
    BroadcastChannel_onmessageerror_Set: function(ctx, onmessageerror) {
      spasm.objects[ctx].onmessageerror = onmessageerror;
    },
    BroadcastChannel_onmessageerror_Get: function(ctx) {
      return spasm.objects[ctx].onmessageerror;
    },
    CanvasGradient_addColorStop: function(ctx, offset, colorLen, colorPtr) {
      spasm.objects[ctx].addColorStop(offset, spasm.decode_string(colorLen, colorPtr));
    },
    CanvasPattern_setTransform: function(ctx, transform) {
      spasm.objects[ctx].setTransform(spasm.objects[transform]);
    },
    CanvasRenderingContext2D_canvas_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].canvas);
    },
    CanvasPath_closePath: function(ctx) {
      spasm.objects[ctx].closePath();
    },
    CanvasPath_moveTo: function(ctx, x, y) {
      spasm.objects[ctx].moveTo(x, y);
    },
    CanvasPath_lineTo: function(ctx, x, y) {
      spasm.objects[ctx].lineTo(x, y);
    },
    CanvasPath_quadraticCurveTo: function(ctx, cpx, cpy, x, y) {
      spasm.objects[ctx].quadraticCurveTo(cpx, cpy, x, y);
    },
    CanvasPath_bezierCurveTo: function(ctx, cp1x, cp1y, cp2x, cp2y, x, y) {
      spasm.objects[ctx].bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y);
    },
    CanvasPath_arcTo: function(ctx, x1, y1, x2, y2, radius) {
      spasm.objects[ctx].arcTo(x1, y1, x2, y2, radius);
    },
    CanvasPath_rect: function(ctx, x, y, w, h) {
      spasm.objects[ctx].rect(x, y, w, h);
    },
    CanvasPath_arc: function(ctx, x, y, radius, startAngle, endAngle, anticlockwise) {
      spasm.objects[ctx].arc(x, y, radius, startAngle, endAngle, anticlockwise);
    },
    CanvasPath_ellipse: function(ctx, x, y, radiusX, radiusY, rotation, startAngle, endAngle, anticlockwise) {
      spasm.objects[ctx].ellipse(x, y, radiusX, radiusY, rotation, startAngle, endAngle, anticlockwise);
    },
    CanvasPathDrawingStyles_setLineDash: function(ctx, segments) {
      spasm.objects[ctx].setLineDash(spasm.objects[segments]);
    },
    CanvasPathDrawingStyles_getLineDash: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getLineDash());
    },
    CanvasImageData_createImageData__int_int: function(ctx, sw, sh) {
      return spasm.addObject(spasm.objects[ctx].createImageData(sw, sh));
    },
    CanvasImageData_createImageData__Handle: function(ctx, imagedata) {
      return spasm.addObject(spasm.objects[ctx].createImageData(spasm.objects[imagedata]));
    },
    CanvasImageData_getImageData: function(ctx, sx, sy, sw, sh) {
      return spasm.addObject(spasm.objects[ctx].getImageData(sx, sy, sw, sh));
    },
    CanvasImageData_putImageData__Handle_int_int: function(ctx, imagedata, dx, dy) {
      spasm.objects[ctx].putImageData(spasm.objects[imagedata], dx, dy);
    },
    CanvasImageData_putImageData__Handle_int_int_int_int_int_int: function(ctx, imagedata, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight) {
      spasm.objects[ctx].putImageData(spasm.objects[imagedata], dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight);
    },
    CanvasDrawImage_drawImage__CanvasImageSource_double_double: function(ctx, image, dx, dy) {
      spasm.objects[ctx].drawImage(spasm.decode_CanvasImageSource(image), dx, dy);
    },
    CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double: function(ctx, image, dx, dy, dw, dh) {
      spasm.objects[ctx].drawImage(spasm.decode_CanvasImageSource(image), dx, dy, dw, dh);
    },
    CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double_double_double_double_double: function(ctx, image, sx, sy, sw, sh, dx, dy, dw, dh) {
      spasm.objects[ctx].drawImage(spasm.decode_CanvasImageSource(image), sx, sy, sw, sh, dx, dy, dw, dh);
    },
    CanvasText_fillText: function(ctx, textLen, textPtr, x, y, maxWidth) {
      spasm.objects[ctx].fillText(spasm.decode_string(textLen, textPtr), x, y, maxWidth);
    },
    CanvasText_strokeText: function(ctx, textLen, textPtr, x, y, maxWidth) {
      spasm.objects[ctx].strokeText(spasm.decode_string(textLen, textPtr), x, y, maxWidth);
    },
    CanvasText_measureText: function(ctx, textLen, textPtr) {
      return spasm.addObject(spasm.objects[ctx].measureText(spasm.decode_string(textLen, textPtr)));
    },
    CanvasUserInterface_drawFocusIfNeeded__Handle: function(ctx, element) {
      spasm.objects[ctx].drawFocusIfNeeded(spasm.objects[element]);
    },
    CanvasUserInterface_drawFocusIfNeeded__Handle_Handle: function(ctx, path, element) {
      spasm.objects[ctx].drawFocusIfNeeded(spasm.objects[path], spasm.objects[element]);
    },
    CanvasUserInterface_scrollPathIntoView__: function(ctx) {
      spasm.objects[ctx].scrollPathIntoView();
    },
    CanvasUserInterface_scrollPathIntoView__Handle: function(ctx, path) {
      spasm.objects[ctx].scrollPathIntoView(spasm.objects[path]);
    },
    CanvasDrawPath_beginPath: function(ctx) {
      spasm.objects[ctx].beginPath();
    },
    CanvasDrawPath_fill__CanvasFillRule: function(ctx, fillRule) {
      spasm.objects[ctx].fill(spasm.decode_CanvasFillRule(fillRule));
    },
    CanvasDrawPath_fill__Handle_CanvasFillRule: function(ctx, path, fillRule) {
      spasm.objects[ctx].fill(spasm.objects[path], spasm.decode_CanvasFillRule(fillRule));
    },
    CanvasDrawPath_stroke__: function(ctx) {
      spasm.objects[ctx].stroke();
    },
    CanvasDrawPath_stroke__Handle: function(ctx, path) {
      spasm.objects[ctx].stroke(spasm.objects[path]);
    },
    CanvasDrawPath_clip__CanvasFillRule: function(ctx, fillRule) {
      spasm.objects[ctx].clip(spasm.decode_CanvasFillRule(fillRule));
    },
    CanvasDrawPath_clip__Handle_CanvasFillRule: function(ctx, path, fillRule) {
      spasm.objects[ctx].clip(spasm.objects[path], spasm.decode_CanvasFillRule(fillRule));
    },
    CanvasDrawPath_isPointInPath__double_double_CanvasFillRule: function(ctx, x, y, fillRule) {
      return spasm.objects[ctx].isPointInPath(x, y, spasm.decode_CanvasFillRule(fillRule));
    },
    CanvasDrawPath_isPointInPath__Handle_double_double_CanvasFillRule: function(ctx, path, x, y, fillRule) {
      return spasm.objects[ctx].isPointInPath(spasm.objects[path], x, y, spasm.decode_CanvasFillRule(fillRule));
    },
    CanvasDrawPath_isPointInStroke__double_double: function(ctx, x, y) {
      return spasm.objects[ctx].isPointInStroke(x, y);
    },
    CanvasDrawPath_isPointInStroke__Handle_double_double: function(ctx, path, x, y) {
      return spasm.objects[ctx].isPointInStroke(spasm.objects[path], x, y);
    },
    CanvasRect_clearRect: function(ctx, x, y, w, h) {
      spasm.objects[ctx].clearRect(x, y, w, h);
    },
    CanvasRect_fillRect: function(ctx, x, y, w, h) {
      spasm.objects[ctx].fillRect(x, y, w, h);
    },
    CanvasRect_strokeRect: function(ctx, x, y, w, h) {
      spasm.objects[ctx].strokeRect(x, y, w, h);
    },
    CanvasFillStrokeStyles_createLinearGradient: function(ctx, x0, y0, x1, y1) {
      return spasm.addObject(spasm.objects[ctx].createLinearGradient(x0, y0, x1, y1));
    },
    CanvasFillStrokeStyles_createRadialGradient: function(ctx, x0, y0, r0, x1, y1, r1) {
      return spasm.addObject(spasm.objects[ctx].createRadialGradient(x0, y0, r0, x1, y1, r1));
    },
    CanvasFillStrokeStyles_createPattern: function(rawResult, ctx, image, repetitionLen, repetitionPtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].createPattern(spasm.decode_CanvasImageSource(image), spasm.decode_string(repetitionLen, repetitionPtr)));
    },
    CanvasTransform_scale: function(ctx, x, y) {
      spasm.objects[ctx].scale(x, y);
    },
    CanvasTransform_rotate: function(ctx, angle) {
      spasm.objects[ctx].rotate(angle);
    },
    CanvasTransform_translate: function(ctx, x, y) {
      spasm.objects[ctx].translate(x, y);
    },
    CanvasTransform_transform: function(ctx, a, b, c, d, e, f) {
      spasm.objects[ctx].transform(a, b, c, d, e, f);
    },
    CanvasTransform_getTransform: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getTransform());
    },
    CanvasTransform_setTransform__double_double_double_double_double_double: function(ctx, a, b, c, d, e, f) {
      spasm.objects[ctx].setTransform(a, b, c, d, e, f);
    },
    CanvasTransform_setTransform__Handle: function(ctx, transform) {
      spasm.objects[ctx].setTransform(spasm.objects[transform]);
    },
    CanvasTransform_resetTransform: function(ctx) {
      spasm.objects[ctx].resetTransform();
    },
    CanvasState_save: function(ctx) {
      spasm.objects[ctx].save();
    },
    CanvasState_restore: function(ctx) {
      spasm.objects[ctx].restore();
    },
    CanvasRenderingContext2DSettings_alpha_Set: function(ctx, alpha) {
      spasm.objects[ctx].alpha = alpha;
    },
    CanvasRenderingContext2DSettings_alpha_Get: function(ctx) {
      return spasm.objects[ctx].alpha;
    },
    CloseEvent_wasClean_Get: function(ctx) {
      return spasm.objects[ctx].wasClean;
    },
    CloseEvent_code_Get: function(ctx) {
      return spasm.objects[ctx].code;
    },
    CloseEvent_reason_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].reason);
    },
    CloseEventInit_wasClean_Set: function(ctx, wasClean) {
      spasm.objects[ctx].wasClean = wasClean;
    },
    CloseEventInit_wasClean_Get: function(ctx) {
      return spasm.objects[ctx].wasClean;
    },
    CloseEventInit_code_Set: function(ctx, code) {
      spasm.objects[ctx].code = code;
    },
    CloseEventInit_code_Get: function(ctx) {
      return spasm.objects[ctx].code;
    },
    CloseEventInit_reason_Set: function(ctx, reasonLen, reasonPtr) {
      spasm.objects[ctx].reason = spasm.decode_string(reasonLen, reasonPtr);
    },
    CloseEventInit_reason_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].reason);
    },
    CustomElementRegistry_define: function(ctx, nameLen, namePtr, constructorCtx, constructorPtr, options) {
      spasm.objects[ctx].define(spasm.decode_string(nameLen, namePtr), ()=>{spasm.callback_Any(constructorCtx, constructorPtr)}, spasm.objects[options]);
    },
    CustomElementRegistry_get: function(ctx, nameLen, namePtr) {
      return spasm.addObject(spasm.objects[ctx].get(spasm.decode_string(nameLen, namePtr)));
    },
    CustomElementRegistry_whenDefined: function(ctx, nameLen, namePtr) {
      return spasm.addObject(spasm.objects[ctx].whenDefined(spasm.decode_string(nameLen, namePtr)));
    },
    CustomElementRegistry_upgrade: function(ctx, root) {
      spasm.objects[ctx].upgrade(spasm.objects[root]);
    },
    DOMStringList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    DOMStringList_item_getter: function(rawResult, ctx, index) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].item(index));
    },
    DOMStringList_contains: function(ctx, stringLen, stringPtr) {
      return spasm.objects[ctx].contains(spasm.decode_string(stringLen, stringPtr));
    },
    DOMStringMap_getter__string: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode.string(rawResult, spasm.objects[ctx][spasm.decode_string(nameLen, namePtr)]);
    },
    DOMStringMap_setter__string_string: function(ctx, nameLen, namePtr, valueLen, valuePtr) {
      spasm.objects[ctx][spasm.decode_string(nameLen, namePtr)] = spasm.decode_string(valueLen, valuePtr);
    },
    DOMStringMap_deleter: function(ctx, nameLen, namePtr) {
      delete spasm.objects[ctx][spasm.decode_string(nameLen, namePtr)];
    },
    DataTransfer_dropEffect_Set: function(ctx, dropEffectLen, dropEffectPtr) {
      spasm.objects[ctx].dropEffect = spasm.decode_string(dropEffectLen, dropEffectPtr);
    },
    DataTransfer_dropEffect_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].dropEffect);
    },
    DataTransfer_effectAllowed_Set: function(ctx, effectAllowedLen, effectAllowedPtr) {
      spasm.objects[ctx].effectAllowed = spasm.decode_string(effectAllowedLen, effectAllowedPtr);
    },
    DataTransfer_effectAllowed_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].effectAllowed);
    },
    DataTransfer_items_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].items);
    },
    DataTransfer_setDragImage: function(ctx, image, x, y) {
      spasm.objects[ctx].setDragImage(spasm.objects[image], x, y);
    },
    DataTransfer_types_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].types);
    },
    DataTransfer_getData: function(rawResult, ctx, formatLen, formatPtr) {
      spasm.encode.string(rawResult, spasm.objects[ctx].getData(spasm.decode_string(formatLen, formatPtr)));
    },
    DataTransfer_setData: function(ctx, formatLen, formatPtr, dataLen, dataPtr) {
      spasm.objects[ctx].setData(spasm.decode_string(formatLen, formatPtr), spasm.decode_string(dataLen, dataPtr));
    },
    DataTransfer_clearData: function(ctx, formatLen, formatPtr) {
      spasm.objects[ctx].clearData(spasm.decode_string(formatLen, formatPtr));
    },
    DataTransfer_files_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].files);
    },
    DataTransferItem_kind_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].kind);
    },
    DataTransferItem_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    DataTransferItem_getAsString: function(ctx, _callbackDefined, _callbackCtx, _callbackPtr) {
      spasm.objects[ctx].getAsString(_callbackDefined ? (data)=>{spasm.callback_void_string(_callbackCtx, _callbackPtr, spasm.encode.string(data))} : undefined);
    },
    DataTransferItem_getAsFile: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getAsFile());
    },
    DataTransferItemList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    DataTransferItemList_getter__uint: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx][index]);
    },
    DataTransferItemList_add__string_string: function(rawResult, ctx, dataLen, dataPtr, typeLen, typePtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].add(spasm.decode_string(dataLen, dataPtr), spasm.decode_string(typeLen, typePtr)));
    },
    DataTransferItemList_add__Handle: function(rawResult, ctx, data) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].add(spasm.objects[data]));
    },
    DataTransferItemList_remove: function(ctx, index) {
      spasm.objects[ctx].remove(index);
    },
    DataTransferItemList_clear: function(ctx) {
      spasm.objects[ctx].clear();
    },
    DedicatedWorkerGlobalScope_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    DedicatedWorkerGlobalScope_postMessage__Any_sequence: function(ctx, message, transfer) {
      spasm.objects[ctx].postMessage(spasm.objects[message], spasm.objects[transfer]);
    },
    DedicatedWorkerGlobalScope_postMessage__Any_Handle: function(ctx, message, options) {
      spasm.objects[ctx].postMessage(spasm.objects[message], spasm.objects[options]);
    },
    DedicatedWorkerGlobalScope_close: function(ctx) {
      spasm.objects[ctx].close();
    },
    DedicatedWorkerGlobalScope_onmessage_Set: function(ctx, onmessage) {
      spasm.objects[ctx].onmessage = onmessage;
    },
    DedicatedWorkerGlobalScope_onmessage_Get: function(ctx) {
      return spasm.objects[ctx].onmessage;
    },
    DedicatedWorkerGlobalScope_onmessageerror_Set: function(ctx, onmessageerror) {
      spasm.objects[ctx].onmessageerror = onmessageerror;
    },
    DedicatedWorkerGlobalScope_onmessageerror_Get: function(ctx) {
      return spasm.objects[ctx].onmessageerror;
    },
    AnimationFrameProvider_requestAnimationFrame: function(ctx, callbackCtx, callbackPtr) {
      return spasm.objects[ctx].requestAnimationFrame((time)=>{spasm.callback_void_double(callbackCtx, callbackPtr, time)});
    },
    AnimationFrameProvider_cancelAnimationFrame: function(ctx, handle) {
      spasm.objects[ctx].cancelAnimationFrame(handle);
    },
    DragEvent_dataTransfer_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].dataTransfer);
    },
    DragEventInit_dataTransfer_Set: function(ctx, dataTransferDefined, dataTransfer) {
      spasm.objects[ctx].dataTransfer = dataTransferDefined ? spasm.objects[dataTransfer] : undefined;
    },
    DragEventInit_dataTransfer_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].dataTransfer);
    },
    ElementDefinitionOptions_extends_Set: function(ctx, extendsLen, extendsPtr) {
      spasm.objects[ctx].extends = spasm.decode_string(extendsLen, extendsPtr);
    },
    ElementDefinitionOptions_extends_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].extends);
    },
    ErrorEvent_message_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].message);
    },
    ErrorEvent_filename_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].filename);
    },
    ErrorEvent_lineno_Get: function(ctx) {
      return spasm.objects[ctx].lineno;
    },
    ErrorEvent_colno_Get: function(ctx) {
      return spasm.objects[ctx].colno;
    },
    ErrorEvent_error_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].error);
    },
    ErrorEventInit_message_Set: function(ctx, messageLen, messagePtr) {
      spasm.objects[ctx].message = spasm.decode_string(messageLen, messagePtr);
    },
    ErrorEventInit_message_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].message);
    },
    ErrorEventInit_filename_Set: function(ctx, filenameLen, filenamePtr) {
      spasm.objects[ctx].filename = spasm.decode_string(filenameLen, filenamePtr);
    },
    ErrorEventInit_filename_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].filename);
    },
    ErrorEventInit_lineno_Set: function(ctx, lineno) {
      spasm.objects[ctx].lineno = lineno;
    },
    ErrorEventInit_lineno_Get: function(ctx) {
      return spasm.objects[ctx].lineno;
    },
    ErrorEventInit_colno_Set: function(ctx, colno) {
      spasm.objects[ctx].colno = colno;
    },
    ErrorEventInit_colno_Get: function(ctx) {
      return spasm.objects[ctx].colno;
    },
    ErrorEventInit_error_Set: function(ctx, error) {
      spasm.objects[ctx].error = spasm.objects[error];
    },
    ErrorEventInit_error_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].error);
    },
    EventSource_url_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].url);
    },
    EventSource_withCredentials_Get: function(ctx) {
      return spasm.objects[ctx].withCredentials;
    },
    EventSource_readyState_Get: function(ctx) {
      return spasm.objects[ctx].readyState;
    },
    EventSource_onopen_Set: function(ctx, onopen) {
      spasm.objects[ctx].onopen = onopen;
    },
    EventSource_onopen_Get: function(ctx) {
      return spasm.objects[ctx].onopen;
    },
    EventSource_onmessage_Set: function(ctx, onmessage) {
      spasm.objects[ctx].onmessage = onmessage;
    },
    EventSource_onmessage_Get: function(ctx) {
      return spasm.objects[ctx].onmessage;
    },
    EventSource_onerror_Set: function(ctx, onerror) {
      spasm.objects[ctx].onerror = onerror;
    },
    EventSource_onerror_Get: function(ctx) {
      return spasm.objects[ctx].onerror;
    },
    EventSource_close: function(ctx) {
      spasm.objects[ctx].close();
    },
    EventSourceInit_withCredentials_Set: function(ctx, withCredentials) {
      spasm.objects[ctx].withCredentials = withCredentials;
    },
    EventSourceInit_withCredentials_Get: function(ctx) {
      return spasm.objects[ctx].withCredentials;
    },
    External_AddSearchProvider: function(ctx) {
      spasm.objects[ctx].AddSearchProvider();
    },
    External_IsSearchProviderInstalled: function(ctx) {
      spasm.objects[ctx].IsSearchProviderInstalled();
    },
    FocusOptions_preventScroll_Set: function(ctx, preventScroll) {
      spasm.objects[ctx].preventScroll = preventScroll;
    },
    FocusOptions_preventScroll_Get: function(ctx) {
      return spasm.objects[ctx].preventScroll;
    },
    HTMLAllCollection_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    HTMLAllCollection_getter__uint: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx][index]);
    },
    HTMLAllCollection_namedItem_getter: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode.optional_union2_HTMLCollection_Element(rawResult, spasm.objects[ctx].namedItem(spasm.decode_string(nameLen, namePtr)));
    },
    HTMLAllCollection_item: function(rawResult, ctx, nameOrIndexLen, nameOrIndexPtr) {
      spasm.encode.optional_union2_HTMLCollection_Element(rawResult, spasm.objects[ctx].item(spasm.decode_string(nameOrIndexLen, nameOrIndexPtr)));
    },
    HTMLAnchorElement_target_Set: function(ctx, targetLen, targetPtr) {
      spasm.objects[ctx].target = spasm.decode_string(targetLen, targetPtr);
    },
    HTMLAnchorElement_target_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].target);
    },
    HTMLAnchorElement_download_Set: function(ctx, downloadLen, downloadPtr) {
      spasm.objects[ctx].download = spasm.decode_string(downloadLen, downloadPtr);
    },
    HTMLAnchorElement_download_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].download);
    },
    HTMLAnchorElement_ping_Set: function(ctx, pingLen, pingPtr) {
      spasm.objects[ctx].ping = spasm.decode_string(pingLen, pingPtr);
    },
    HTMLAnchorElement_ping_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].ping);
    },
    HTMLAnchorElement_rel_Set: function(ctx, relLen, relPtr) {
      spasm.objects[ctx].rel = spasm.decode_string(relLen, relPtr);
    },
    HTMLAnchorElement_rel_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].rel);
    },
    HTMLAnchorElement_relList_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].relList);
    },
    HTMLAnchorElement_hreflang_Set: function(ctx, hreflangLen, hreflangPtr) {
      spasm.objects[ctx].hreflang = spasm.decode_string(hreflangLen, hreflangPtr);
    },
    HTMLAnchorElement_hreflang_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].hreflang);
    },
    HTMLAnchorElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    HTMLAnchorElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLAnchorElement_text_Set: function(ctx, textLen, textPtr) {
      spasm.objects[ctx].text = spasm.decode_string(textLen, textPtr);
    },
    HTMLAnchorElement_text_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].text);
    },
    HTMLAnchorElement_referrerPolicy_Set: function(ctx, referrerPolicyLen, referrerPolicyPtr) {
      spasm.objects[ctx].referrerPolicy = spasm.decode_string(referrerPolicyLen, referrerPolicyPtr);
    },
    HTMLAnchorElement_referrerPolicy_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].referrerPolicy);
    },
    HTMLAnchorElement_coords_Set: function(ctx, coordsLen, coordsPtr) {
      spasm.objects[ctx].coords = spasm.decode_string(coordsLen, coordsPtr);
    },
    HTMLAnchorElement_coords_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].coords);
    },
    HTMLAnchorElement_charset_Set: function(ctx, charsetLen, charsetPtr) {
      spasm.objects[ctx].charset = spasm.decode_string(charsetLen, charsetPtr);
    },
    HTMLAnchorElement_charset_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].charset);
    },
    HTMLAnchorElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLAnchorElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLAnchorElement_rev_Set: function(ctx, revLen, revPtr) {
      spasm.objects[ctx].rev = spasm.decode_string(revLen, revPtr);
    },
    HTMLAnchorElement_rev_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].rev);
    },
    HTMLAnchorElement_shape_Set: function(ctx, shapeLen, shapePtr) {
      spasm.objects[ctx].shape = spasm.decode_string(shapeLen, shapePtr);
    },
    HTMLAnchorElement_shape_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].shape);
    },
    HTMLHyperlinkElementUtils_href_Set: function(ctx, hrefLen, hrefPtr) {
      spasm.objects[ctx].href = spasm.decode_string(hrefLen, hrefPtr);
    },
    HTMLHyperlinkElementUtils_href_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].href);
    },
    HTMLHyperlinkElementUtils_origin_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].origin);
    },
    HTMLAreaElement_alt_Set: function(ctx, altLen, altPtr) {
      spasm.objects[ctx].alt = spasm.decode_string(altLen, altPtr);
    },
    HTMLAreaElement_alt_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].alt);
    },
    HTMLAreaElement_coords_Set: function(ctx, coordsLen, coordsPtr) {
      spasm.objects[ctx].coords = spasm.decode_string(coordsLen, coordsPtr);
    },
    HTMLAreaElement_coords_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].coords);
    },
    HTMLAreaElement_shape_Set: function(ctx, shapeLen, shapePtr) {
      spasm.objects[ctx].shape = spasm.decode_string(shapeLen, shapePtr);
    },
    HTMLAreaElement_shape_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].shape);
    },
    HTMLAreaElement_target_Set: function(ctx, targetLen, targetPtr) {
      spasm.objects[ctx].target = spasm.decode_string(targetLen, targetPtr);
    },
    HTMLAreaElement_target_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].target);
    },
    HTMLAreaElement_download_Set: function(ctx, downloadLen, downloadPtr) {
      spasm.objects[ctx].download = spasm.decode_string(downloadLen, downloadPtr);
    },
    HTMLAreaElement_download_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].download);
    },
    HTMLAreaElement_ping_Set: function(ctx, pingLen, pingPtr) {
      spasm.objects[ctx].ping = spasm.decode_string(pingLen, pingPtr);
    },
    HTMLAreaElement_ping_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].ping);
    },
    HTMLAreaElement_rel_Set: function(ctx, relLen, relPtr) {
      spasm.objects[ctx].rel = spasm.decode_string(relLen, relPtr);
    },
    HTMLAreaElement_rel_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].rel);
    },
    HTMLAreaElement_relList_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].relList);
    },
    HTMLAreaElement_referrerPolicy_Set: function(ctx, referrerPolicyLen, referrerPolicyPtr) {
      spasm.objects[ctx].referrerPolicy = spasm.decode_string(referrerPolicyLen, referrerPolicyPtr);
    },
    HTMLAreaElement_referrerPolicy_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].referrerPolicy);
    },
    HTMLAreaElement_noHref_Set: function(ctx, noHref) {
      spasm.objects[ctx].noHref = noHref;
    },
    HTMLAreaElement_noHref_Get: function(ctx) {
      return spasm.objects[ctx].noHref;
    },
    HTMLHyperlinkElementUtils_href_Set: function(ctx, hrefLen, hrefPtr) {
      spasm.objects[ctx].href = spasm.decode_string(hrefLen, hrefPtr);
    },
    HTMLHyperlinkElementUtils_href_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].href);
    },
    HTMLHyperlinkElementUtils_origin_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].origin);
    },
    HTMLBRElement_clear_Set: function(ctx, clearLen, clearPtr) {
      spasm.objects[ctx].clear = spasm.decode_string(clearLen, clearPtr);
    },
    HTMLBRElement_clear_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].clear);
    },
    HTMLBaseElement_href_Set: function(ctx, hrefLen, hrefPtr) {
      spasm.objects[ctx].href = spasm.decode_string(hrefLen, hrefPtr);
    },
    HTMLBaseElement_href_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].href);
    },
    HTMLBaseElement_target_Set: function(ctx, targetLen, targetPtr) {
      spasm.objects[ctx].target = spasm.decode_string(targetLen, targetPtr);
    },
    HTMLBaseElement_target_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].target);
    },
    HTMLBodyElement_text_Set: function(ctx, textLen, textPtr) {
      spasm.objects[ctx].text = spasm.decode_string(textLen, textPtr);
    },
    HTMLBodyElement_text_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].text);
    },
    HTMLBodyElement_link_Set: function(ctx, linkLen, linkPtr) {
      spasm.objects[ctx].link = spasm.decode_string(linkLen, linkPtr);
    },
    HTMLBodyElement_link_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].link);
    },
    HTMLBodyElement_vLink_Set: function(ctx, vLinkLen, vLinkPtr) {
      spasm.objects[ctx].vLink = spasm.decode_string(vLinkLen, vLinkPtr);
    },
    HTMLBodyElement_vLink_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].vLink);
    },
    HTMLBodyElement_aLink_Set: function(ctx, aLinkLen, aLinkPtr) {
      spasm.objects[ctx].aLink = spasm.decode_string(aLinkLen, aLinkPtr);
    },
    HTMLBodyElement_aLink_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].aLink);
    },
    HTMLBodyElement_bgColor_Set: function(ctx, bgColorLen, bgColorPtr) {
      spasm.objects[ctx].bgColor = spasm.decode_string(bgColorLen, bgColorPtr);
    },
    HTMLBodyElement_bgColor_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].bgColor);
    },
    HTMLBodyElement_background_Set: function(ctx, backgroundLen, backgroundPtr) {
      spasm.objects[ctx].background = spasm.decode_string(backgroundLen, backgroundPtr);
    },
    HTMLBodyElement_background_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].background);
    },
    HTMLBodyElement_onorientationchange_Set: function(ctx, onorientationchange) {
      spasm.objects[ctx].onorientationchange = onorientationchange;
    },
    HTMLBodyElement_onorientationchange_Get: function(ctx) {
      return spasm.objects[ctx].onorientationchange;
    },
    HTMLButtonElement_autofocus_Set: function(ctx, autofocus) {
      spasm.objects[ctx].autofocus = autofocus;
    },
    HTMLButtonElement_autofocus_Get: function(ctx) {
      return spasm.objects[ctx].autofocus;
    },
    HTMLButtonElement_disabled_Set: function(ctx, disabled) {
      spasm.objects[ctx].disabled = disabled;
    },
    HTMLButtonElement_disabled_Get: function(ctx) {
      return spasm.objects[ctx].disabled;
    },
    HTMLButtonElement_form_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].form);
    },
    HTMLButtonElement_formAction_Set: function(ctx, formActionLen, formActionPtr) {
      spasm.objects[ctx].formAction = spasm.decode_string(formActionLen, formActionPtr);
    },
    HTMLButtonElement_formAction_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].formAction);
    },
    HTMLButtonElement_formEnctype_Set: function(ctx, formEnctypeLen, formEnctypePtr) {
      spasm.objects[ctx].formEnctype = spasm.decode_string(formEnctypeLen, formEnctypePtr);
    },
    HTMLButtonElement_formEnctype_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].formEnctype);
    },
    HTMLButtonElement_formMethod_Set: function(ctx, formMethodLen, formMethodPtr) {
      spasm.objects[ctx].formMethod = spasm.decode_string(formMethodLen, formMethodPtr);
    },
    HTMLButtonElement_formMethod_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].formMethod);
    },
    HTMLButtonElement_formNoValidate_Set: function(ctx, formNoValidate) {
      spasm.objects[ctx].formNoValidate = formNoValidate;
    },
    HTMLButtonElement_formNoValidate_Get: function(ctx) {
      return spasm.objects[ctx].formNoValidate;
    },
    HTMLButtonElement_formTarget_Set: function(ctx, formTargetLen, formTargetPtr) {
      spasm.objects[ctx].formTarget = spasm.decode_string(formTargetLen, formTargetPtr);
    },
    HTMLButtonElement_formTarget_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].formTarget);
    },
    HTMLButtonElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLButtonElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLButtonElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    HTMLButtonElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLButtonElement_value_Set: function(ctx, valueLen, valuePtr) {
      spasm.objects[ctx].value = spasm.decode_string(valueLen, valuePtr);
    },
    HTMLButtonElement_value_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].value);
    },
    HTMLButtonElement_willValidate_Get: function(ctx) {
      return spasm.objects[ctx].willValidate;
    },
    HTMLButtonElement_validity_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].validity);
    },
    HTMLButtonElement_validationMessage_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].validationMessage);
    },
    HTMLButtonElement_checkValidity: function(ctx) {
      return spasm.objects[ctx].checkValidity();
    },
    HTMLButtonElement_reportValidity: function(ctx) {
      return spasm.objects[ctx].reportValidity();
    },
    HTMLButtonElement_setCustomValidity: function(ctx, errorLen, errorPtr) {
      spasm.objects[ctx].setCustomValidity(spasm.decode_string(errorLen, errorPtr));
    },
    HTMLButtonElement_labels_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].labels);
    },
    HTMLCanvasElement_width_Set: function(ctx, width) {
      spasm.objects[ctx].width = width;
    },
    HTMLCanvasElement_width_Get: function(ctx) {
      return spasm.objects[ctx].width;
    },
    HTMLCanvasElement_height_Set: function(ctx, height) {
      spasm.objects[ctx].height = height;
    },
    HTMLCanvasElement_height_Get: function(ctx) {
      return spasm.objects[ctx].height;
    },
    HTMLCanvasElement_getContext: function(rawResult, ctx, contextIdLen, contextIdPtr, options) {
      spasm.encode.optional_RenderingContext(rawResult, spasm.objects[ctx].getContext(spasm.decode_string(contextIdLen, contextIdPtr), spasm.objects[options]));
    },
    HTMLCanvasElement_toDataURL: function(rawResult, ctx, typeLen, typePtr, quality) {
      spasm.encode.string(rawResult, spasm.objects[ctx].toDataURL(spasm.decode_string(typeLen, typePtr), spasm.objects[quality]));
    },
    HTMLCanvasElement_toBlob: function(ctx, _callbackCtx, _callbackPtr, typeLen, typePtr, quality) {
      spasm.objects[ctx].toBlob((blob)=>{spasm.callback_void_Handle(_callbackCtx, _callbackPtr, spasm.encode.optional_Handle(blob))}, spasm.decode_string(typeLen, typePtr), spasm.objects[quality]);
    },
    HTMLCanvasElement_transferControlToOffscreen: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].transferControlToOffscreen());
    },
    HTMLDListElement_compact_Set: function(ctx, compact) {
      spasm.objects[ctx].compact = compact;
    },
    HTMLDListElement_compact_Get: function(ctx) {
      return spasm.objects[ctx].compact;
    },
    HTMLDataElement_value_Set: function(ctx, valueLen, valuePtr) {
      spasm.objects[ctx].value = spasm.decode_string(valueLen, valuePtr);
    },
    HTMLDataElement_value_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].value);
    },
    HTMLDataListElement_options_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].options);
    },
    HTMLDetailsElement_open_Set: function(ctx, open) {
      spasm.objects[ctx].open = open;
    },
    HTMLDetailsElement_open_Get: function(ctx) {
      return spasm.objects[ctx].open;
    },
    HTMLDialogElement_open_Set: function(ctx, open) {
      spasm.objects[ctx].open = open;
    },
    HTMLDialogElement_open_Get: function(ctx) {
      return spasm.objects[ctx].open;
    },
    HTMLDialogElement_returnValue_Set: function(ctx, returnValueLen, returnValuePtr) {
      spasm.objects[ctx].returnValue = spasm.decode_string(returnValueLen, returnValuePtr);
    },
    HTMLDialogElement_returnValue_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].returnValue);
    },
    HTMLDialogElement_show: function(ctx) {
      spasm.objects[ctx].show();
    },
    HTMLDialogElement_showModal: function(ctx) {
      spasm.objects[ctx].showModal();
    },
    HTMLDialogElement_close: function(ctx, returnValueLen, returnValuePtr) {
      spasm.objects[ctx].close(spasm.decode_string(returnValueLen, returnValuePtr));
    },
    HTMLDirectoryElement_compact_Set: function(ctx, compact) {
      spasm.objects[ctx].compact = compact;
    },
    HTMLDirectoryElement_compact_Get: function(ctx) {
      return spasm.objects[ctx].compact;
    },
    HTMLDivElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLDivElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLElement_title_Set: function(ctx, titleLen, titlePtr) {
      spasm.objects[ctx].title = spasm.decode_string(titleLen, titlePtr);
    },
    HTMLElement_title_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].title);
    },
    HTMLElement_lang_Set: function(ctx, langLen, langPtr) {
      spasm.objects[ctx].lang = spasm.decode_string(langLen, langPtr);
    },
    HTMLElement_lang_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].lang);
    },
    HTMLElement_translate_Set: function(ctx, translate) {
      spasm.objects[ctx].translate = translate;
    },
    HTMLElement_translate_Get: function(ctx) {
      return spasm.objects[ctx].translate;
    },
    HTMLElement_dir_Set: function(ctx, dirLen, dirPtr) {
      spasm.objects[ctx].dir = spasm.decode_string(dirLen, dirPtr);
    },
    HTMLElement_dir_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].dir);
    },
    HTMLElement_hidden_Set: function(ctx, hidden) {
      spasm.objects[ctx].hidden = hidden;
    },
    HTMLElement_hidden_Get: function(ctx) {
      return spasm.objects[ctx].hidden;
    },
    HTMLElement_click: function(ctx) {
      spasm.objects[ctx].click();
    },
    HTMLElement_accessKey_Set: function(ctx, accessKeyLen, accessKeyPtr) {
      spasm.objects[ctx].accessKey = spasm.decode_string(accessKeyLen, accessKeyPtr);
    },
    HTMLElement_accessKey_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].accessKey);
    },
    HTMLElement_accessKeyLabel_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].accessKeyLabel);
    },
    HTMLElement_draggable_Set: function(ctx, draggable) {
      spasm.objects[ctx].draggable = draggable;
    },
    HTMLElement_draggable_Get: function(ctx) {
      return spasm.objects[ctx].draggable;
    },
    HTMLElement_spellcheck_Set: function(ctx, spellcheck) {
      spasm.objects[ctx].spellcheck = spellcheck;
    },
    HTMLElement_spellcheck_Get: function(ctx) {
      return spasm.objects[ctx].spellcheck;
    },
    HTMLElement_autocapitalize_Set: function(ctx, autocapitalizeLen, autocapitalizePtr) {
      spasm.objects[ctx].autocapitalize = spasm.decode_string(autocapitalizeLen, autocapitalizePtr);
    },
    HTMLElement_autocapitalize_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].autocapitalize);
    },
    HTMLElement_innerText_Set: function(ctx, innerTextLen, innerTextPtr) {
      spasm.objects[ctx].innerText = spasm.decode_string(innerTextLen, innerTextPtr);
    },
    HTMLElement_innerText_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].innerText);
    },
    HTMLOrSVGElement_dataset_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].dataset);
    },
    HTMLOrSVGElement_focus: function(ctx, options) {
      spasm.objects[ctx].focus(spasm.objects[options]);
    },
    HTMLOrSVGElement_blur: function(ctx) {
      spasm.objects[ctx].blur();
    },
    ElementContentEditable_isContentEditable_Get: function(ctx) {
      return spasm.objects[ctx].isContentEditable;
    },
    GlobalEventHandlers_ongotpointercapture_Set: function(ctx, ongotpointercapture) {
      spasm.objects[ctx].ongotpointercapture = ongotpointercapture;
    },
    GlobalEventHandlers_ongotpointercapture_Get: function(ctx) {
      return spasm.objects[ctx].ongotpointercapture;
    },
    GlobalEventHandlers_onlostpointercapture_Set: function(ctx, onlostpointercapture) {
      spasm.objects[ctx].onlostpointercapture = onlostpointercapture;
    },
    GlobalEventHandlers_onlostpointercapture_Get: function(ctx) {
      return spasm.objects[ctx].onlostpointercapture;
    },
    GlobalEventHandlers_onpointerdown_Set: function(ctx, onpointerdown) {
      spasm.objects[ctx].onpointerdown = onpointerdown;
    },
    GlobalEventHandlers_onpointerdown_Get: function(ctx) {
      return spasm.objects[ctx].onpointerdown;
    },
    GlobalEventHandlers_onpointermove_Set: function(ctx, onpointermove) {
      spasm.objects[ctx].onpointermove = onpointermove;
    },
    GlobalEventHandlers_onpointermove_Get: function(ctx) {
      return spasm.objects[ctx].onpointermove;
    },
    GlobalEventHandlers_onpointerup_Set: function(ctx, onpointerup) {
      spasm.objects[ctx].onpointerup = onpointerup;
    },
    GlobalEventHandlers_onpointerup_Get: function(ctx) {
      return spasm.objects[ctx].onpointerup;
    },
    GlobalEventHandlers_onpointercancel_Set: function(ctx, onpointercancel) {
      spasm.objects[ctx].onpointercancel = onpointercancel;
    },
    GlobalEventHandlers_onpointercancel_Get: function(ctx) {
      return spasm.objects[ctx].onpointercancel;
    },
    GlobalEventHandlers_onpointerover_Set: function(ctx, onpointerover) {
      spasm.objects[ctx].onpointerover = onpointerover;
    },
    GlobalEventHandlers_onpointerover_Get: function(ctx) {
      return spasm.objects[ctx].onpointerover;
    },
    GlobalEventHandlers_onpointerout_Set: function(ctx, onpointerout) {
      spasm.objects[ctx].onpointerout = onpointerout;
    },
    GlobalEventHandlers_onpointerout_Get: function(ctx) {
      return spasm.objects[ctx].onpointerout;
    },
    GlobalEventHandlers_onpointerenter_Set: function(ctx, onpointerenter) {
      spasm.objects[ctx].onpointerenter = onpointerenter;
    },
    GlobalEventHandlers_onpointerenter_Get: function(ctx) {
      return spasm.objects[ctx].onpointerenter;
    },
    GlobalEventHandlers_onpointerleave_Set: function(ctx, onpointerleave) {
      spasm.objects[ctx].onpointerleave = onpointerleave;
    },
    GlobalEventHandlers_onpointerleave_Get: function(ctx) {
      return spasm.objects[ctx].onpointerleave;
    },
    GlobalEventHandlers_ontouchstart_Set: function(ctx, ontouchstart) {
      spasm.objects[ctx].ontouchstart = ontouchstart;
    },
    GlobalEventHandlers_ontouchstart_Get: function(ctx) {
      return spasm.objects[ctx].ontouchstart;
    },
    GlobalEventHandlers_ontouchend_Set: function(ctx, ontouchend) {
      spasm.objects[ctx].ontouchend = ontouchend;
    },
    GlobalEventHandlers_ontouchend_Get: function(ctx) {
      return spasm.objects[ctx].ontouchend;
    },
    GlobalEventHandlers_ontouchmove_Set: function(ctx, ontouchmove) {
      spasm.objects[ctx].ontouchmove = ontouchmove;
    },
    GlobalEventHandlers_ontouchmove_Get: function(ctx) {
      return spasm.objects[ctx].ontouchmove;
    },
    GlobalEventHandlers_ontouchcancel_Set: function(ctx, ontouchcancel) {
      spasm.objects[ctx].ontouchcancel = ontouchcancel;
    },
    GlobalEventHandlers_ontouchcancel_Get: function(ctx) {
      return spasm.objects[ctx].ontouchcancel;
    },
    HTMLEmbedElement_src_Set: function(ctx, srcLen, srcPtr) {
      spasm.objects[ctx].src = spasm.decode_string(srcLen, srcPtr);
    },
    HTMLEmbedElement_src_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].src);
    },
    HTMLEmbedElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    HTMLEmbedElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLEmbedElement_width_Set: function(ctx, widthLen, widthPtr) {
      spasm.objects[ctx].width = spasm.decode_string(widthLen, widthPtr);
    },
    HTMLEmbedElement_width_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].width);
    },
    HTMLEmbedElement_height_Set: function(ctx, heightLen, heightPtr) {
      spasm.objects[ctx].height = spasm.decode_string(heightLen, heightPtr);
    },
    HTMLEmbedElement_height_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].height);
    },
    HTMLEmbedElement_getSVGDocument: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getSVGDocument());
    },
    HTMLEmbedElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLEmbedElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLEmbedElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLEmbedElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLFieldSetElement_disabled_Set: function(ctx, disabled) {
      spasm.objects[ctx].disabled = disabled;
    },
    HTMLFieldSetElement_disabled_Get: function(ctx) {
      return spasm.objects[ctx].disabled;
    },
    HTMLFieldSetElement_form_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].form);
    },
    HTMLFieldSetElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLFieldSetElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLFieldSetElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLFieldSetElement_elements_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].elements);
    },
    HTMLFieldSetElement_willValidate_Get: function(ctx) {
      return spasm.objects[ctx].willValidate;
    },
    HTMLFieldSetElement_validity_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].validity);
    },
    HTMLFieldSetElement_validationMessage_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].validationMessage);
    },
    HTMLFieldSetElement_checkValidity: function(ctx) {
      return spasm.objects[ctx].checkValidity();
    },
    HTMLFieldSetElement_reportValidity: function(ctx) {
      return spasm.objects[ctx].reportValidity();
    },
    HTMLFieldSetElement_setCustomValidity: function(ctx, errorLen, errorPtr) {
      spasm.objects[ctx].setCustomValidity(spasm.decode_string(errorLen, errorPtr));
    },
    HTMLFontElement_color_Set: function(ctx, colorLen, colorPtr) {
      spasm.objects[ctx].color = spasm.decode_string(colorLen, colorPtr);
    },
    HTMLFontElement_color_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].color);
    },
    HTMLFontElement_face_Set: function(ctx, faceLen, facePtr) {
      spasm.objects[ctx].face = spasm.decode_string(faceLen, facePtr);
    },
    HTMLFontElement_face_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].face);
    },
    HTMLFontElement_size_Set: function(ctx, sizeLen, sizePtr) {
      spasm.objects[ctx].size = spasm.decode_string(sizeLen, sizePtr);
    },
    HTMLFontElement_size_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].size);
    },
    HTMLFormControlsCollection_namedItem_getter: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode.optional_union2_RadioNodeList_Element(rawResult, spasm.objects[ctx].namedItem(spasm.decode_string(nameLen, namePtr)));
    },
    HTMLFormElement_acceptCharset_Set: function(ctx, acceptCharsetLen, acceptCharsetPtr) {
      spasm.objects[ctx].acceptCharset = spasm.decode_string(acceptCharsetLen, acceptCharsetPtr);
    },
    HTMLFormElement_acceptCharset_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].acceptCharset);
    },
    HTMLFormElement_action_Set: function(ctx, actionLen, actionPtr) {
      spasm.objects[ctx].action = spasm.decode_string(actionLen, actionPtr);
    },
    HTMLFormElement_action_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].action);
    },
    HTMLFormElement_autocomplete_Set: function(ctx, autocompleteLen, autocompletePtr) {
      spasm.objects[ctx].autocomplete = spasm.decode_string(autocompleteLen, autocompletePtr);
    },
    HTMLFormElement_autocomplete_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].autocomplete);
    },
    HTMLFormElement_enctype_Set: function(ctx, enctypeLen, enctypePtr) {
      spasm.objects[ctx].enctype = spasm.decode_string(enctypeLen, enctypePtr);
    },
    HTMLFormElement_enctype_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].enctype);
    },
    HTMLFormElement_encoding_Set: function(ctx, encodingLen, encodingPtr) {
      spasm.objects[ctx].encoding = spasm.decode_string(encodingLen, encodingPtr);
    },
    HTMLFormElement_encoding_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].encoding);
    },
    HTMLFormElement_method_Set: function(ctx, methodLen, methodPtr) {
      spasm.objects[ctx].method = spasm.decode_string(methodLen, methodPtr);
    },
    HTMLFormElement_method_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].method);
    },
    HTMLFormElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLFormElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLFormElement_noValidate_Set: function(ctx, noValidate) {
      spasm.objects[ctx].noValidate = noValidate;
    },
    HTMLFormElement_noValidate_Get: function(ctx) {
      return spasm.objects[ctx].noValidate;
    },
    HTMLFormElement_target_Set: function(ctx, targetLen, targetPtr) {
      spasm.objects[ctx].target = spasm.decode_string(targetLen, targetPtr);
    },
    HTMLFormElement_target_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].target);
    },
    HTMLFormElement_elements_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].elements);
    },
    HTMLFormElement_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    HTMLFormElement_getter__uint: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx][index]);
    },
    HTMLFormElement_getter__string: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode.union2_RadioNodeList_Element(rawResult, spasm.objects[ctx][spasm.decode_string(nameLen, namePtr)]);
    },
    HTMLFormElement_submit: function(ctx) {
      spasm.objects[ctx].submit();
    },
    HTMLFormElement_reset: function(ctx) {
      spasm.objects[ctx].reset();
    },
    HTMLFormElement_checkValidity: function(ctx) {
      return spasm.objects[ctx].checkValidity();
    },
    HTMLFormElement_reportValidity: function(ctx) {
      return spasm.objects[ctx].reportValidity();
    },
    HTMLFrameElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLFrameElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLFrameElement_scrolling_Set: function(ctx, scrollingLen, scrollingPtr) {
      spasm.objects[ctx].scrolling = spasm.decode_string(scrollingLen, scrollingPtr);
    },
    HTMLFrameElement_scrolling_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].scrolling);
    },
    HTMLFrameElement_src_Set: function(ctx, srcLen, srcPtr) {
      spasm.objects[ctx].src = spasm.decode_string(srcLen, srcPtr);
    },
    HTMLFrameElement_src_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].src);
    },
    HTMLFrameElement_frameBorder_Set: function(ctx, frameBorderLen, frameBorderPtr) {
      spasm.objects[ctx].frameBorder = spasm.decode_string(frameBorderLen, frameBorderPtr);
    },
    HTMLFrameElement_frameBorder_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].frameBorder);
    },
    HTMLFrameElement_longDesc_Set: function(ctx, longDescLen, longDescPtr) {
      spasm.objects[ctx].longDesc = spasm.decode_string(longDescLen, longDescPtr);
    },
    HTMLFrameElement_longDesc_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].longDesc);
    },
    HTMLFrameElement_noResize_Set: function(ctx, noResize) {
      spasm.objects[ctx].noResize = noResize;
    },
    HTMLFrameElement_noResize_Get: function(ctx) {
      return spasm.objects[ctx].noResize;
    },
    HTMLFrameElement_contentDocument_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].contentDocument);
    },
    HTMLFrameElement_contentWindow_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].contentWindow);
    },
    HTMLFrameElement_marginHeight_Set: function(ctx, marginHeightLen, marginHeightPtr) {
      spasm.objects[ctx].marginHeight = spasm.decode_string(marginHeightLen, marginHeightPtr);
    },
    HTMLFrameElement_marginHeight_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].marginHeight);
    },
    HTMLFrameElement_marginWidth_Set: function(ctx, marginWidthLen, marginWidthPtr) {
      spasm.objects[ctx].marginWidth = spasm.decode_string(marginWidthLen, marginWidthPtr);
    },
    HTMLFrameElement_marginWidth_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].marginWidth);
    },
    HTMLFrameSetElement_cols_Set: function(ctx, colsLen, colsPtr) {
      spasm.objects[ctx].cols = spasm.decode_string(colsLen, colsPtr);
    },
    HTMLFrameSetElement_cols_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].cols);
    },
    HTMLFrameSetElement_rows_Set: function(ctx, rowsLen, rowsPtr) {
      spasm.objects[ctx].rows = spasm.decode_string(rowsLen, rowsPtr);
    },
    HTMLFrameSetElement_rows_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].rows);
    },
    HTMLHRElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLHRElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLHRElement_color_Set: function(ctx, colorLen, colorPtr) {
      spasm.objects[ctx].color = spasm.decode_string(colorLen, colorPtr);
    },
    HTMLHRElement_color_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].color);
    },
    HTMLHRElement_noShade_Set: function(ctx, noShade) {
      spasm.objects[ctx].noShade = noShade;
    },
    HTMLHRElement_noShade_Get: function(ctx) {
      return spasm.objects[ctx].noShade;
    },
    HTMLHRElement_size_Set: function(ctx, sizeLen, sizePtr) {
      spasm.objects[ctx].size = spasm.decode_string(sizeLen, sizePtr);
    },
    HTMLHRElement_size_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].size);
    },
    HTMLHRElement_width_Set: function(ctx, widthLen, widthPtr) {
      spasm.objects[ctx].width = spasm.decode_string(widthLen, widthPtr);
    },
    HTMLHRElement_width_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].width);
    },
    HTMLHeadingElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLHeadingElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLHtmlElement_version_Set: function(ctx, versionLen, versionPtr) {
      spasm.objects[ctx].version = spasm.decode_string(versionLen, versionPtr);
    },
    HTMLHtmlElement_version_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].version);
    },
    HTMLIFrameElement_src_Set: function(ctx, srcLen, srcPtr) {
      spasm.objects[ctx].src = spasm.decode_string(srcLen, srcPtr);
    },
    HTMLIFrameElement_src_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].src);
    },
    HTMLIFrameElement_srcdoc_Set: function(ctx, srcdocLen, srcdocPtr) {
      spasm.objects[ctx].srcdoc = spasm.decode_string(srcdocLen, srcdocPtr);
    },
    HTMLIFrameElement_srcdoc_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].srcdoc);
    },
    HTMLIFrameElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLIFrameElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLIFrameElement_sandbox_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].sandbox);
    },
    HTMLIFrameElement_allow_Set: function(ctx, allowLen, allowPtr) {
      spasm.objects[ctx].allow = spasm.decode_string(allowLen, allowPtr);
    },
    HTMLIFrameElement_allow_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].allow);
    },
    HTMLIFrameElement_allowFullscreen_Set: function(ctx, allowFullscreen) {
      spasm.objects[ctx].allowFullscreen = allowFullscreen;
    },
    HTMLIFrameElement_allowFullscreen_Get: function(ctx) {
      return spasm.objects[ctx].allowFullscreen;
    },
    HTMLIFrameElement_allowPaymentRequest_Set: function(ctx, allowPaymentRequest) {
      spasm.objects[ctx].allowPaymentRequest = allowPaymentRequest;
    },
    HTMLIFrameElement_allowPaymentRequest_Get: function(ctx) {
      return spasm.objects[ctx].allowPaymentRequest;
    },
    HTMLIFrameElement_width_Set: function(ctx, widthLen, widthPtr) {
      spasm.objects[ctx].width = spasm.decode_string(widthLen, widthPtr);
    },
    HTMLIFrameElement_width_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].width);
    },
    HTMLIFrameElement_height_Set: function(ctx, heightLen, heightPtr) {
      spasm.objects[ctx].height = spasm.decode_string(heightLen, heightPtr);
    },
    HTMLIFrameElement_height_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].height);
    },
    HTMLIFrameElement_referrerPolicy_Set: function(ctx, referrerPolicyLen, referrerPolicyPtr) {
      spasm.objects[ctx].referrerPolicy = spasm.decode_string(referrerPolicyLen, referrerPolicyPtr);
    },
    HTMLIFrameElement_referrerPolicy_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].referrerPolicy);
    },
    HTMLIFrameElement_contentDocument_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].contentDocument);
    },
    HTMLIFrameElement_contentWindow_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].contentWindow);
    },
    HTMLIFrameElement_getSVGDocument: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getSVGDocument());
    },
    HTMLIFrameElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLIFrameElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLIFrameElement_scrolling_Set: function(ctx, scrollingLen, scrollingPtr) {
      spasm.objects[ctx].scrolling = spasm.decode_string(scrollingLen, scrollingPtr);
    },
    HTMLIFrameElement_scrolling_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].scrolling);
    },
    HTMLIFrameElement_frameBorder_Set: function(ctx, frameBorderLen, frameBorderPtr) {
      spasm.objects[ctx].frameBorder = spasm.decode_string(frameBorderLen, frameBorderPtr);
    },
    HTMLIFrameElement_frameBorder_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].frameBorder);
    },
    HTMLIFrameElement_longDesc_Set: function(ctx, longDescLen, longDescPtr) {
      spasm.objects[ctx].longDesc = spasm.decode_string(longDescLen, longDescPtr);
    },
    HTMLIFrameElement_longDesc_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].longDesc);
    },
    HTMLIFrameElement_marginHeight_Set: function(ctx, marginHeightLen, marginHeightPtr) {
      spasm.objects[ctx].marginHeight = spasm.decode_string(marginHeightLen, marginHeightPtr);
    },
    HTMLIFrameElement_marginHeight_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].marginHeight);
    },
    HTMLIFrameElement_marginWidth_Set: function(ctx, marginWidthLen, marginWidthPtr) {
      spasm.objects[ctx].marginWidth = spasm.decode_string(marginWidthLen, marginWidthPtr);
    },
    HTMLIFrameElement_marginWidth_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].marginWidth);
    },
    HTMLImageElement_alt_Set: function(ctx, altLen, altPtr) {
      spasm.objects[ctx].alt = spasm.decode_string(altLen, altPtr);
    },
    HTMLImageElement_alt_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].alt);
    },
    HTMLImageElement_src_Set: function(ctx, srcLen, srcPtr) {
      spasm.objects[ctx].src = spasm.decode_string(srcLen, srcPtr);
    },
    HTMLImageElement_src_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].src);
    },
    HTMLImageElement_srcset_Set: function(ctx, srcsetLen, srcsetPtr) {
      spasm.objects[ctx].srcset = spasm.decode_string(srcsetLen, srcsetPtr);
    },
    HTMLImageElement_srcset_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].srcset);
    },
    HTMLImageElement_sizes_Set: function(ctx, sizesLen, sizesPtr) {
      spasm.objects[ctx].sizes = spasm.decode_string(sizesLen, sizesPtr);
    },
    HTMLImageElement_sizes_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].sizes);
    },
    HTMLImageElement_crossOrigin_Set: function(ctx, crossOriginDefined, crossOriginLen, crossOriginPtr) {
      spasm.objects[ctx].crossOrigin = crossOriginDefined ? spasm.decode_string(crossOriginLen, crossOriginPtr) : undefined;
    },
    HTMLImageElement_crossOrigin_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].crossOrigin);
    },
    HTMLImageElement_useMap_Set: function(ctx, useMapLen, useMapPtr) {
      spasm.objects[ctx].useMap = spasm.decode_string(useMapLen, useMapPtr);
    },
    HTMLImageElement_useMap_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].useMap);
    },
    HTMLImageElement_isMap_Set: function(ctx, isMap) {
      spasm.objects[ctx].isMap = isMap;
    },
    HTMLImageElement_isMap_Get: function(ctx) {
      return spasm.objects[ctx].isMap;
    },
    HTMLImageElement_width_Set: function(ctx, width) {
      spasm.objects[ctx].width = width;
    },
    HTMLImageElement_width_Get: function(ctx) {
      return spasm.objects[ctx].width;
    },
    HTMLImageElement_height_Set: function(ctx, height) {
      spasm.objects[ctx].height = height;
    },
    HTMLImageElement_height_Get: function(ctx) {
      return spasm.objects[ctx].height;
    },
    HTMLImageElement_naturalWidth_Get: function(ctx) {
      return spasm.objects[ctx].naturalWidth;
    },
    HTMLImageElement_naturalHeight_Get: function(ctx) {
      return spasm.objects[ctx].naturalHeight;
    },
    HTMLImageElement_complete_Get: function(ctx) {
      return spasm.objects[ctx].complete;
    },
    HTMLImageElement_currentSrc_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].currentSrc);
    },
    HTMLImageElement_referrerPolicy_Set: function(ctx, referrerPolicyLen, referrerPolicyPtr) {
      spasm.objects[ctx].referrerPolicy = spasm.decode_string(referrerPolicyLen, referrerPolicyPtr);
    },
    HTMLImageElement_referrerPolicy_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].referrerPolicy);
    },
    HTMLImageElement_decoding_Set: function(ctx, decodingLen, decodingPtr) {
      spasm.objects[ctx].decoding = spasm.decode_string(decodingLen, decodingPtr);
    },
    HTMLImageElement_decoding_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].decoding);
    },
    HTMLImageElement_decode: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].decode());
    },
    HTMLImageElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLImageElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLImageElement_lowsrc_Set: function(ctx, lowsrcLen, lowsrcPtr) {
      spasm.objects[ctx].lowsrc = spasm.decode_string(lowsrcLen, lowsrcPtr);
    },
    HTMLImageElement_lowsrc_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].lowsrc);
    },
    HTMLImageElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLImageElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLImageElement_hspace_Set: function(ctx, hspace) {
      spasm.objects[ctx].hspace = hspace;
    },
    HTMLImageElement_hspace_Get: function(ctx) {
      return spasm.objects[ctx].hspace;
    },
    HTMLImageElement_vspace_Set: function(ctx, vspace) {
      spasm.objects[ctx].vspace = vspace;
    },
    HTMLImageElement_vspace_Get: function(ctx) {
      return spasm.objects[ctx].vspace;
    },
    HTMLImageElement_longDesc_Set: function(ctx, longDescLen, longDescPtr) {
      spasm.objects[ctx].longDesc = spasm.decode_string(longDescLen, longDescPtr);
    },
    HTMLImageElement_longDesc_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].longDesc);
    },
    HTMLImageElement_border_Set: function(ctx, borderLen, borderPtr) {
      spasm.objects[ctx].border = spasm.decode_string(borderLen, borderPtr);
    },
    HTMLImageElement_border_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].border);
    },
    HTMLInputElement_accept_Set: function(ctx, acceptLen, acceptPtr) {
      spasm.objects[ctx].accept = spasm.decode_string(acceptLen, acceptPtr);
    },
    HTMLInputElement_accept_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].accept);
    },
    HTMLInputElement_alt_Set: function(ctx, altLen, altPtr) {
      spasm.objects[ctx].alt = spasm.decode_string(altLen, altPtr);
    },
    HTMLInputElement_alt_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].alt);
    },
    HTMLInputElement_autocomplete_Set: function(ctx, autocompleteLen, autocompletePtr) {
      spasm.objects[ctx].autocomplete = spasm.decode_string(autocompleteLen, autocompletePtr);
    },
    HTMLInputElement_autocomplete_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].autocomplete);
    },
    HTMLInputElement_autofocus_Set: function(ctx, autofocus) {
      spasm.objects[ctx].autofocus = autofocus;
    },
    HTMLInputElement_autofocus_Get: function(ctx) {
      return spasm.objects[ctx].autofocus;
    },
    HTMLInputElement_defaultChecked_Set: function(ctx, defaultChecked) {
      spasm.objects[ctx].defaultChecked = defaultChecked;
    },
    HTMLInputElement_defaultChecked_Get: function(ctx) {
      return spasm.objects[ctx].defaultChecked;
    },
    HTMLInputElement_checked_Set: function(ctx, checked) {
      spasm.objects[ctx].checked = checked;
    },
    HTMLInputElement_checked_Get: function(ctx) {
      return spasm.objects[ctx].checked;
    },
    HTMLInputElement_dirName_Set: function(ctx, dirNameLen, dirNamePtr) {
      spasm.objects[ctx].dirName = spasm.decode_string(dirNameLen, dirNamePtr);
    },
    HTMLInputElement_dirName_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].dirName);
    },
    HTMLInputElement_disabled_Set: function(ctx, disabled) {
      spasm.objects[ctx].disabled = disabled;
    },
    HTMLInputElement_disabled_Get: function(ctx) {
      return spasm.objects[ctx].disabled;
    },
    HTMLInputElement_form_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].form);
    },
    HTMLInputElement_files_Set: function(ctx, filesDefined, files) {
      spasm.objects[ctx].files = filesDefined ? spasm.objects[files] : undefined;
    },
    HTMLInputElement_files_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].files);
    },
    HTMLInputElement_formAction_Set: function(ctx, formActionLen, formActionPtr) {
      spasm.objects[ctx].formAction = spasm.decode_string(formActionLen, formActionPtr);
    },
    HTMLInputElement_formAction_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].formAction);
    },
    HTMLInputElement_formEnctype_Set: function(ctx, formEnctypeLen, formEnctypePtr) {
      spasm.objects[ctx].formEnctype = spasm.decode_string(formEnctypeLen, formEnctypePtr);
    },
    HTMLInputElement_formEnctype_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].formEnctype);
    },
    HTMLInputElement_formMethod_Set: function(ctx, formMethodLen, formMethodPtr) {
      spasm.objects[ctx].formMethod = spasm.decode_string(formMethodLen, formMethodPtr);
    },
    HTMLInputElement_formMethod_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].formMethod);
    },
    HTMLInputElement_formNoValidate_Set: function(ctx, formNoValidate) {
      spasm.objects[ctx].formNoValidate = formNoValidate;
    },
    HTMLInputElement_formNoValidate_Get: function(ctx) {
      return spasm.objects[ctx].formNoValidate;
    },
    HTMLInputElement_formTarget_Set: function(ctx, formTargetLen, formTargetPtr) {
      spasm.objects[ctx].formTarget = spasm.decode_string(formTargetLen, formTargetPtr);
    },
    HTMLInputElement_formTarget_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].formTarget);
    },
    HTMLInputElement_height_Set: function(ctx, height) {
      spasm.objects[ctx].height = height;
    },
    HTMLInputElement_height_Get: function(ctx) {
      return spasm.objects[ctx].height;
    },
    HTMLInputElement_indeterminate_Set: function(ctx, indeterminate) {
      spasm.objects[ctx].indeterminate = indeterminate;
    },
    HTMLInputElement_indeterminate_Get: function(ctx) {
      return spasm.objects[ctx].indeterminate;
    },
    HTMLInputElement_list_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].list);
    },
    HTMLInputElement_max_Set: function(ctx, maxLen, maxPtr) {
      spasm.objects[ctx].max = spasm.decode_string(maxLen, maxPtr);
    },
    HTMLInputElement_max_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].max);
    },
    HTMLInputElement_maxLength_Set: function(ctx, maxLength) {
      spasm.objects[ctx].maxLength = maxLength;
    },
    HTMLInputElement_maxLength_Get: function(ctx) {
      return spasm.objects[ctx].maxLength;
    },
    HTMLInputElement_min_Set: function(ctx, minLen, minPtr) {
      spasm.objects[ctx].min = spasm.decode_string(minLen, minPtr);
    },
    HTMLInputElement_min_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].min);
    },
    HTMLInputElement_minLength_Set: function(ctx, minLength) {
      spasm.objects[ctx].minLength = minLength;
    },
    HTMLInputElement_minLength_Get: function(ctx) {
      return spasm.objects[ctx].minLength;
    },
    HTMLInputElement_multiple_Set: function(ctx, multiple) {
      spasm.objects[ctx].multiple = multiple;
    },
    HTMLInputElement_multiple_Get: function(ctx) {
      return spasm.objects[ctx].multiple;
    },
    HTMLInputElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLInputElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLInputElement_pattern_Set: function(ctx, patternLen, patternPtr) {
      spasm.objects[ctx].pattern = spasm.decode_string(patternLen, patternPtr);
    },
    HTMLInputElement_pattern_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].pattern);
    },
    HTMLInputElement_placeholder_Set: function(ctx, placeholderLen, placeholderPtr) {
      spasm.objects[ctx].placeholder = spasm.decode_string(placeholderLen, placeholderPtr);
    },
    HTMLInputElement_placeholder_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].placeholder);
    },
    HTMLInputElement_readOnly_Set: function(ctx, readOnly) {
      spasm.objects[ctx].readOnly = readOnly;
    },
    HTMLInputElement_readOnly_Get: function(ctx) {
      return spasm.objects[ctx].readOnly;
    },
    HTMLInputElement_required_Set: function(ctx, required) {
      spasm.objects[ctx].required = required;
    },
    HTMLInputElement_required_Get: function(ctx) {
      return spasm.objects[ctx].required;
    },
    HTMLInputElement_size_Set: function(ctx, size) {
      spasm.objects[ctx].size = size;
    },
    HTMLInputElement_size_Get: function(ctx) {
      return spasm.objects[ctx].size;
    },
    HTMLInputElement_src_Set: function(ctx, srcLen, srcPtr) {
      spasm.objects[ctx].src = spasm.decode_string(srcLen, srcPtr);
    },
    HTMLInputElement_src_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].src);
    },
    HTMLInputElement_step_Set: function(ctx, stepLen, stepPtr) {
      spasm.objects[ctx].step = spasm.decode_string(stepLen, stepPtr);
    },
    HTMLInputElement_step_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].step);
    },
    HTMLInputElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    HTMLInputElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLInputElement_defaultValue_Set: function(ctx, defaultValueLen, defaultValuePtr) {
      spasm.objects[ctx].defaultValue = spasm.decode_string(defaultValueLen, defaultValuePtr);
    },
    HTMLInputElement_defaultValue_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].defaultValue);
    },
    HTMLInputElement_value_Set: function(ctx, valueLen, valuePtr) {
      spasm.objects[ctx].value = spasm.decode_string(valueLen, valuePtr);
    },
    HTMLInputElement_value_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].value);
    },
    HTMLInputElement_valueAsDate_Set: function(ctx, valueAsDateDefined, valueAsDate) {
      spasm.objects[ctx].valueAsDate = valueAsDateDefined ? spasm.objects[valueAsDate] : undefined;
    },
    HTMLInputElement_valueAsDate_Get: function(rawResult, ctx) {
      spasm.encode.object(rawResult, spasm.objects[ctx].valueAsDate);
    },
    HTMLInputElement_valueAsNumber_Set: function(ctx, valueAsNumber) {
      spasm.objects[ctx].valueAsNumber = valueAsNumber;
    },
    HTMLInputElement_valueAsNumber_Get: function(ctx) {
      return spasm.objects[ctx].valueAsNumber;
    },
    HTMLInputElement_width_Set: function(ctx, width) {
      spasm.objects[ctx].width = width;
    },
    HTMLInputElement_width_Get: function(ctx) {
      return spasm.objects[ctx].width;
    },
    HTMLInputElement_stepUp: function(ctx, n) {
      spasm.objects[ctx].stepUp(n);
    },
    HTMLInputElement_stepDown: function(ctx, n) {
      spasm.objects[ctx].stepDown(n);
    },
    HTMLInputElement_willValidate_Get: function(ctx) {
      return spasm.objects[ctx].willValidate;
    },
    HTMLInputElement_validity_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].validity);
    },
    HTMLInputElement_validationMessage_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].validationMessage);
    },
    HTMLInputElement_checkValidity: function(ctx) {
      return spasm.objects[ctx].checkValidity();
    },
    HTMLInputElement_reportValidity: function(ctx) {
      return spasm.objects[ctx].reportValidity();
    },
    HTMLInputElement_setCustomValidity: function(ctx, errorLen, errorPtr) {
      spasm.objects[ctx].setCustomValidity(spasm.decode_string(errorLen, errorPtr));
    },
    HTMLInputElement_labels_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].labels);
    },
    HTMLInputElement_select: function(ctx) {
      spasm.objects[ctx].select();
    },
    HTMLInputElement_selectionStart_Set: function(ctx, selectionStartDefined, selectionStart) {
      spasm.objects[ctx].selectionStart = selectionStartDefined ? selectionStart : undefined;
    },
    HTMLInputElement_selectionStart_Get: function(rawResult, ctx) {
      spasm.encode.optional_uint(rawResult, spasm.objects[ctx].selectionStart);
    },
    HTMLInputElement_selectionEnd_Set: function(ctx, selectionEndDefined, selectionEnd) {
      spasm.objects[ctx].selectionEnd = selectionEndDefined ? selectionEnd : undefined;
    },
    HTMLInputElement_selectionEnd_Get: function(rawResult, ctx) {
      spasm.encode.optional_uint(rawResult, spasm.objects[ctx].selectionEnd);
    },
    HTMLInputElement_selectionDirection_Set: function(ctx, selectionDirectionDefined, selectionDirectionLen, selectionDirectionPtr) {
      spasm.objects[ctx].selectionDirection = selectionDirectionDefined ? spasm.decode_string(selectionDirectionLen, selectionDirectionPtr) : undefined;
    },
    HTMLInputElement_selectionDirection_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].selectionDirection);
    },
    HTMLInputElement_setRangeText__string: function(ctx, replacementLen, replacementPtr) {
      spasm.objects[ctx].setRangeText(spasm.decode_string(replacementLen, replacementPtr));
    },
    HTMLInputElement_setRangeText__string_uint_uint_SelectionMode: function(ctx, replacementLen, replacementPtr, start, end, selectionMode) {
      spasm.objects[ctx].setRangeText(spasm.decode_string(replacementLen, replacementPtr), start, end, spasm.decode_SelectionMode(selectionMode));
    },
    HTMLInputElement_setSelectionRange: function(ctx, start, end, directionLen, directionPtr) {
      spasm.objects[ctx].setSelectionRange(start, end, spasm.decode_string(directionLen, directionPtr));
    },
    HTMLInputElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLInputElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLInputElement_useMap_Set: function(ctx, useMapLen, useMapPtr) {
      spasm.objects[ctx].useMap = spasm.decode_string(useMapLen, useMapPtr);
    },
    HTMLInputElement_useMap_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].useMap);
    },
    HTMLLIElement_value_Set: function(ctx, value) {
      spasm.objects[ctx].value = value;
    },
    HTMLLIElement_value_Get: function(ctx) {
      return spasm.objects[ctx].value;
    },
    HTMLLIElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    HTMLLIElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLLabelElement_form_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].form);
    },
    HTMLLabelElement_htmlFor_Set: function(ctx, htmlForLen, htmlForPtr) {
      spasm.objects[ctx].htmlFor = spasm.decode_string(htmlForLen, htmlForPtr);
    },
    HTMLLabelElement_htmlFor_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].htmlFor);
    },
    HTMLLabelElement_control_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].control);
    },
    HTMLLegendElement_form_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].form);
    },
    HTMLLegendElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLLegendElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLLinkElement_href_Set: function(ctx, hrefLen, hrefPtr) {
      spasm.objects[ctx].href = spasm.decode_string(hrefLen, hrefPtr);
    },
    HTMLLinkElement_href_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].href);
    },
    HTMLLinkElement_crossOrigin_Set: function(ctx, crossOriginDefined, crossOriginLen, crossOriginPtr) {
      spasm.objects[ctx].crossOrigin = crossOriginDefined ? spasm.decode_string(crossOriginLen, crossOriginPtr) : undefined;
    },
    HTMLLinkElement_crossOrigin_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].crossOrigin);
    },
    HTMLLinkElement_rel_Set: function(ctx, relLen, relPtr) {
      spasm.objects[ctx].rel = spasm.decode_string(relLen, relPtr);
    },
    HTMLLinkElement_rel_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].rel);
    },
    HTMLLinkElement_as_Set: function(ctx, asLen, asPtr) {
      spasm.objects[ctx].as = spasm.decode_string(asLen, asPtr);
    },
    HTMLLinkElement_as_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].as);
    },
    HTMLLinkElement_relList_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].relList);
    },
    HTMLLinkElement_media_Set: function(ctx, mediaLen, mediaPtr) {
      spasm.objects[ctx].media = spasm.decode_string(mediaLen, mediaPtr);
    },
    HTMLLinkElement_media_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].media);
    },
    HTMLLinkElement_integrity_Set: function(ctx, integrityLen, integrityPtr) {
      spasm.objects[ctx].integrity = spasm.decode_string(integrityLen, integrityPtr);
    },
    HTMLLinkElement_integrity_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].integrity);
    },
    HTMLLinkElement_hreflang_Set: function(ctx, hreflangLen, hreflangPtr) {
      spasm.objects[ctx].hreflang = spasm.decode_string(hreflangLen, hreflangPtr);
    },
    HTMLLinkElement_hreflang_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].hreflang);
    },
    HTMLLinkElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    HTMLLinkElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLLinkElement_sizes_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].sizes);
    },
    HTMLLinkElement_referrerPolicy_Set: function(ctx, referrerPolicyLen, referrerPolicyPtr) {
      spasm.objects[ctx].referrerPolicy = spasm.decode_string(referrerPolicyLen, referrerPolicyPtr);
    },
    HTMLLinkElement_referrerPolicy_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].referrerPolicy);
    },
    HTMLLinkElement_charset_Set: function(ctx, charsetLen, charsetPtr) {
      spasm.objects[ctx].charset = spasm.decode_string(charsetLen, charsetPtr);
    },
    HTMLLinkElement_charset_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].charset);
    },
    HTMLLinkElement_rev_Set: function(ctx, revLen, revPtr) {
      spasm.objects[ctx].rev = spasm.decode_string(revLen, revPtr);
    },
    HTMLLinkElement_rev_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].rev);
    },
    HTMLLinkElement_target_Set: function(ctx, targetLen, targetPtr) {
      spasm.objects[ctx].target = spasm.decode_string(targetLen, targetPtr);
    },
    HTMLLinkElement_target_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].target);
    },
    LinkStyle_sheet_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].sheet);
    },
    HTMLMapElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLMapElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLMapElement_areas_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].areas);
    },
    HTMLMarqueeElement_behavior_Set: function(ctx, behaviorLen, behaviorPtr) {
      spasm.objects[ctx].behavior = spasm.decode_string(behaviorLen, behaviorPtr);
    },
    HTMLMarqueeElement_behavior_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].behavior);
    },
    HTMLMarqueeElement_bgColor_Set: function(ctx, bgColorLen, bgColorPtr) {
      spasm.objects[ctx].bgColor = spasm.decode_string(bgColorLen, bgColorPtr);
    },
    HTMLMarqueeElement_bgColor_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].bgColor);
    },
    HTMLMarqueeElement_direction_Set: function(ctx, directionLen, directionPtr) {
      spasm.objects[ctx].direction = spasm.decode_string(directionLen, directionPtr);
    },
    HTMLMarqueeElement_direction_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].direction);
    },
    HTMLMarqueeElement_height_Set: function(ctx, heightLen, heightPtr) {
      spasm.objects[ctx].height = spasm.decode_string(heightLen, heightPtr);
    },
    HTMLMarqueeElement_height_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].height);
    },
    HTMLMarqueeElement_hspace_Set: function(ctx, hspace) {
      spasm.objects[ctx].hspace = hspace;
    },
    HTMLMarqueeElement_hspace_Get: function(ctx) {
      return spasm.objects[ctx].hspace;
    },
    HTMLMarqueeElement_loop_Set: function(ctx, loop) {
      spasm.objects[ctx].loop = loop;
    },
    HTMLMarqueeElement_loop_Get: function(ctx) {
      return spasm.objects[ctx].loop;
    },
    HTMLMarqueeElement_scrollAmount_Set: function(ctx, scrollAmount) {
      spasm.objects[ctx].scrollAmount = scrollAmount;
    },
    HTMLMarqueeElement_scrollAmount_Get: function(ctx) {
      return spasm.objects[ctx].scrollAmount;
    },
    HTMLMarqueeElement_scrollDelay_Set: function(ctx, scrollDelay) {
      spasm.objects[ctx].scrollDelay = scrollDelay;
    },
    HTMLMarqueeElement_scrollDelay_Get: function(ctx) {
      return spasm.objects[ctx].scrollDelay;
    },
    HTMLMarqueeElement_trueSpeed_Set: function(ctx, trueSpeed) {
      spasm.objects[ctx].trueSpeed = trueSpeed;
    },
    HTMLMarqueeElement_trueSpeed_Get: function(ctx) {
      return spasm.objects[ctx].trueSpeed;
    },
    HTMLMarqueeElement_vspace_Set: function(ctx, vspace) {
      spasm.objects[ctx].vspace = vspace;
    },
    HTMLMarqueeElement_vspace_Get: function(ctx) {
      return spasm.objects[ctx].vspace;
    },
    HTMLMarqueeElement_width_Set: function(ctx, widthLen, widthPtr) {
      spasm.objects[ctx].width = spasm.decode_string(widthLen, widthPtr);
    },
    HTMLMarqueeElement_width_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].width);
    },
    HTMLMarqueeElement_onbounce_Set: function(ctx, onbounce) {
      spasm.objects[ctx].onbounce = onbounce;
    },
    HTMLMarqueeElement_onbounce_Get: function(ctx) {
      return spasm.objects[ctx].onbounce;
    },
    HTMLMarqueeElement_onfinish_Set: function(ctx, onfinish) {
      spasm.objects[ctx].onfinish = onfinish;
    },
    HTMLMarqueeElement_onfinish_Get: function(ctx) {
      return spasm.objects[ctx].onfinish;
    },
    HTMLMarqueeElement_onstart_Set: function(ctx, onstart) {
      spasm.objects[ctx].onstart = onstart;
    },
    HTMLMarqueeElement_onstart_Get: function(ctx) {
      return spasm.objects[ctx].onstart;
    },
    HTMLMarqueeElement_start: function(ctx) {
      spasm.objects[ctx].start();
    },
    HTMLMarqueeElement_stop: function(ctx) {
      spasm.objects[ctx].stop();
    },
    HTMLMediaElement_error_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].error);
    },
    HTMLMediaElement_src_Set: function(ctx, srcLen, srcPtr) {
      spasm.objects[ctx].src = spasm.decode_string(srcLen, srcPtr);
    },
    HTMLMediaElement_src_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].src);
    },
    HTMLMediaElement_srcObject_Set: function(ctx, srcObjectDefined, srcObject) {
      spasm.objects[ctx].srcObject = srcObjectDefined ? spasm.decode_MediaProvider(srcObject) : undefined;
    },
    HTMLMediaElement_srcObject_Get: function(rawResult, ctx) {
      spasm.encode.optional_MediaProvider(rawResult, spasm.objects[ctx].srcObject);
    },
    HTMLMediaElement_currentSrc_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].currentSrc);
    },
    HTMLMediaElement_crossOrigin_Set: function(ctx, crossOriginDefined, crossOriginLen, crossOriginPtr) {
      spasm.objects[ctx].crossOrigin = crossOriginDefined ? spasm.decode_string(crossOriginLen, crossOriginPtr) : undefined;
    },
    HTMLMediaElement_crossOrigin_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].crossOrigin);
    },
    HTMLMediaElement_networkState_Get: function(ctx) {
      return spasm.objects[ctx].networkState;
    },
    HTMLMediaElement_preload_Set: function(ctx, preloadLen, preloadPtr) {
      spasm.objects[ctx].preload = spasm.decode_string(preloadLen, preloadPtr);
    },
    HTMLMediaElement_preload_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].preload);
    },
    HTMLMediaElement_buffered_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].buffered);
    },
    HTMLMediaElement_load: function(ctx) {
      spasm.objects[ctx].load();
    },
    HTMLMediaElement_canPlayType: function(ctx, typeLen, typePtr) {
      return spasm.encode.CanPlayTypeResult(spasm.objects[ctx].canPlayType(spasm.decode_string(typeLen, typePtr)));
    },
    HTMLMediaElement_readyState_Get: function(ctx) {
      return spasm.objects[ctx].readyState;
    },
    HTMLMediaElement_seeking_Get: function(ctx) {
      return spasm.objects[ctx].seeking;
    },
    HTMLMediaElement_currentTime_Set: function(ctx, currentTime) {
      spasm.objects[ctx].currentTime = currentTime;
    },
    HTMLMediaElement_currentTime_Get: function(ctx) {
      return spasm.objects[ctx].currentTime;
    },
    HTMLMediaElement_fastSeek: function(ctx, time) {
      spasm.objects[ctx].fastSeek(time);
    },
    HTMLMediaElement_duration_Get: function(ctx) {
      return spasm.objects[ctx].duration;
    },
    HTMLMediaElement_getStartDate: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getStartDate());
    },
    HTMLMediaElement_paused_Get: function(ctx) {
      return spasm.objects[ctx].paused;
    },
    HTMLMediaElement_defaultPlaybackRate_Set: function(ctx, defaultPlaybackRate) {
      spasm.objects[ctx].defaultPlaybackRate = defaultPlaybackRate;
    },
    HTMLMediaElement_defaultPlaybackRate_Get: function(ctx) {
      return spasm.objects[ctx].defaultPlaybackRate;
    },
    HTMLMediaElement_playbackRate_Set: function(ctx, playbackRate) {
      spasm.objects[ctx].playbackRate = playbackRate;
    },
    HTMLMediaElement_playbackRate_Get: function(ctx) {
      return spasm.objects[ctx].playbackRate;
    },
    HTMLMediaElement_played_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].played);
    },
    HTMLMediaElement_seekable_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].seekable);
    },
    HTMLMediaElement_ended_Get: function(ctx) {
      return spasm.objects[ctx].ended;
    },
    HTMLMediaElement_autoplay_Set: function(ctx, autoplay) {
      spasm.objects[ctx].autoplay = autoplay;
    },
    HTMLMediaElement_autoplay_Get: function(ctx) {
      return spasm.objects[ctx].autoplay;
    },
    HTMLMediaElement_loop_Set: function(ctx, loop) {
      spasm.objects[ctx].loop = loop;
    },
    HTMLMediaElement_loop_Get: function(ctx) {
      return spasm.objects[ctx].loop;
    },
    HTMLMediaElement_play: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].play());
    },
    HTMLMediaElement_pause: function(ctx) {
      spasm.objects[ctx].pause();
    },
    HTMLMediaElement_controls_Set: function(ctx, controls) {
      spasm.objects[ctx].controls = controls;
    },
    HTMLMediaElement_controls_Get: function(ctx) {
      return spasm.objects[ctx].controls;
    },
    HTMLMediaElement_volume_Set: function(ctx, volume) {
      spasm.objects[ctx].volume = volume;
    },
    HTMLMediaElement_volume_Get: function(ctx) {
      return spasm.objects[ctx].volume;
    },
    HTMLMediaElement_muted_Set: function(ctx, muted) {
      spasm.objects[ctx].muted = muted;
    },
    HTMLMediaElement_muted_Get: function(ctx) {
      return spasm.objects[ctx].muted;
    },
    HTMLMediaElement_defaultMuted_Set: function(ctx, defaultMuted) {
      spasm.objects[ctx].defaultMuted = defaultMuted;
    },
    HTMLMediaElement_defaultMuted_Get: function(ctx) {
      return spasm.objects[ctx].defaultMuted;
    },
    HTMLMediaElement_audioTracks_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].audioTracks);
    },
    HTMLMediaElement_videoTracks_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].videoTracks);
    },
    HTMLMediaElement_textTracks_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].textTracks);
    },
    HTMLMediaElement_addTextTrack: function(ctx, kind, labelLen, labelPtr, languageLen, languagePtr) {
      return spasm.addObject(spasm.objects[ctx].addTextTrack(spasm.decode_TextTrackKind(kind), spasm.decode_string(labelLen, labelPtr), spasm.decode_string(languageLen, languagePtr)));
    },
    HTMLMenuElement_compact_Set: function(ctx, compact) {
      spasm.objects[ctx].compact = compact;
    },
    HTMLMenuElement_compact_Get: function(ctx) {
      return spasm.objects[ctx].compact;
    },
    HTMLMetaElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLMetaElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLMetaElement_httpEquiv_Set: function(ctx, httpEquivLen, httpEquivPtr) {
      spasm.objects[ctx].httpEquiv = spasm.decode_string(httpEquivLen, httpEquivPtr);
    },
    HTMLMetaElement_httpEquiv_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].httpEquiv);
    },
    HTMLMetaElement_content_Set: function(ctx, contentLen, contentPtr) {
      spasm.objects[ctx].content = spasm.decode_string(contentLen, contentPtr);
    },
    HTMLMetaElement_content_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].content);
    },
    HTMLMetaElement_scheme_Set: function(ctx, schemeLen, schemePtr) {
      spasm.objects[ctx].scheme = spasm.decode_string(schemeLen, schemePtr);
    },
    HTMLMetaElement_scheme_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].scheme);
    },
    HTMLMeterElement_value_Set: function(ctx, value) {
      spasm.objects[ctx].value = value;
    },
    HTMLMeterElement_value_Get: function(ctx) {
      return spasm.objects[ctx].value;
    },
    HTMLMeterElement_min_Set: function(ctx, min) {
      spasm.objects[ctx].min = min;
    },
    HTMLMeterElement_min_Get: function(ctx) {
      return spasm.objects[ctx].min;
    },
    HTMLMeterElement_max_Set: function(ctx, max) {
      spasm.objects[ctx].max = max;
    },
    HTMLMeterElement_max_Get: function(ctx) {
      return spasm.objects[ctx].max;
    },
    HTMLMeterElement_low_Set: function(ctx, low) {
      spasm.objects[ctx].low = low;
    },
    HTMLMeterElement_low_Get: function(ctx) {
      return spasm.objects[ctx].low;
    },
    HTMLMeterElement_high_Set: function(ctx, high) {
      spasm.objects[ctx].high = high;
    },
    HTMLMeterElement_high_Get: function(ctx) {
      return spasm.objects[ctx].high;
    },
    HTMLMeterElement_optimum_Set: function(ctx, optimum) {
      spasm.objects[ctx].optimum = optimum;
    },
    HTMLMeterElement_optimum_Get: function(ctx) {
      return spasm.objects[ctx].optimum;
    },
    HTMLMeterElement_labels_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].labels);
    },
    HTMLModElement_cite_Set: function(ctx, citeLen, citePtr) {
      spasm.objects[ctx].cite = spasm.decode_string(citeLen, citePtr);
    },
    HTMLModElement_cite_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].cite);
    },
    HTMLModElement_dateTime_Set: function(ctx, dateTimeLen, dateTimePtr) {
      spasm.objects[ctx].dateTime = spasm.decode_string(dateTimeLen, dateTimePtr);
    },
    HTMLModElement_dateTime_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].dateTime);
    },
    HTMLOListElement_reversed_Set: function(ctx, reversed) {
      spasm.objects[ctx].reversed = reversed;
    },
    HTMLOListElement_reversed_Get: function(ctx) {
      return spasm.objects[ctx].reversed;
    },
    HTMLOListElement_start_Set: function(ctx, start) {
      spasm.objects[ctx].start = start;
    },
    HTMLOListElement_start_Get: function(ctx) {
      return spasm.objects[ctx].start;
    },
    HTMLOListElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    HTMLOListElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLOListElement_compact_Set: function(ctx, compact) {
      spasm.objects[ctx].compact = compact;
    },
    HTMLOListElement_compact_Get: function(ctx) {
      return spasm.objects[ctx].compact;
    },
    HTMLObjectElement_data_Set: function(ctx, dataLen, dataPtr) {
      spasm.objects[ctx].data = spasm.decode_string(dataLen, dataPtr);
    },
    HTMLObjectElement_data_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].data);
    },
    HTMLObjectElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    HTMLObjectElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLObjectElement_typeMustMatch_Set: function(ctx, typeMustMatch) {
      spasm.objects[ctx].typeMustMatch = typeMustMatch;
    },
    HTMLObjectElement_typeMustMatch_Get: function(ctx) {
      return spasm.objects[ctx].typeMustMatch;
    },
    HTMLObjectElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLObjectElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLObjectElement_useMap_Set: function(ctx, useMapLen, useMapPtr) {
      spasm.objects[ctx].useMap = spasm.decode_string(useMapLen, useMapPtr);
    },
    HTMLObjectElement_useMap_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].useMap);
    },
    HTMLObjectElement_form_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].form);
    },
    HTMLObjectElement_width_Set: function(ctx, widthLen, widthPtr) {
      spasm.objects[ctx].width = spasm.decode_string(widthLen, widthPtr);
    },
    HTMLObjectElement_width_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].width);
    },
    HTMLObjectElement_height_Set: function(ctx, heightLen, heightPtr) {
      spasm.objects[ctx].height = spasm.decode_string(heightLen, heightPtr);
    },
    HTMLObjectElement_height_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].height);
    },
    HTMLObjectElement_contentDocument_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].contentDocument);
    },
    HTMLObjectElement_contentWindow_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].contentWindow);
    },
    HTMLObjectElement_getSVGDocument: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getSVGDocument());
    },
    HTMLObjectElement_willValidate_Get: function(ctx) {
      return spasm.objects[ctx].willValidate;
    },
    HTMLObjectElement_validity_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].validity);
    },
    HTMLObjectElement_validationMessage_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].validationMessage);
    },
    HTMLObjectElement_checkValidity: function(ctx) {
      return spasm.objects[ctx].checkValidity();
    },
    HTMLObjectElement_reportValidity: function(ctx) {
      return spasm.objects[ctx].reportValidity();
    },
    HTMLObjectElement_setCustomValidity: function(ctx, errorLen, errorPtr) {
      spasm.objects[ctx].setCustomValidity(spasm.decode_string(errorLen, errorPtr));
    },
    HTMLObjectElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLObjectElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLObjectElement_archive_Set: function(ctx, archiveLen, archivePtr) {
      spasm.objects[ctx].archive = spasm.decode_string(archiveLen, archivePtr);
    },
    HTMLObjectElement_archive_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].archive);
    },
    HTMLObjectElement_code_Set: function(ctx, codeLen, codePtr) {
      spasm.objects[ctx].code = spasm.decode_string(codeLen, codePtr);
    },
    HTMLObjectElement_code_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].code);
    },
    HTMLObjectElement_declare_Set: function(ctx, declare) {
      spasm.objects[ctx].declare = declare;
    },
    HTMLObjectElement_declare_Get: function(ctx) {
      return spasm.objects[ctx].declare;
    },
    HTMLObjectElement_hspace_Set: function(ctx, hspace) {
      spasm.objects[ctx].hspace = hspace;
    },
    HTMLObjectElement_hspace_Get: function(ctx) {
      return spasm.objects[ctx].hspace;
    },
    HTMLObjectElement_standby_Set: function(ctx, standbyLen, standbyPtr) {
      spasm.objects[ctx].standby = spasm.decode_string(standbyLen, standbyPtr);
    },
    HTMLObjectElement_standby_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].standby);
    },
    HTMLObjectElement_vspace_Set: function(ctx, vspace) {
      spasm.objects[ctx].vspace = vspace;
    },
    HTMLObjectElement_vspace_Get: function(ctx) {
      return spasm.objects[ctx].vspace;
    },
    HTMLObjectElement_codeBase_Set: function(ctx, codeBaseLen, codeBasePtr) {
      spasm.objects[ctx].codeBase = spasm.decode_string(codeBaseLen, codeBasePtr);
    },
    HTMLObjectElement_codeBase_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].codeBase);
    },
    HTMLObjectElement_codeType_Set: function(ctx, codeTypeLen, codeTypePtr) {
      spasm.objects[ctx].codeType = spasm.decode_string(codeTypeLen, codeTypePtr);
    },
    HTMLObjectElement_codeType_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].codeType);
    },
    HTMLObjectElement_border_Set: function(ctx, borderLen, borderPtr) {
      spasm.objects[ctx].border = spasm.decode_string(borderLen, borderPtr);
    },
    HTMLObjectElement_border_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].border);
    },
    HTMLOptGroupElement_disabled_Set: function(ctx, disabled) {
      spasm.objects[ctx].disabled = disabled;
    },
    HTMLOptGroupElement_disabled_Get: function(ctx) {
      return spasm.objects[ctx].disabled;
    },
    HTMLOptGroupElement_label_Set: function(ctx, labelLen, labelPtr) {
      spasm.objects[ctx].label = spasm.decode_string(labelLen, labelPtr);
    },
    HTMLOptGroupElement_label_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].label);
    },
    HTMLOptionElement_disabled_Set: function(ctx, disabled) {
      spasm.objects[ctx].disabled = disabled;
    },
    HTMLOptionElement_disabled_Get: function(ctx) {
      return spasm.objects[ctx].disabled;
    },
    HTMLOptionElement_form_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].form);
    },
    HTMLOptionElement_label_Set: function(ctx, labelLen, labelPtr) {
      spasm.objects[ctx].label = spasm.decode_string(labelLen, labelPtr);
    },
    HTMLOptionElement_label_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].label);
    },
    HTMLOptionElement_defaultSelected_Set: function(ctx, defaultSelected) {
      spasm.objects[ctx].defaultSelected = defaultSelected;
    },
    HTMLOptionElement_defaultSelected_Get: function(ctx) {
      return spasm.objects[ctx].defaultSelected;
    },
    HTMLOptionElement_selected_Set: function(ctx, selected) {
      spasm.objects[ctx].selected = selected;
    },
    HTMLOptionElement_selected_Get: function(ctx) {
      return spasm.objects[ctx].selected;
    },
    HTMLOptionElement_value_Set: function(ctx, valueLen, valuePtr) {
      spasm.objects[ctx].value = spasm.decode_string(valueLen, valuePtr);
    },
    HTMLOptionElement_value_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].value);
    },
    HTMLOptionElement_text_Set: function(ctx, textLen, textPtr) {
      spasm.objects[ctx].text = spasm.decode_string(textLen, textPtr);
    },
    HTMLOptionElement_text_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].text);
    },
    HTMLOptionElement_index_Get: function(ctx) {
      return spasm.objects[ctx].index;
    },
    HTMLOptionsCollection_length_Set: function(ctx, length) {
      spasm.objects[ctx].length = length;
    },
    HTMLOptionsCollection_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    HTMLOptionsCollection_setter__uint_optional_Handle: function(ctx, index, optionDefined, option) {
      spasm.objects[ctx][index] = optionDefined ? spasm.objects[option] : undefined;
    },
    HTMLOptionsCollection_add: function(ctx, element, beforeDefined, before) {
      spasm.objects[ctx].add(spasm.decode_union2_HTMLOptionElement_HTMLOptGroupElement(element), beforeDefined ? spasm.decode_union2_HTMLElement_int(before) : undefined);
    },
    HTMLOptionsCollection_remove: function(ctx, index) {
      spasm.objects[ctx].remove(index);
    },
    HTMLOptionsCollection_selectedIndex_Set: function(ctx, selectedIndex) {
      spasm.objects[ctx].selectedIndex = selectedIndex;
    },
    HTMLOptionsCollection_selectedIndex_Get: function(ctx) {
      return spasm.objects[ctx].selectedIndex;
    },
    HTMLOutputElement_htmlFor_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].htmlFor);
    },
    HTMLOutputElement_form_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].form);
    },
    HTMLOutputElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLOutputElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLOutputElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLOutputElement_defaultValue_Set: function(ctx, defaultValueLen, defaultValuePtr) {
      spasm.objects[ctx].defaultValue = spasm.decode_string(defaultValueLen, defaultValuePtr);
    },
    HTMLOutputElement_defaultValue_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].defaultValue);
    },
    HTMLOutputElement_value_Set: function(ctx, valueLen, valuePtr) {
      spasm.objects[ctx].value = spasm.decode_string(valueLen, valuePtr);
    },
    HTMLOutputElement_value_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].value);
    },
    HTMLOutputElement_willValidate_Get: function(ctx) {
      return spasm.objects[ctx].willValidate;
    },
    HTMLOutputElement_validity_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].validity);
    },
    HTMLOutputElement_validationMessage_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].validationMessage);
    },
    HTMLOutputElement_checkValidity: function(ctx) {
      return spasm.objects[ctx].checkValidity();
    },
    HTMLOutputElement_reportValidity: function(ctx) {
      return spasm.objects[ctx].reportValidity();
    },
    HTMLOutputElement_setCustomValidity: function(ctx, errorLen, errorPtr) {
      spasm.objects[ctx].setCustomValidity(spasm.decode_string(errorLen, errorPtr));
    },
    HTMLOutputElement_labels_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].labels);
    },
    HTMLParagraphElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLParagraphElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLParamElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLParamElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLParamElement_value_Set: function(ctx, valueLen, valuePtr) {
      spasm.objects[ctx].value = spasm.decode_string(valueLen, valuePtr);
    },
    HTMLParamElement_value_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].value);
    },
    HTMLParamElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    HTMLParamElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLParamElement_valueType_Set: function(ctx, valueTypeLen, valueTypePtr) {
      spasm.objects[ctx].valueType = spasm.decode_string(valueTypeLen, valueTypePtr);
    },
    HTMLParamElement_valueType_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].valueType);
    },
    HTMLPreElement_width_Set: function(ctx, width) {
      spasm.objects[ctx].width = width;
    },
    HTMLPreElement_width_Get: function(ctx) {
      return spasm.objects[ctx].width;
    },
    HTMLProgressElement_value_Set: function(ctx, value) {
      spasm.objects[ctx].value = value;
    },
    HTMLProgressElement_value_Get: function(ctx) {
      return spasm.objects[ctx].value;
    },
    HTMLProgressElement_max_Set: function(ctx, max) {
      spasm.objects[ctx].max = max;
    },
    HTMLProgressElement_max_Get: function(ctx) {
      return spasm.objects[ctx].max;
    },
    HTMLProgressElement_position_Get: function(ctx) {
      return spasm.objects[ctx].position;
    },
    HTMLProgressElement_labels_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].labels);
    },
    HTMLQuoteElement_cite_Set: function(ctx, citeLen, citePtr) {
      spasm.objects[ctx].cite = spasm.decode_string(citeLen, citePtr);
    },
    HTMLQuoteElement_cite_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].cite);
    },
    HTMLScriptElement_src_Set: function(ctx, srcLen, srcPtr) {
      spasm.objects[ctx].src = spasm.decode_string(srcLen, srcPtr);
    },
    HTMLScriptElement_src_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].src);
    },
    HTMLScriptElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    HTMLScriptElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLScriptElement_noModule_Set: function(ctx, noModule) {
      spasm.objects[ctx].noModule = noModule;
    },
    HTMLScriptElement_noModule_Get: function(ctx) {
      return spasm.objects[ctx].noModule;
    },
    HTMLScriptElement_async_Set: function(ctx, async) {
      spasm.objects[ctx].async = async;
    },
    HTMLScriptElement_async_Get: function(ctx) {
      return spasm.objects[ctx].async;
    },
    HTMLScriptElement_defer_Set: function(ctx, defer) {
      spasm.objects[ctx].defer = defer;
    },
    HTMLScriptElement_defer_Get: function(ctx) {
      return spasm.objects[ctx].defer;
    },
    HTMLScriptElement_crossOrigin_Set: function(ctx, crossOriginDefined, crossOriginLen, crossOriginPtr) {
      spasm.objects[ctx].crossOrigin = crossOriginDefined ? spasm.decode_string(crossOriginLen, crossOriginPtr) : undefined;
    },
    HTMLScriptElement_crossOrigin_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].crossOrigin);
    },
    HTMLScriptElement_text_Set: function(ctx, textLen, textPtr) {
      spasm.objects[ctx].text = spasm.decode_string(textLen, textPtr);
    },
    HTMLScriptElement_text_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].text);
    },
    HTMLScriptElement_integrity_Set: function(ctx, integrityLen, integrityPtr) {
      spasm.objects[ctx].integrity = spasm.decode_string(integrityLen, integrityPtr);
    },
    HTMLScriptElement_integrity_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].integrity);
    },
    HTMLScriptElement_referrerPolicy_Set: function(ctx, referrerPolicyLen, referrerPolicyPtr) {
      spasm.objects[ctx].referrerPolicy = spasm.decode_string(referrerPolicyLen, referrerPolicyPtr);
    },
    HTMLScriptElement_referrerPolicy_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].referrerPolicy);
    },
    HTMLScriptElement_charset_Set: function(ctx, charsetLen, charsetPtr) {
      spasm.objects[ctx].charset = spasm.decode_string(charsetLen, charsetPtr);
    },
    HTMLScriptElement_charset_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].charset);
    },
    HTMLScriptElement_event_Set: function(ctx, eventLen, eventPtr) {
      spasm.objects[ctx].event = spasm.decode_string(eventLen, eventPtr);
    },
    HTMLScriptElement_event_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].event);
    },
    HTMLScriptElement_htmlFor_Set: function(ctx, htmlForLen, htmlForPtr) {
      spasm.objects[ctx].htmlFor = spasm.decode_string(htmlForLen, htmlForPtr);
    },
    HTMLScriptElement_htmlFor_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].htmlFor);
    },
    HTMLSelectElement_autocomplete_Set: function(ctx, autocompleteLen, autocompletePtr) {
      spasm.objects[ctx].autocomplete = spasm.decode_string(autocompleteLen, autocompletePtr);
    },
    HTMLSelectElement_autocomplete_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].autocomplete);
    },
    HTMLSelectElement_autofocus_Set: function(ctx, autofocus) {
      spasm.objects[ctx].autofocus = autofocus;
    },
    HTMLSelectElement_autofocus_Get: function(ctx) {
      return spasm.objects[ctx].autofocus;
    },
    HTMLSelectElement_disabled_Set: function(ctx, disabled) {
      spasm.objects[ctx].disabled = disabled;
    },
    HTMLSelectElement_disabled_Get: function(ctx) {
      return spasm.objects[ctx].disabled;
    },
    HTMLSelectElement_form_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].form);
    },
    HTMLSelectElement_multiple_Set: function(ctx, multiple) {
      spasm.objects[ctx].multiple = multiple;
    },
    HTMLSelectElement_multiple_Get: function(ctx) {
      return spasm.objects[ctx].multiple;
    },
    HTMLSelectElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLSelectElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLSelectElement_required_Set: function(ctx, required) {
      spasm.objects[ctx].required = required;
    },
    HTMLSelectElement_required_Get: function(ctx) {
      return spasm.objects[ctx].required;
    },
    HTMLSelectElement_size_Set: function(ctx, size) {
      spasm.objects[ctx].size = size;
    },
    HTMLSelectElement_size_Get: function(ctx) {
      return spasm.objects[ctx].size;
    },
    HTMLSelectElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLSelectElement_options_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].options);
    },
    HTMLSelectElement_length_Set: function(ctx, length) {
      spasm.objects[ctx].length = length;
    },
    HTMLSelectElement_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    HTMLSelectElement_item_getter: function(rawResult, ctx, index) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].item(index));
    },
    HTMLSelectElement_namedItem: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].namedItem(spasm.decode_string(nameLen, namePtr)));
    },
    HTMLSelectElement_add: function(ctx, element, beforeDefined, before) {
      spasm.objects[ctx].add(spasm.decode_union2_HTMLOptionElement_HTMLOptGroupElement(element), beforeDefined ? spasm.decode_union2_HTMLElement_int(before) : undefined);
    },
    HTMLSelectElement_remove__: function(ctx) {
      spasm.objects[ctx].remove();
    },
    HTMLSelectElement_remove__int: function(ctx, index) {
      spasm.objects[ctx].remove(index);
    },
    HTMLSelectElement_setter__uint_optional_Handle: function(ctx, index, optionDefined, option) {
      spasm.objects[ctx][index] = optionDefined ? spasm.objects[option] : undefined;
    },
    HTMLSelectElement_selectedOptions_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].selectedOptions);
    },
    HTMLSelectElement_selectedIndex_Set: function(ctx, selectedIndex) {
      spasm.objects[ctx].selectedIndex = selectedIndex;
    },
    HTMLSelectElement_selectedIndex_Get: function(ctx) {
      return spasm.objects[ctx].selectedIndex;
    },
    HTMLSelectElement_value_Set: function(ctx, valueLen, valuePtr) {
      spasm.objects[ctx].value = spasm.decode_string(valueLen, valuePtr);
    },
    HTMLSelectElement_value_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].value);
    },
    HTMLSelectElement_willValidate_Get: function(ctx) {
      return spasm.objects[ctx].willValidate;
    },
    HTMLSelectElement_validity_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].validity);
    },
    HTMLSelectElement_validationMessage_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].validationMessage);
    },
    HTMLSelectElement_checkValidity: function(ctx) {
      return spasm.objects[ctx].checkValidity();
    },
    HTMLSelectElement_reportValidity: function(ctx) {
      return spasm.objects[ctx].reportValidity();
    },
    HTMLSelectElement_setCustomValidity: function(ctx, errorLen, errorPtr) {
      spasm.objects[ctx].setCustomValidity(spasm.decode_string(errorLen, errorPtr));
    },
    HTMLSelectElement_labels_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].labels);
    },
    HTMLSlotElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLSlotElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLSlotElement_assignedNodes: function(ctx, options) {
      return spasm.addObject(spasm.objects[ctx].assignedNodes(spasm.objects[options]));
    },
    HTMLSlotElement_assignedElements: function(ctx, options) {
      return spasm.addObject(spasm.objects[ctx].assignedElements(spasm.objects[options]));
    },
    HTMLSourceElement_src_Set: function(ctx, srcLen, srcPtr) {
      spasm.objects[ctx].src = spasm.decode_string(srcLen, srcPtr);
    },
    HTMLSourceElement_src_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].src);
    },
    HTMLSourceElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    HTMLSourceElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLSourceElement_srcset_Set: function(ctx, srcsetLen, srcsetPtr) {
      spasm.objects[ctx].srcset = spasm.decode_string(srcsetLen, srcsetPtr);
    },
    HTMLSourceElement_srcset_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].srcset);
    },
    HTMLSourceElement_sizes_Set: function(ctx, sizesLen, sizesPtr) {
      spasm.objects[ctx].sizes = spasm.decode_string(sizesLen, sizesPtr);
    },
    HTMLSourceElement_sizes_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].sizes);
    },
    HTMLSourceElement_media_Set: function(ctx, mediaLen, mediaPtr) {
      spasm.objects[ctx].media = spasm.decode_string(mediaLen, mediaPtr);
    },
    HTMLSourceElement_media_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].media);
    },
    HTMLStyleElement_media_Set: function(ctx, mediaLen, mediaPtr) {
      spasm.objects[ctx].media = spasm.decode_string(mediaLen, mediaPtr);
    },
    HTMLStyleElement_media_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].media);
    },
    HTMLStyleElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    HTMLStyleElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    LinkStyle_sheet_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].sheet);
    },
    HTMLTableCaptionElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLTableCaptionElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLTableCellElement_colSpan_Set: function(ctx, colSpan) {
      spasm.objects[ctx].colSpan = colSpan;
    },
    HTMLTableCellElement_colSpan_Get: function(ctx) {
      return spasm.objects[ctx].colSpan;
    },
    HTMLTableCellElement_rowSpan_Set: function(ctx, rowSpan) {
      spasm.objects[ctx].rowSpan = rowSpan;
    },
    HTMLTableCellElement_rowSpan_Get: function(ctx) {
      return spasm.objects[ctx].rowSpan;
    },
    HTMLTableCellElement_headers_Set: function(ctx, headersLen, headersPtr) {
      spasm.objects[ctx].headers = spasm.decode_string(headersLen, headersPtr);
    },
    HTMLTableCellElement_headers_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].headers);
    },
    HTMLTableCellElement_cellIndex_Get: function(ctx) {
      return spasm.objects[ctx].cellIndex;
    },
    HTMLTableCellElement_scope_Set: function(ctx, scopeLen, scopePtr) {
      spasm.objects[ctx].scope = spasm.decode_string(scopeLen, scopePtr);
    },
    HTMLTableCellElement_scope_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].scope);
    },
    HTMLTableCellElement_abbr_Set: function(ctx, abbrLen, abbrPtr) {
      spasm.objects[ctx].abbr = spasm.decode_string(abbrLen, abbrPtr);
    },
    HTMLTableCellElement_abbr_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].abbr);
    },
    HTMLTableCellElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLTableCellElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLTableCellElement_axis_Set: function(ctx, axisLen, axisPtr) {
      spasm.objects[ctx].axis = spasm.decode_string(axisLen, axisPtr);
    },
    HTMLTableCellElement_axis_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].axis);
    },
    HTMLTableCellElement_height_Set: function(ctx, heightLen, heightPtr) {
      spasm.objects[ctx].height = spasm.decode_string(heightLen, heightPtr);
    },
    HTMLTableCellElement_height_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].height);
    },
    HTMLTableCellElement_width_Set: function(ctx, widthLen, widthPtr) {
      spasm.objects[ctx].width = spasm.decode_string(widthLen, widthPtr);
    },
    HTMLTableCellElement_width_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].width);
    },
    HTMLTableCellElement_ch_Set: function(ctx, chLen, chPtr) {
      spasm.objects[ctx].ch = spasm.decode_string(chLen, chPtr);
    },
    HTMLTableCellElement_ch_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].ch);
    },
    HTMLTableCellElement_chOff_Set: function(ctx, chOffLen, chOffPtr) {
      spasm.objects[ctx].chOff = spasm.decode_string(chOffLen, chOffPtr);
    },
    HTMLTableCellElement_chOff_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].chOff);
    },
    HTMLTableCellElement_noWrap_Set: function(ctx, noWrap) {
      spasm.objects[ctx].noWrap = noWrap;
    },
    HTMLTableCellElement_noWrap_Get: function(ctx) {
      return spasm.objects[ctx].noWrap;
    },
    HTMLTableCellElement_vAlign_Set: function(ctx, vAlignLen, vAlignPtr) {
      spasm.objects[ctx].vAlign = spasm.decode_string(vAlignLen, vAlignPtr);
    },
    HTMLTableCellElement_vAlign_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].vAlign);
    },
    HTMLTableCellElement_bgColor_Set: function(ctx, bgColorLen, bgColorPtr) {
      spasm.objects[ctx].bgColor = spasm.decode_string(bgColorLen, bgColorPtr);
    },
    HTMLTableCellElement_bgColor_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].bgColor);
    },
    HTMLTableColElement_span_Set: function(ctx, span) {
      spasm.objects[ctx].span = span;
    },
    HTMLTableColElement_span_Get: function(ctx) {
      return spasm.objects[ctx].span;
    },
    HTMLTableColElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLTableColElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLTableColElement_ch_Set: function(ctx, chLen, chPtr) {
      spasm.objects[ctx].ch = spasm.decode_string(chLen, chPtr);
    },
    HTMLTableColElement_ch_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].ch);
    },
    HTMLTableColElement_chOff_Set: function(ctx, chOffLen, chOffPtr) {
      spasm.objects[ctx].chOff = spasm.decode_string(chOffLen, chOffPtr);
    },
    HTMLTableColElement_chOff_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].chOff);
    },
    HTMLTableColElement_vAlign_Set: function(ctx, vAlignLen, vAlignPtr) {
      spasm.objects[ctx].vAlign = spasm.decode_string(vAlignLen, vAlignPtr);
    },
    HTMLTableColElement_vAlign_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].vAlign);
    },
    HTMLTableColElement_width_Set: function(ctx, widthLen, widthPtr) {
      spasm.objects[ctx].width = spasm.decode_string(widthLen, widthPtr);
    },
    HTMLTableColElement_width_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].width);
    },
    HTMLTableElement_caption_Set: function(ctx, captionDefined, caption) {
      spasm.objects[ctx].caption = captionDefined ? spasm.objects[caption] : undefined;
    },
    HTMLTableElement_caption_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].caption);
    },
    HTMLTableElement_createCaption: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createCaption());
    },
    HTMLTableElement_deleteCaption: function(ctx) {
      spasm.objects[ctx].deleteCaption();
    },
    HTMLTableElement_tHead_Set: function(ctx, tHeadDefined, tHead) {
      spasm.objects[ctx].tHead = tHeadDefined ? spasm.objects[tHead] : undefined;
    },
    HTMLTableElement_tHead_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].tHead);
    },
    HTMLTableElement_createTHead: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createTHead());
    },
    HTMLTableElement_deleteTHead: function(ctx) {
      spasm.objects[ctx].deleteTHead();
    },
    HTMLTableElement_tFoot_Set: function(ctx, tFootDefined, tFoot) {
      spasm.objects[ctx].tFoot = tFootDefined ? spasm.objects[tFoot] : undefined;
    },
    HTMLTableElement_tFoot_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].tFoot);
    },
    HTMLTableElement_createTFoot: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createTFoot());
    },
    HTMLTableElement_deleteTFoot: function(ctx) {
      spasm.objects[ctx].deleteTFoot();
    },
    HTMLTableElement_tBodies_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].tBodies);
    },
    HTMLTableElement_createTBody: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].createTBody());
    },
    HTMLTableElement_rows_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].rows);
    },
    HTMLTableElement_insertRow: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx].insertRow(index));
    },
    HTMLTableElement_deleteRow: function(ctx, index) {
      spasm.objects[ctx].deleteRow(index);
    },
    HTMLTableElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLTableElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLTableElement_border_Set: function(ctx, borderLen, borderPtr) {
      spasm.objects[ctx].border = spasm.decode_string(borderLen, borderPtr);
    },
    HTMLTableElement_border_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].border);
    },
    HTMLTableElement_frame_Set: function(ctx, frameLen, framePtr) {
      spasm.objects[ctx].frame = spasm.decode_string(frameLen, framePtr);
    },
    HTMLTableElement_frame_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].frame);
    },
    HTMLTableElement_rules_Set: function(ctx, rulesLen, rulesPtr) {
      spasm.objects[ctx].rules = spasm.decode_string(rulesLen, rulesPtr);
    },
    HTMLTableElement_rules_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].rules);
    },
    HTMLTableElement_summary_Set: function(ctx, summaryLen, summaryPtr) {
      spasm.objects[ctx].summary = spasm.decode_string(summaryLen, summaryPtr);
    },
    HTMLTableElement_summary_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].summary);
    },
    HTMLTableElement_width_Set: function(ctx, widthLen, widthPtr) {
      spasm.objects[ctx].width = spasm.decode_string(widthLen, widthPtr);
    },
    HTMLTableElement_width_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].width);
    },
    HTMLTableElement_bgColor_Set: function(ctx, bgColorLen, bgColorPtr) {
      spasm.objects[ctx].bgColor = spasm.decode_string(bgColorLen, bgColorPtr);
    },
    HTMLTableElement_bgColor_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].bgColor);
    },
    HTMLTableElement_cellPadding_Set: function(ctx, cellPaddingLen, cellPaddingPtr) {
      spasm.objects[ctx].cellPadding = spasm.decode_string(cellPaddingLen, cellPaddingPtr);
    },
    HTMLTableElement_cellPadding_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].cellPadding);
    },
    HTMLTableElement_cellSpacing_Set: function(ctx, cellSpacingLen, cellSpacingPtr) {
      spasm.objects[ctx].cellSpacing = spasm.decode_string(cellSpacingLen, cellSpacingPtr);
    },
    HTMLTableElement_cellSpacing_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].cellSpacing);
    },
    HTMLTableRowElement_rowIndex_Get: function(ctx) {
      return spasm.objects[ctx].rowIndex;
    },
    HTMLTableRowElement_sectionRowIndex_Get: function(ctx) {
      return spasm.objects[ctx].sectionRowIndex;
    },
    HTMLTableRowElement_cells_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].cells);
    },
    HTMLTableRowElement_insertCell: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx].insertCell(index));
    },
    HTMLTableRowElement_deleteCell: function(ctx, index) {
      spasm.objects[ctx].deleteCell(index);
    },
    HTMLTableRowElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLTableRowElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLTableRowElement_ch_Set: function(ctx, chLen, chPtr) {
      spasm.objects[ctx].ch = spasm.decode_string(chLen, chPtr);
    },
    HTMLTableRowElement_ch_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].ch);
    },
    HTMLTableRowElement_chOff_Set: function(ctx, chOffLen, chOffPtr) {
      spasm.objects[ctx].chOff = spasm.decode_string(chOffLen, chOffPtr);
    },
    HTMLTableRowElement_chOff_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].chOff);
    },
    HTMLTableRowElement_vAlign_Set: function(ctx, vAlignLen, vAlignPtr) {
      spasm.objects[ctx].vAlign = spasm.decode_string(vAlignLen, vAlignPtr);
    },
    HTMLTableRowElement_vAlign_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].vAlign);
    },
    HTMLTableRowElement_bgColor_Set: function(ctx, bgColorLen, bgColorPtr) {
      spasm.objects[ctx].bgColor = spasm.decode_string(bgColorLen, bgColorPtr);
    },
    HTMLTableRowElement_bgColor_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].bgColor);
    },
    HTMLTableSectionElement_rows_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].rows);
    },
    HTMLTableSectionElement_insertRow: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx].insertRow(index));
    },
    HTMLTableSectionElement_deleteRow: function(ctx, index) {
      spasm.objects[ctx].deleteRow(index);
    },
    HTMLTableSectionElement_align_Set: function(ctx, alignLen, alignPtr) {
      spasm.objects[ctx].align = spasm.decode_string(alignLen, alignPtr);
    },
    HTMLTableSectionElement_align_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].align);
    },
    HTMLTableSectionElement_ch_Set: function(ctx, chLen, chPtr) {
      spasm.objects[ctx].ch = spasm.decode_string(chLen, chPtr);
    },
    HTMLTableSectionElement_ch_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].ch);
    },
    HTMLTableSectionElement_chOff_Set: function(ctx, chOffLen, chOffPtr) {
      spasm.objects[ctx].chOff = spasm.decode_string(chOffLen, chOffPtr);
    },
    HTMLTableSectionElement_chOff_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].chOff);
    },
    HTMLTableSectionElement_vAlign_Set: function(ctx, vAlignLen, vAlignPtr) {
      spasm.objects[ctx].vAlign = spasm.decode_string(vAlignLen, vAlignPtr);
    },
    HTMLTableSectionElement_vAlign_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].vAlign);
    },
    HTMLTemplateElement_content_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].content);
    },
    HTMLTextAreaElement_autocomplete_Set: function(ctx, autocompleteLen, autocompletePtr) {
      spasm.objects[ctx].autocomplete = spasm.decode_string(autocompleteLen, autocompletePtr);
    },
    HTMLTextAreaElement_autocomplete_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].autocomplete);
    },
    HTMLTextAreaElement_autofocus_Set: function(ctx, autofocus) {
      spasm.objects[ctx].autofocus = autofocus;
    },
    HTMLTextAreaElement_autofocus_Get: function(ctx) {
      return spasm.objects[ctx].autofocus;
    },
    HTMLTextAreaElement_cols_Set: function(ctx, cols) {
      spasm.objects[ctx].cols = cols;
    },
    HTMLTextAreaElement_cols_Get: function(ctx) {
      return spasm.objects[ctx].cols;
    },
    HTMLTextAreaElement_dirName_Set: function(ctx, dirNameLen, dirNamePtr) {
      spasm.objects[ctx].dirName = spasm.decode_string(dirNameLen, dirNamePtr);
    },
    HTMLTextAreaElement_dirName_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].dirName);
    },
    HTMLTextAreaElement_disabled_Set: function(ctx, disabled) {
      spasm.objects[ctx].disabled = disabled;
    },
    HTMLTextAreaElement_disabled_Get: function(ctx) {
      return spasm.objects[ctx].disabled;
    },
    HTMLTextAreaElement_form_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].form);
    },
    HTMLTextAreaElement_maxLength_Set: function(ctx, maxLength) {
      spasm.objects[ctx].maxLength = maxLength;
    },
    HTMLTextAreaElement_maxLength_Get: function(ctx) {
      return spasm.objects[ctx].maxLength;
    },
    HTMLTextAreaElement_minLength_Set: function(ctx, minLength) {
      spasm.objects[ctx].minLength = minLength;
    },
    HTMLTextAreaElement_minLength_Get: function(ctx) {
      return spasm.objects[ctx].minLength;
    },
    HTMLTextAreaElement_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    HTMLTextAreaElement_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    HTMLTextAreaElement_placeholder_Set: function(ctx, placeholderLen, placeholderPtr) {
      spasm.objects[ctx].placeholder = spasm.decode_string(placeholderLen, placeholderPtr);
    },
    HTMLTextAreaElement_placeholder_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].placeholder);
    },
    HTMLTextAreaElement_readOnly_Set: function(ctx, readOnly) {
      spasm.objects[ctx].readOnly = readOnly;
    },
    HTMLTextAreaElement_readOnly_Get: function(ctx) {
      return spasm.objects[ctx].readOnly;
    },
    HTMLTextAreaElement_required_Set: function(ctx, required) {
      spasm.objects[ctx].required = required;
    },
    HTMLTextAreaElement_required_Get: function(ctx) {
      return spasm.objects[ctx].required;
    },
    HTMLTextAreaElement_rows_Set: function(ctx, rows) {
      spasm.objects[ctx].rows = rows;
    },
    HTMLTextAreaElement_rows_Get: function(ctx) {
      return spasm.objects[ctx].rows;
    },
    HTMLTextAreaElement_wrap_Set: function(ctx, wrapLen, wrapPtr) {
      spasm.objects[ctx].wrap = spasm.decode_string(wrapLen, wrapPtr);
    },
    HTMLTextAreaElement_wrap_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].wrap);
    },
    HTMLTextAreaElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLTextAreaElement_defaultValue_Set: function(ctx, defaultValueLen, defaultValuePtr) {
      spasm.objects[ctx].defaultValue = spasm.decode_string(defaultValueLen, defaultValuePtr);
    },
    HTMLTextAreaElement_defaultValue_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].defaultValue);
    },
    HTMLTextAreaElement_value_Set: function(ctx, valueLen, valuePtr) {
      spasm.objects[ctx].value = spasm.decode_string(valueLen, valuePtr);
    },
    HTMLTextAreaElement_value_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].value);
    },
    HTMLTextAreaElement_textLength_Get: function(ctx) {
      return spasm.objects[ctx].textLength;
    },
    HTMLTextAreaElement_willValidate_Get: function(ctx) {
      return spasm.objects[ctx].willValidate;
    },
    HTMLTextAreaElement_validity_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].validity);
    },
    HTMLTextAreaElement_validationMessage_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].validationMessage);
    },
    HTMLTextAreaElement_checkValidity: function(ctx) {
      return spasm.objects[ctx].checkValidity();
    },
    HTMLTextAreaElement_reportValidity: function(ctx) {
      return spasm.objects[ctx].reportValidity();
    },
    HTMLTextAreaElement_setCustomValidity: function(ctx, errorLen, errorPtr) {
      spasm.objects[ctx].setCustomValidity(spasm.decode_string(errorLen, errorPtr));
    },
    HTMLTextAreaElement_labels_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].labels);
    },
    HTMLTextAreaElement_select: function(ctx) {
      spasm.objects[ctx].select();
    },
    HTMLTextAreaElement_selectionStart_Set: function(ctx, selectionStart) {
      spasm.objects[ctx].selectionStart = selectionStart;
    },
    HTMLTextAreaElement_selectionStart_Get: function(ctx) {
      return spasm.objects[ctx].selectionStart;
    },
    HTMLTextAreaElement_selectionEnd_Set: function(ctx, selectionEnd) {
      spasm.objects[ctx].selectionEnd = selectionEnd;
    },
    HTMLTextAreaElement_selectionEnd_Get: function(ctx) {
      return spasm.objects[ctx].selectionEnd;
    },
    HTMLTextAreaElement_selectionDirection_Set: function(ctx, selectionDirectionLen, selectionDirectionPtr) {
      spasm.objects[ctx].selectionDirection = spasm.decode_string(selectionDirectionLen, selectionDirectionPtr);
    },
    HTMLTextAreaElement_selectionDirection_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].selectionDirection);
    },
    HTMLTextAreaElement_setRangeText__string: function(ctx, replacementLen, replacementPtr) {
      spasm.objects[ctx].setRangeText(spasm.decode_string(replacementLen, replacementPtr));
    },
    HTMLTextAreaElement_setRangeText__string_uint_uint_SelectionMode: function(ctx, replacementLen, replacementPtr, start, end, selectionMode) {
      spasm.objects[ctx].setRangeText(spasm.decode_string(replacementLen, replacementPtr), start, end, spasm.decode_SelectionMode(selectionMode));
    },
    HTMLTextAreaElement_setSelectionRange: function(ctx, start, end, directionLen, directionPtr) {
      spasm.objects[ctx].setSelectionRange(start, end, spasm.decode_string(directionLen, directionPtr));
    },
    HTMLTimeElement_dateTime_Set: function(ctx, dateTimeLen, dateTimePtr) {
      spasm.objects[ctx].dateTime = spasm.decode_string(dateTimeLen, dateTimePtr);
    },
    HTMLTimeElement_dateTime_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].dateTime);
    },
    HTMLTitleElement_text_Set: function(ctx, textLen, textPtr) {
      spasm.objects[ctx].text = spasm.decode_string(textLen, textPtr);
    },
    HTMLTitleElement_text_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].text);
    },
    HTMLTrackElement_kind_Set: function(ctx, kindLen, kindPtr) {
      spasm.objects[ctx].kind = spasm.decode_string(kindLen, kindPtr);
    },
    HTMLTrackElement_kind_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].kind);
    },
    HTMLTrackElement_src_Set: function(ctx, srcLen, srcPtr) {
      spasm.objects[ctx].src = spasm.decode_string(srcLen, srcPtr);
    },
    HTMLTrackElement_src_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].src);
    },
    HTMLTrackElement_srclang_Set: function(ctx, srclangLen, srclangPtr) {
      spasm.objects[ctx].srclang = spasm.decode_string(srclangLen, srclangPtr);
    },
    HTMLTrackElement_srclang_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].srclang);
    },
    HTMLTrackElement_label_Set: function(ctx, labelLen, labelPtr) {
      spasm.objects[ctx].label = spasm.decode_string(labelLen, labelPtr);
    },
    HTMLTrackElement_label_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].label);
    },
    HTMLTrackElement_default_Set: function(ctx, default_) {
      spasm.objects[ctx].default = default_;
    },
    HTMLTrackElement_default_Get: function(ctx) {
      return spasm.objects[ctx].default;
    },
    HTMLTrackElement_readyState_Get: function(ctx) {
      return spasm.objects[ctx].readyState;
    },
    HTMLTrackElement_track_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].track);
    },
    HTMLUListElement_compact_Set: function(ctx, compact) {
      spasm.objects[ctx].compact = compact;
    },
    HTMLUListElement_compact_Get: function(ctx) {
      return spasm.objects[ctx].compact;
    },
    HTMLUListElement_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    HTMLUListElement_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    HTMLVideoElement_width_Set: function(ctx, width) {
      spasm.objects[ctx].width = width;
    },
    HTMLVideoElement_width_Get: function(ctx) {
      return spasm.objects[ctx].width;
    },
    HTMLVideoElement_height_Set: function(ctx, height) {
      spasm.objects[ctx].height = height;
    },
    HTMLVideoElement_height_Get: function(ctx) {
      return spasm.objects[ctx].height;
    },
    HTMLVideoElement_videoWidth_Get: function(ctx) {
      return spasm.objects[ctx].videoWidth;
    },
    HTMLVideoElement_videoHeight_Get: function(ctx) {
      return spasm.objects[ctx].videoHeight;
    },
    HTMLVideoElement_poster_Set: function(ctx, posterLen, posterPtr) {
      spasm.objects[ctx].poster = spasm.decode_string(posterLen, posterPtr);
    },
    HTMLVideoElement_poster_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].poster);
    },
    HTMLVideoElement_playsInline_Set: function(ctx, playsInline) {
      spasm.objects[ctx].playsInline = playsInline;
    },
    HTMLVideoElement_playsInline_Get: function(ctx) {
      return spasm.objects[ctx].playsInline;
    },
    HashChangeEvent_oldURL_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].oldURL);
    },
    HashChangeEvent_newURL_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].newURL);
    },
    HashChangeEventInit_oldURL_Set: function(ctx, oldURLLen, oldURLPtr) {
      spasm.objects[ctx].oldURL = spasm.decode_string(oldURLLen, oldURLPtr);
    },
    HashChangeEventInit_oldURL_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].oldURL);
    },
    HashChangeEventInit_newURL_Set: function(ctx, newURLLen, newURLPtr) {
      spasm.objects[ctx].newURL = spasm.decode_string(newURLLen, newURLPtr);
    },
    HashChangeEventInit_newURL_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].newURL);
    },
    History_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    History_scrollRestoration_Set: function(ctx, scrollRestoration) {
      spasm.objects[ctx].scrollRestoration = spasm.decode_ScrollRestoration(scrollRestoration);
    },
    History_scrollRestoration_Get: function(ctx) {
      return spasm.encode.ScrollRestoration(spasm.objects[ctx].scrollRestoration);
    },
    History_state_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].state);
    },
    History_go: function(ctx, delta) {
      spasm.objects[ctx].go(delta);
    },
    History_back: function(ctx) {
      spasm.objects[ctx].back();
    },
    History_forward: function(ctx) {
      spasm.objects[ctx].forward();
    },
    History_pushState: function(ctx, data, titleLen, titlePtr, urlDefined, urlLen, urlPtr) {
      spasm.objects[ctx].pushState(spasm.objects[data], spasm.decode_string(titleLen, titlePtr), urlDefined ? spasm.decode_string(urlLen, urlPtr) : undefined);
    },
    History_replaceState: function(ctx, data, titleLen, titlePtr, urlDefined, urlLen, urlPtr) {
      spasm.objects[ctx].replaceState(spasm.objects[data], spasm.decode_string(titleLen, titlePtr), urlDefined ? spasm.decode_string(urlLen, urlPtr) : undefined);
    },
    ImageBitmap_width_Get: function(ctx) {
      return spasm.objects[ctx].width;
    },
    ImageBitmap_height_Get: function(ctx) {
      return spasm.objects[ctx].height;
    },
    ImageBitmap_close: function(ctx) {
      spasm.objects[ctx].close();
    },
    ImageBitmapOptions_imageOrientation_Set: function(ctx, imageOrientation) {
      spasm.objects[ctx].imageOrientation = spasm.decode_ImageOrientation(imageOrientation);
    },
    ImageBitmapOptions_imageOrientation_Get: function(ctx) {
      return spasm.encode.ImageOrientation(spasm.objects[ctx].imageOrientation);
    },
    ImageBitmapOptions_premultiplyAlpha_Set: function(ctx, premultiplyAlpha) {
      spasm.objects[ctx].premultiplyAlpha = spasm.decode_PremultiplyAlpha(premultiplyAlpha);
    },
    ImageBitmapOptions_premultiplyAlpha_Get: function(ctx) {
      return spasm.encode.PremultiplyAlpha(spasm.objects[ctx].premultiplyAlpha);
    },
    ImageBitmapOptions_colorSpaceConversion_Set: function(ctx, colorSpaceConversion) {
      spasm.objects[ctx].colorSpaceConversion = spasm.decode_ColorSpaceConversion(colorSpaceConversion);
    },
    ImageBitmapOptions_colorSpaceConversion_Get: function(ctx) {
      return spasm.encode.ColorSpaceConversion(spasm.objects[ctx].colorSpaceConversion);
    },
    ImageBitmapOptions_resizeWidth_Set: function(ctx, resizeWidth) {
      spasm.objects[ctx].resizeWidth = resizeWidth;
    },
    ImageBitmapOptions_resizeWidth_Get: function(ctx) {
      return spasm.objects[ctx].resizeWidth;
    },
    ImageBitmapOptions_resizeHeight_Set: function(ctx, resizeHeight) {
      spasm.objects[ctx].resizeHeight = resizeHeight;
    },
    ImageBitmapOptions_resizeHeight_Get: function(ctx) {
      return spasm.objects[ctx].resizeHeight;
    },
    ImageBitmapOptions_resizeQuality_Set: function(ctx, resizeQuality) {
      spasm.objects[ctx].resizeQuality = spasm.decode_ResizeQuality(resizeQuality);
    },
    ImageBitmapOptions_resizeQuality_Get: function(ctx) {
      return spasm.encode.ResizeQuality(spasm.objects[ctx].resizeQuality);
    },
    ImageBitmapRenderingContext_canvas_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].canvas);
    },
    ImageBitmapRenderingContext_transferFromImageBitmap: function(ctx, bitmapDefined, bitmap) {
      spasm.objects[ctx].transferFromImageBitmap(bitmapDefined ? spasm.objects[bitmap] : undefined);
    },
    ImageBitmapRenderingContextSettings_alpha_Set: function(ctx, alpha) {
      spasm.objects[ctx].alpha = alpha;
    },
    ImageBitmapRenderingContextSettings_alpha_Get: function(ctx) {
      return spasm.objects[ctx].alpha;
    },
    ImageData_width_Get: function(ctx) {
      return spasm.objects[ctx].width;
    },
    ImageData_height_Get: function(ctx) {
      return spasm.objects[ctx].height;
    },
    ImageData_data_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].data);
    },
    ImageEncodeOptions_type_Set: function(ctx, typeLen, typePtr) {
      spasm.objects[ctx].type = spasm.decode_string(typeLen, typePtr);
    },
    ImageEncodeOptions_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    ImageEncodeOptions_quality_Set: function(ctx, quality) {
      spasm.objects[ctx].quality = quality;
    },
    ImageEncodeOptions_quality_Get: function(ctx) {
      return spasm.objects[ctx].quality;
    },
    Location_href_Set: function(ctx, hrefLen, hrefPtr) {
      spasm.objects[ctx].href = spasm.decode_string(hrefLen, hrefPtr);
    },
    Location_href_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].href);
    },
    Location_origin_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].origin);
    },
    Location_protocol_Set: function(ctx, protocolLen, protocolPtr) {
      spasm.objects[ctx].protocol = spasm.decode_string(protocolLen, protocolPtr);
    },
    Location_protocol_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].protocol);
    },
    Location_host_Set: function(ctx, hostLen, hostPtr) {
      spasm.objects[ctx].host = spasm.decode_string(hostLen, hostPtr);
    },
    Location_host_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].host);
    },
    Location_hostname_Set: function(ctx, hostnameLen, hostnamePtr) {
      spasm.objects[ctx].hostname = spasm.decode_string(hostnameLen, hostnamePtr);
    },
    Location_hostname_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].hostname);
    },
    Location_port_Set: function(ctx, portLen, portPtr) {
      spasm.objects[ctx].port = spasm.decode_string(portLen, portPtr);
    },
    Location_port_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].port);
    },
    Location_pathname_Set: function(ctx, pathnameLen, pathnamePtr) {
      spasm.objects[ctx].pathname = spasm.decode_string(pathnameLen, pathnamePtr);
    },
    Location_pathname_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].pathname);
    },
    Location_search_Set: function(ctx, searchLen, searchPtr) {
      spasm.objects[ctx].search = spasm.decode_string(searchLen, searchPtr);
    },
    Location_search_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].search);
    },
    Location_hash_Set: function(ctx, hashLen, hashPtr) {
      spasm.objects[ctx].hash = spasm.decode_string(hashLen, hashPtr);
    },
    Location_hash_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].hash);
    },
    Location_assign: function(ctx, urlLen, urlPtr) {
      spasm.objects[ctx].assign(spasm.decode_string(urlLen, urlPtr));
    },
    Location_replace: function(ctx, urlLen, urlPtr) {
      spasm.objects[ctx].replace(spasm.decode_string(urlLen, urlPtr));
    },
    Location_reload: function(ctx) {
      spasm.objects[ctx].reload();
    },
    Location_ancestorOrigins_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].ancestorOrigins);
    },
    MediaError_code_Get: function(ctx) {
      return spasm.objects[ctx].code;
    },
    MediaError_message_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].message);
    },
    MessageChannel_port1_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].port1);
    },
    MessageChannel_port2_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].port2);
    },
    MessageEvent_data_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].data);
    },
    MessageEvent_origin_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].origin);
    },
    MessageEvent_lastEventId_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].lastEventId);
    },
    MessageEvent_source_Get: function(rawResult, ctx) {
      spasm.encode.optional_MessageEventSource(rawResult, spasm.objects[ctx].source);
    },
    MessageEvent_ports_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].ports);
    },
    MessageEvent_initMessageEvent: function(ctx, typeLen, typePtr, bubbles, cancelable, data, originLen, originPtr, lastEventIdLen, lastEventIdPtr, sourceDefined, source, ports) {
      spasm.objects[ctx].initMessageEvent(spasm.decode_string(typeLen, typePtr), bubbles, cancelable, spasm.objects[data], spasm.decode_string(originLen, originPtr), spasm.decode_string(lastEventIdLen, lastEventIdPtr), sourceDefined ? spasm.decode_MessageEventSource(source) : undefined, spasm.objects[ports]);
    },
    MessageEventInit_data_Set: function(ctx, data) {
      spasm.objects[ctx].data = spasm.objects[data];
    },
    MessageEventInit_data_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].data);
    },
    MessageEventInit_origin_Set: function(ctx, originLen, originPtr) {
      spasm.objects[ctx].origin = spasm.decode_string(originLen, originPtr);
    },
    MessageEventInit_origin_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].origin);
    },
    MessageEventInit_lastEventId_Set: function(ctx, lastEventIdLen, lastEventIdPtr) {
      spasm.objects[ctx].lastEventId = spasm.decode_string(lastEventIdLen, lastEventIdPtr);
    },
    MessageEventInit_lastEventId_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].lastEventId);
    },
    MessageEventInit_source_Set: function(ctx, sourceDefined, source) {
      spasm.objects[ctx].source = sourceDefined ? spasm.decode_MessageEventSource(source) : undefined;
    },
    MessageEventInit_source_Get: function(rawResult, ctx) {
      spasm.encode.optional_MessageEventSource(rawResult, spasm.objects[ctx].source);
    },
    MessageEventInit_ports_Set: function(ctx, ports) {
      spasm.objects[ctx].ports = spasm.objects[ports];
    },
    MessageEventInit_ports_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].ports);
    },
    MessagePort_postMessage__Any_sequence: function(ctx, message, transfer) {
      spasm.objects[ctx].postMessage(spasm.objects[message], spasm.objects[transfer]);
    },
    MessagePort_postMessage__Any_Handle: function(ctx, message, options) {
      spasm.objects[ctx].postMessage(spasm.objects[message], spasm.objects[options]);
    },
    MessagePort_start: function(ctx) {
      spasm.objects[ctx].start();
    },
    MessagePort_close: function(ctx) {
      spasm.objects[ctx].close();
    },
    MessagePort_onmessage_Set: function(ctx, onmessage) {
      spasm.objects[ctx].onmessage = onmessage;
    },
    MessagePort_onmessage_Get: function(ctx) {
      return spasm.objects[ctx].onmessage;
    },
    MessagePort_onmessageerror_Set: function(ctx, onmessageerror) {
      spasm.objects[ctx].onmessageerror = onmessageerror;
    },
    MessagePort_onmessageerror_Get: function(ctx) {
      return spasm.objects[ctx].onmessageerror;
    },
    MimeType_type_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].type);
    },
    MimeType_description_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].description);
    },
    MimeType_suffixes_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].suffixes);
    },
    MimeType_enabledPlugin_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].enabledPlugin);
    },
    MimeTypeArray_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    MimeTypeArray_item_getter: function(rawResult, ctx, index) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].item(index));
    },
    MimeTypeArray_namedItem_getter: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].namedItem(spasm.decode_string(nameLen, namePtr)));
    },
    Navigator_clipboard_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].clipboard);
    },
    Navigator_permissions_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].permissions);
    },
    Navigator_vibrate: function(ctx, pattern) {
      return spasm.objects[ctx].vibrate(spasm.decode_VibratePattern(pattern));
    },
    Navigator_mediaDevices_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].mediaDevices);
    },
    Navigator_getUserMedia: function(ctx, constraints, successCallbackCtx, successCallbackPtr, errorCallbackCtx, errorCallbackPtr) {
      spasm.objects[ctx].getUserMedia(spasm.objects[constraints], (stream)=>{spasm.callback_void_Handle(successCallbackCtx, successCallbackPtr, spasm.addObject(stream))}, (error)=>{spasm.callback_void_Handle(errorCallbackCtx, errorCallbackPtr, spasm.addObject(error))});
    },
    Navigator_maxTouchPoints_Get: function(ctx) {
      return spasm.objects[ctx].maxTouchPoints;
    },
    Navigator_serviceWorker_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].serviceWorker);
    },
    NavigatorConcurrentHardware_hardwareConcurrency_Get: function(ctx) {
      return spasm.objects[ctx].hardwareConcurrency;
    },
    NavigatorPlugins_plugins_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].plugins);
    },
    NavigatorPlugins_mimeTypes_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].mimeTypes);
    },
    NavigatorPlugins_javaEnabled: function(ctx) {
      return spasm.objects[ctx].javaEnabled();
    },
    NavigatorCookies_cookieEnabled_Get: function(ctx) {
      return spasm.objects[ctx].cookieEnabled;
    },
    NavigatorContentUtils_registerProtocolHandler: function(ctx, schemeLen, schemePtr, urlLen, urlPtr, titleLen, titlePtr) {
      spasm.objects[ctx].registerProtocolHandler(spasm.decode_string(schemeLen, schemePtr), spasm.decode_string(urlLen, urlPtr), spasm.decode_string(titleLen, titlePtr));
    },
    NavigatorContentUtils_unregisterProtocolHandler: function(ctx, schemeLen, schemePtr, urlLen, urlPtr) {
      spasm.objects[ctx].unregisterProtocolHandler(spasm.decode_string(schemeLen, schemePtr), spasm.decode_string(urlLen, urlPtr));
    },
    NavigatorOnLine_onLine_Get: function(ctx) {
      return spasm.objects[ctx].onLine;
    },
    NavigatorLanguage_language_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].language);
    },
    NavigatorLanguage_languages_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].languages);
    },
    NavigatorID_appCodeName_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].appCodeName);
    },
    NavigatorID_appName_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].appName);
    },
    NavigatorID_appVersion_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].appVersion);
    },
    NavigatorID_platform_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].platform);
    },
    NavigatorID_product_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].product);
    },
    NavigatorID_productSub_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].productSub);
    },
    NavigatorID_userAgent_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].userAgent);
    },
    NavigatorID_vendor_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].vendor);
    },
    NavigatorID_vendorSub_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].vendorSub);
    },
    NavigatorID_taintEnabled: function(ctx) {
      return spasm.objects[ctx].taintEnabled();
    },
    NavigatorID_oscpu_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].oscpu);
    },
    OffscreenCanvas_width_Set: function(ctx, width) {
      spasm.objects[ctx].width = width;
    },
    OffscreenCanvas_width_Get: function(ctx) {
      return spasm.objects[ctx].width;
    },
    OffscreenCanvas_height_Set: function(ctx, height) {
      spasm.objects[ctx].height = height;
    },
    OffscreenCanvas_height_Get: function(ctx) {
      return spasm.objects[ctx].height;
    },
    OffscreenCanvas_getContext: function(rawResult, ctx, contextId, options) {
      spasm.encode.optional_OffscreenRenderingContext(rawResult, spasm.objects[ctx].getContext(spasm.decode_OffscreenRenderingContextId(contextId), spasm.objects[options]));
    },
    OffscreenCanvas_transferToImageBitmap: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].transferToImageBitmap());
    },
    OffscreenCanvas_convertToBlob: function(ctx, options) {
      return spasm.addObject(spasm.objects[ctx].convertToBlob(spasm.objects[options]));
    },
    OffscreenCanvasRenderingContext2D_commit: function(ctx) {
      spasm.objects[ctx].commit();
    },
    OffscreenCanvasRenderingContext2D_canvas_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].canvas);
    },
    CanvasPath_closePath: function(ctx) {
      spasm.objects[ctx].closePath();
    },
    CanvasPath_moveTo: function(ctx, x, y) {
      spasm.objects[ctx].moveTo(x, y);
    },
    CanvasPath_lineTo: function(ctx, x, y) {
      spasm.objects[ctx].lineTo(x, y);
    },
    CanvasPath_quadraticCurveTo: function(ctx, cpx, cpy, x, y) {
      spasm.objects[ctx].quadraticCurveTo(cpx, cpy, x, y);
    },
    CanvasPath_bezierCurveTo: function(ctx, cp1x, cp1y, cp2x, cp2y, x, y) {
      spasm.objects[ctx].bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y);
    },
    CanvasPath_arcTo: function(ctx, x1, y1, x2, y2, radius) {
      spasm.objects[ctx].arcTo(x1, y1, x2, y2, radius);
    },
    CanvasPath_rect: function(ctx, x, y, w, h) {
      spasm.objects[ctx].rect(x, y, w, h);
    },
    CanvasPath_arc: function(ctx, x, y, radius, startAngle, endAngle, anticlockwise) {
      spasm.objects[ctx].arc(x, y, radius, startAngle, endAngle, anticlockwise);
    },
    CanvasPath_ellipse: function(ctx, x, y, radiusX, radiusY, rotation, startAngle, endAngle, anticlockwise) {
      spasm.objects[ctx].ellipse(x, y, radiusX, radiusY, rotation, startAngle, endAngle, anticlockwise);
    },
    CanvasPathDrawingStyles_setLineDash: function(ctx, segments) {
      spasm.objects[ctx].setLineDash(spasm.objects[segments]);
    },
    CanvasPathDrawingStyles_getLineDash: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getLineDash());
    },
    CanvasImageData_createImageData__int_int: function(ctx, sw, sh) {
      return spasm.addObject(spasm.objects[ctx].createImageData(sw, sh));
    },
    CanvasImageData_createImageData__Handle: function(ctx, imagedata) {
      return spasm.addObject(spasm.objects[ctx].createImageData(spasm.objects[imagedata]));
    },
    CanvasImageData_getImageData: function(ctx, sx, sy, sw, sh) {
      return spasm.addObject(spasm.objects[ctx].getImageData(sx, sy, sw, sh));
    },
    CanvasImageData_putImageData__Handle_int_int: function(ctx, imagedata, dx, dy) {
      spasm.objects[ctx].putImageData(spasm.objects[imagedata], dx, dy);
    },
    CanvasImageData_putImageData__Handle_int_int_int_int_int_int: function(ctx, imagedata, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight) {
      spasm.objects[ctx].putImageData(spasm.objects[imagedata], dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight);
    },
    CanvasDrawImage_drawImage__CanvasImageSource_double_double: function(ctx, image, dx, dy) {
      spasm.objects[ctx].drawImage(spasm.decode_CanvasImageSource(image), dx, dy);
    },
    CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double: function(ctx, image, dx, dy, dw, dh) {
      spasm.objects[ctx].drawImage(spasm.decode_CanvasImageSource(image), dx, dy, dw, dh);
    },
    CanvasDrawImage_drawImage__CanvasImageSource_double_double_double_double_double_double_double_double: function(ctx, image, sx, sy, sw, sh, dx, dy, dw, dh) {
      spasm.objects[ctx].drawImage(spasm.decode_CanvasImageSource(image), sx, sy, sw, sh, dx, dy, dw, dh);
    },
    CanvasText_fillText: function(ctx, textLen, textPtr, x, y, maxWidth) {
      spasm.objects[ctx].fillText(spasm.decode_string(textLen, textPtr), x, y, maxWidth);
    },
    CanvasText_strokeText: function(ctx, textLen, textPtr, x, y, maxWidth) {
      spasm.objects[ctx].strokeText(spasm.decode_string(textLen, textPtr), x, y, maxWidth);
    },
    CanvasText_measureText: function(ctx, textLen, textPtr) {
      return spasm.addObject(spasm.objects[ctx].measureText(spasm.decode_string(textLen, textPtr)));
    },
    CanvasDrawPath_beginPath: function(ctx) {
      spasm.objects[ctx].beginPath();
    },
    CanvasDrawPath_fill__CanvasFillRule: function(ctx, fillRule) {
      spasm.objects[ctx].fill(spasm.decode_CanvasFillRule(fillRule));
    },
    CanvasDrawPath_fill__Handle_CanvasFillRule: function(ctx, path, fillRule) {
      spasm.objects[ctx].fill(spasm.objects[path], spasm.decode_CanvasFillRule(fillRule));
    },
    CanvasDrawPath_stroke__: function(ctx) {
      spasm.objects[ctx].stroke();
    },
    CanvasDrawPath_stroke__Handle: function(ctx, path) {
      spasm.objects[ctx].stroke(spasm.objects[path]);
    },
    CanvasDrawPath_clip__CanvasFillRule: function(ctx, fillRule) {
      spasm.objects[ctx].clip(spasm.decode_CanvasFillRule(fillRule));
    },
    CanvasDrawPath_clip__Handle_CanvasFillRule: function(ctx, path, fillRule) {
      spasm.objects[ctx].clip(spasm.objects[path], spasm.decode_CanvasFillRule(fillRule));
    },
    CanvasDrawPath_isPointInPath__double_double_CanvasFillRule: function(ctx, x, y, fillRule) {
      return spasm.objects[ctx].isPointInPath(x, y, spasm.decode_CanvasFillRule(fillRule));
    },
    CanvasDrawPath_isPointInPath__Handle_double_double_CanvasFillRule: function(ctx, path, x, y, fillRule) {
      return spasm.objects[ctx].isPointInPath(spasm.objects[path], x, y, spasm.decode_CanvasFillRule(fillRule));
    },
    CanvasDrawPath_isPointInStroke__double_double: function(ctx, x, y) {
      return spasm.objects[ctx].isPointInStroke(x, y);
    },
    CanvasDrawPath_isPointInStroke__Handle_double_double: function(ctx, path, x, y) {
      return spasm.objects[ctx].isPointInStroke(spasm.objects[path], x, y);
    },
    CanvasRect_clearRect: function(ctx, x, y, w, h) {
      spasm.objects[ctx].clearRect(x, y, w, h);
    },
    CanvasRect_fillRect: function(ctx, x, y, w, h) {
      spasm.objects[ctx].fillRect(x, y, w, h);
    },
    CanvasRect_strokeRect: function(ctx, x, y, w, h) {
      spasm.objects[ctx].strokeRect(x, y, w, h);
    },
    CanvasFillStrokeStyles_createLinearGradient: function(ctx, x0, y0, x1, y1) {
      return spasm.addObject(spasm.objects[ctx].createLinearGradient(x0, y0, x1, y1));
    },
    CanvasFillStrokeStyles_createRadialGradient: function(ctx, x0, y0, r0, x1, y1, r1) {
      return spasm.addObject(spasm.objects[ctx].createRadialGradient(x0, y0, r0, x1, y1, r1));
    },
    CanvasFillStrokeStyles_createPattern: function(rawResult, ctx, image, repetitionLen, repetitionPtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].createPattern(spasm.decode_CanvasImageSource(image), spasm.decode_string(repetitionLen, repetitionPtr)));
    },
    CanvasTransform_scale: function(ctx, x, y) {
      spasm.objects[ctx].scale(x, y);
    },
    CanvasTransform_rotate: function(ctx, angle) {
      spasm.objects[ctx].rotate(angle);
    },
    CanvasTransform_translate: function(ctx, x, y) {
      spasm.objects[ctx].translate(x, y);
    },
    CanvasTransform_transform: function(ctx, a, b, c, d, e, f) {
      spasm.objects[ctx].transform(a, b, c, d, e, f);
    },
    CanvasTransform_getTransform: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].getTransform());
    },
    CanvasTransform_setTransform__double_double_double_double_double_double: function(ctx, a, b, c, d, e, f) {
      spasm.objects[ctx].setTransform(a, b, c, d, e, f);
    },
    CanvasTransform_setTransform__Handle: function(ctx, transform) {
      spasm.objects[ctx].setTransform(spasm.objects[transform]);
    },
    CanvasTransform_resetTransform: function(ctx) {
      spasm.objects[ctx].resetTransform();
    },
    CanvasState_save: function(ctx) {
      spasm.objects[ctx].save();
    },
    CanvasState_restore: function(ctx) {
      spasm.objects[ctx].restore();
    },
    PageTransitionEvent_persisted_Get: function(ctx) {
      return spasm.objects[ctx].persisted;
    },
    PageTransitionEventInit_persisted_Set: function(ctx, persisted) {
      spasm.objects[ctx].persisted = persisted;
    },
    PageTransitionEventInit_persisted_Get: function(ctx) {
      return spasm.objects[ctx].persisted;
    },
    Path2D_addPath: function(ctx, path, transform) {
      spasm.objects[ctx].addPath(spasm.objects[path], spasm.objects[transform]);
    },
    CanvasPath_closePath: function(ctx) {
      spasm.objects[ctx].closePath();
    },
    CanvasPath_moveTo: function(ctx, x, y) {
      spasm.objects[ctx].moveTo(x, y);
    },
    CanvasPath_lineTo: function(ctx, x, y) {
      spasm.objects[ctx].lineTo(x, y);
    },
    CanvasPath_quadraticCurveTo: function(ctx, cpx, cpy, x, y) {
      spasm.objects[ctx].quadraticCurveTo(cpx, cpy, x, y);
    },
    CanvasPath_bezierCurveTo: function(ctx, cp1x, cp1y, cp2x, cp2y, x, y) {
      spasm.objects[ctx].bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y);
    },
    CanvasPath_arcTo: function(ctx, x1, y1, x2, y2, radius) {
      spasm.objects[ctx].arcTo(x1, y1, x2, y2, radius);
    },
    CanvasPath_rect: function(ctx, x, y, w, h) {
      spasm.objects[ctx].rect(x, y, w, h);
    },
    CanvasPath_arc: function(ctx, x, y, radius, startAngle, endAngle, anticlockwise) {
      spasm.objects[ctx].arc(x, y, radius, startAngle, endAngle, anticlockwise);
    },
    CanvasPath_ellipse: function(ctx, x, y, radiusX, radiusY, rotation, startAngle, endAngle, anticlockwise) {
      spasm.objects[ctx].ellipse(x, y, radiusX, radiusY, rotation, startAngle, endAngle, anticlockwise);
    },
    Plugin_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    Plugin_description_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].description);
    },
    Plugin_filename_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].filename);
    },
    Plugin_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    Plugin_item_getter: function(rawResult, ctx, index) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].item(index));
    },
    Plugin_namedItem_getter: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].namedItem(spasm.decode_string(nameLen, namePtr)));
    },
    PluginArray_refresh: function(ctx, reload) {
      spasm.objects[ctx].refresh(reload);
    },
    PluginArray_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    PluginArray_item_getter: function(rawResult, ctx, index) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].item(index));
    },
    PluginArray_namedItem_getter: function(rawResult, ctx, nameLen, namePtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].namedItem(spasm.decode_string(nameLen, namePtr)));
    },
    PopStateEvent_state_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].state);
    },
    PopStateEventInit_state_Set: function(ctx, state) {
      spasm.objects[ctx].state = spasm.objects[state];
    },
    PopStateEventInit_state_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].state);
    },
    PostMessageOptions_transfer_Set: function(ctx, transfer) {
      spasm.objects[ctx].transfer = spasm.objects[transfer];
    },
    PostMessageOptions_transfer_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].transfer);
    },
    PromiseRejectionEvent_promise_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].promise);
    },
    PromiseRejectionEvent_reason_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].reason);
    },
    PromiseRejectionEventInit_promise_Set: function(ctx, promise) {
      spasm.objects[ctx].promise = spasm.objects[promise];
    },
    PromiseRejectionEventInit_promise_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].promise);
    },
    PromiseRejectionEventInit_reason_Set: function(ctx, reason) {
      spasm.objects[ctx].reason = spasm.objects[reason];
    },
    PromiseRejectionEventInit_reason_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].reason);
    },
    RadioNodeList_value_Set: function(ctx, valueLen, valuePtr) {
      spasm.objects[ctx].value = spasm.decode_string(valueLen, valuePtr);
    },
    RadioNodeList_value_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].value);
    },
    SharedWorker_port_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].port);
    },
    SharedWorkerGlobalScope_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    SharedWorkerGlobalScope_close: function(ctx) {
      spasm.objects[ctx].close();
    },
    SharedWorkerGlobalScope_onconnect_Set: function(ctx, onconnect) {
      spasm.objects[ctx].onconnect = onconnect;
    },
    SharedWorkerGlobalScope_onconnect_Get: function(ctx) {
      return spasm.objects[ctx].onconnect;
    },
    Storage_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    Storage_key: function(rawResult, ctx, index) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].key(index));
    },
    Storage_getItem_getter: function(rawResult, ctx, keyLen, keyPtr) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].getItem(spasm.decode_string(keyLen, keyPtr)));
    },
    Storage_setItem_setter: function(ctx, keyLen, keyPtr, valueLen, valuePtr) {
      spasm.objects[ctx].setItem(spasm.decode_string(keyLen, keyPtr), spasm.decode_string(valueLen, valuePtr));
    },
    Storage_removeItem: function(ctx, keyLen, keyPtr) {
      spasm.objects[ctx].removeItem(spasm.decode_string(keyLen, keyPtr));
    },
    Storage_clear: function(ctx) {
      spasm.objects[ctx].clear();
    },
    StorageEvent_key_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].key);
    },
    StorageEvent_oldValue_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].oldValue);
    },
    StorageEvent_newValue_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].newValue);
    },
    StorageEvent_url_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].url);
    },
    StorageEvent_storageArea_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].storageArea);
    },
    StorageEvent_initStorageEvent: function(ctx, typeLen, typePtr, bubbles, cancelable, keyDefined, keyLen, keyPtr, oldValueDefined, oldValueLen, oldValuePtr, newValueDefined, newValueLen, newValuePtr, urlLen, urlPtr, storageAreaDefined, storageArea) {
      spasm.objects[ctx].initStorageEvent(spasm.decode_string(typeLen, typePtr), bubbles, cancelable, keyDefined ? spasm.decode_string(keyLen, keyPtr) : undefined, oldValueDefined ? spasm.decode_string(oldValueLen, oldValuePtr) : undefined, newValueDefined ? spasm.decode_string(newValueLen, newValuePtr) : undefined, spasm.decode_string(urlLen, urlPtr), storageAreaDefined ? spasm.objects[storageArea] : undefined);
    },
    StorageEventInit_key_Set: function(ctx, keyDefined, keyLen, keyPtr) {
      spasm.objects[ctx].key = keyDefined ? spasm.decode_string(keyLen, keyPtr) : undefined;
    },
    StorageEventInit_key_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].key);
    },
    StorageEventInit_oldValue_Set: function(ctx, oldValueDefined, oldValueLen, oldValuePtr) {
      spasm.objects[ctx].oldValue = oldValueDefined ? spasm.decode_string(oldValueLen, oldValuePtr) : undefined;
    },
    StorageEventInit_oldValue_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].oldValue);
    },
    StorageEventInit_newValue_Set: function(ctx, newValueDefined, newValueLen, newValuePtr) {
      spasm.objects[ctx].newValue = newValueDefined ? spasm.decode_string(newValueLen, newValuePtr) : undefined;
    },
    StorageEventInit_newValue_Get: function(rawResult, ctx) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].newValue);
    },
    StorageEventInit_url_Set: function(ctx, urlLen, urlPtr) {
      spasm.objects[ctx].url = spasm.decode_string(urlLen, urlPtr);
    },
    StorageEventInit_url_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].url);
    },
    StorageEventInit_storageArea_Set: function(ctx, storageAreaDefined, storageArea) {
      spasm.objects[ctx].storageArea = storageAreaDefined ? spasm.objects[storageArea] : undefined;
    },
    StorageEventInit_storageArea_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].storageArea);
    },
    TextMetrics_width_Get: function(ctx) {
      return spasm.objects[ctx].width;
    },
    TextMetrics_actualBoundingBoxLeft_Get: function(ctx) {
      return spasm.objects[ctx].actualBoundingBoxLeft;
    },
    TextMetrics_actualBoundingBoxRight_Get: function(ctx) {
      return spasm.objects[ctx].actualBoundingBoxRight;
    },
    TextMetrics_fontBoundingBoxAscent_Get: function(ctx) {
      return spasm.objects[ctx].fontBoundingBoxAscent;
    },
    TextMetrics_fontBoundingBoxDescent_Get: function(ctx) {
      return spasm.objects[ctx].fontBoundingBoxDescent;
    },
    TextMetrics_actualBoundingBoxAscent_Get: function(ctx) {
      return spasm.objects[ctx].actualBoundingBoxAscent;
    },
    TextMetrics_actualBoundingBoxDescent_Get: function(ctx) {
      return spasm.objects[ctx].actualBoundingBoxDescent;
    },
    TextMetrics_emHeightAscent_Get: function(ctx) {
      return spasm.objects[ctx].emHeightAscent;
    },
    TextMetrics_emHeightDescent_Get: function(ctx) {
      return spasm.objects[ctx].emHeightDescent;
    },
    TextMetrics_hangingBaseline_Get: function(ctx) {
      return spasm.objects[ctx].hangingBaseline;
    },
    TextMetrics_alphabeticBaseline_Get: function(ctx) {
      return spasm.objects[ctx].alphabeticBaseline;
    },
    TextMetrics_ideographicBaseline_Get: function(ctx) {
      return spasm.objects[ctx].ideographicBaseline;
    },
    TextTrack_kind_Get: function(ctx) {
      return spasm.encode.TextTrackKind(spasm.objects[ctx].kind);
    },
    TextTrack_label_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].label);
    },
    TextTrack_language_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].language);
    },
    TextTrack_id_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].id);
    },
    TextTrack_inBandMetadataTrackDispatchType_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].inBandMetadataTrackDispatchType);
    },
    TextTrack_mode_Set: function(ctx, mode) {
      spasm.objects[ctx].mode = spasm.decode_TextTrackMode(mode);
    },
    TextTrack_mode_Get: function(ctx) {
      return spasm.encode.TextTrackMode(spasm.objects[ctx].mode);
    },
    TextTrack_cues_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].cues);
    },
    TextTrack_activeCues_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].activeCues);
    },
    TextTrack_addCue: function(ctx, cue) {
      spasm.objects[ctx].addCue(spasm.objects[cue]);
    },
    TextTrack_removeCue: function(ctx, cue) {
      spasm.objects[ctx].removeCue(spasm.objects[cue]);
    },
    TextTrack_oncuechange_Set: function(ctx, oncuechange) {
      spasm.objects[ctx].oncuechange = oncuechange;
    },
    TextTrack_oncuechange_Get: function(ctx) {
      return spasm.objects[ctx].oncuechange;
    },
    TextTrack_sourceBuffer_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].sourceBuffer);
    },
    TextTrackCue_track_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].track);
    },
    TextTrackCue_id_Set: function(ctx, idLen, idPtr) {
      spasm.objects[ctx].id = spasm.decode_string(idLen, idPtr);
    },
    TextTrackCue_id_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].id);
    },
    TextTrackCue_startTime_Set: function(ctx, startTime) {
      spasm.objects[ctx].startTime = startTime;
    },
    TextTrackCue_startTime_Get: function(ctx) {
      return spasm.objects[ctx].startTime;
    },
    TextTrackCue_endTime_Set: function(ctx, endTime) {
      spasm.objects[ctx].endTime = endTime;
    },
    TextTrackCue_endTime_Get: function(ctx) {
      return spasm.objects[ctx].endTime;
    },
    TextTrackCue_pauseOnExit_Set: function(ctx, pauseOnExit) {
      spasm.objects[ctx].pauseOnExit = pauseOnExit;
    },
    TextTrackCue_pauseOnExit_Get: function(ctx) {
      return spasm.objects[ctx].pauseOnExit;
    },
    TextTrackCue_onenter_Set: function(ctx, onenter) {
      spasm.objects[ctx].onenter = onenter;
    },
    TextTrackCue_onenter_Get: function(ctx) {
      return spasm.objects[ctx].onenter;
    },
    TextTrackCue_onexit_Set: function(ctx, onexit) {
      spasm.objects[ctx].onexit = onexit;
    },
    TextTrackCue_onexit_Get: function(ctx) {
      return spasm.objects[ctx].onexit;
    },
    TextTrackCueList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    TextTrackCueList_getter__uint: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx][index]);
    },
    TextTrackCueList_getCueById: function(rawResult, ctx, idLen, idPtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getCueById(spasm.decode_string(idLen, idPtr)));
    },
    TextTrackList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    TextTrackList_getter__uint: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx][index]);
    },
    TextTrackList_getTrackById: function(rawResult, ctx, idLen, idPtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getTrackById(spasm.decode_string(idLen, idPtr)));
    },
    TextTrackList_onchange_Set: function(ctx, onchange) {
      spasm.objects[ctx].onchange = onchange;
    },
    TextTrackList_onchange_Get: function(ctx) {
      return spasm.objects[ctx].onchange;
    },
    TextTrackList_onaddtrack_Set: function(ctx, onaddtrack) {
      spasm.objects[ctx].onaddtrack = onaddtrack;
    },
    TextTrackList_onaddtrack_Get: function(ctx) {
      return spasm.objects[ctx].onaddtrack;
    },
    TextTrackList_onremovetrack_Set: function(ctx, onremovetrack) {
      spasm.objects[ctx].onremovetrack = onremovetrack;
    },
    TextTrackList_onremovetrack_Get: function(ctx) {
      return spasm.objects[ctx].onremovetrack;
    },
    TimeRanges_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    TimeRanges_start: function(ctx, index) {
      return spasm.objects[ctx].start(index);
    },
    TimeRanges_end: function(ctx, index) {
      return spasm.objects[ctx].end(index);
    },
    TrackEvent_track_Get: function(rawResult, ctx) {
      spasm.encode.optional_union3_VideoTrack_AudioTrack_TextTrack(rawResult, spasm.objects[ctx].track);
    },
    TrackEventInit_track_Set: function(ctx, trackDefined, track) {
      spasm.objects[ctx].track = trackDefined ? spasm.decode_union3_VideoTrack_AudioTrack_TextTrack(track) : undefined;
    },
    TrackEventInit_track_Get: function(rawResult, ctx) {
      spasm.encode.optional_union3_VideoTrack_AudioTrack_TextTrack(rawResult, spasm.objects[ctx].track);
    },
    ValidityState_valueMissing_Get: function(ctx) {
      return spasm.objects[ctx].valueMissing;
    },
    ValidityState_typeMismatch_Get: function(ctx) {
      return spasm.objects[ctx].typeMismatch;
    },
    ValidityState_patternMismatch_Get: function(ctx) {
      return spasm.objects[ctx].patternMismatch;
    },
    ValidityState_tooLong_Get: function(ctx) {
      return spasm.objects[ctx].tooLong;
    },
    ValidityState_tooShort_Get: function(ctx) {
      return spasm.objects[ctx].tooShort;
    },
    ValidityState_rangeUnderflow_Get: function(ctx) {
      return spasm.objects[ctx].rangeUnderflow;
    },
    ValidityState_rangeOverflow_Get: function(ctx) {
      return spasm.objects[ctx].rangeOverflow;
    },
    ValidityState_stepMismatch_Get: function(ctx) {
      return spasm.objects[ctx].stepMismatch;
    },
    ValidityState_badInput_Get: function(ctx) {
      return spasm.objects[ctx].badInput;
    },
    ValidityState_customError_Get: function(ctx) {
      return spasm.objects[ctx].customError;
    },
    ValidityState_valid_Get: function(ctx) {
      return spasm.objects[ctx].valid;
    },
    VideoTrack_id_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].id);
    },
    VideoTrack_kind_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].kind);
    },
    VideoTrack_label_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].label);
    },
    VideoTrack_language_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].language);
    },
    VideoTrack_selected_Set: function(ctx, selected) {
      spasm.objects[ctx].selected = selected;
    },
    VideoTrack_selected_Get: function(ctx) {
      return spasm.objects[ctx].selected;
    },
    VideoTrack_sourceBuffer_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].sourceBuffer);
    },
    VideoTrackList_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    VideoTrackList_getter__uint: function(ctx, index) {
      return spasm.addObject(spasm.objects[ctx][index]);
    },
    VideoTrackList_getTrackById: function(rawResult, ctx, idLen, idPtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].getTrackById(spasm.decode_string(idLen, idPtr)));
    },
    VideoTrackList_selectedIndex_Get: function(ctx) {
      return spasm.objects[ctx].selectedIndex;
    },
    VideoTrackList_onchange_Set: function(ctx, onchange) {
      spasm.objects[ctx].onchange = onchange;
    },
    VideoTrackList_onchange_Get: function(ctx) {
      return spasm.objects[ctx].onchange;
    },
    VideoTrackList_onaddtrack_Set: function(ctx, onaddtrack) {
      spasm.objects[ctx].onaddtrack = onaddtrack;
    },
    VideoTrackList_onaddtrack_Get: function(ctx) {
      return spasm.objects[ctx].onaddtrack;
    },
    VideoTrackList_onremovetrack_Set: function(ctx, onremovetrack) {
      spasm.objects[ctx].onremovetrack = onremovetrack;
    },
    VideoTrackList_onremovetrack_Get: function(ctx) {
      return spasm.objects[ctx].onremovetrack;
    },
    WebSocket_url_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].url);
    },
    WebSocket_readyState_Get: function(ctx) {
      return spasm.objects[ctx].readyState;
    },
    WebSocket_bufferedAmount_Get: function(ctx) {
      return spasm.objects[ctx].bufferedAmount;
    },
    WebSocket_onopen_Set: function(ctx, onopen) {
      spasm.objects[ctx].onopen = onopen;
    },
    WebSocket_onopen_Get: function(ctx) {
      return spasm.objects[ctx].onopen;
    },
    WebSocket_onerror_Set: function(ctx, onerror) {
      spasm.objects[ctx].onerror = onerror;
    },
    WebSocket_onerror_Get: function(ctx) {
      return spasm.objects[ctx].onerror;
    },
    WebSocket_onclose_Set: function(ctx, onclose) {
      spasm.objects[ctx].onclose = onclose;
    },
    WebSocket_onclose_Get: function(ctx) {
      return spasm.objects[ctx].onclose;
    },
    WebSocket_extensions_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].extensions);
    },
    WebSocket_protocol_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].protocol);
    },
    WebSocket_close: function(ctx, code, reasonLen, reasonPtr) {
      spasm.objects[ctx].close(code, spasm.decode_string(reasonLen, reasonPtr));
    },
    WebSocket_onmessage_Set: function(ctx, onmessage) {
      spasm.objects[ctx].onmessage = onmessage;
    },
    WebSocket_onmessage_Get: function(ctx) {
      return spasm.objects[ctx].onmessage;
    },
    WebSocket_binaryType_Set: function(ctx, binaryType) {
      spasm.objects[ctx].binaryType = spasm.decode_BinaryType(binaryType);
    },
    WebSocket_binaryType_Get: function(ctx) {
      return spasm.encode.BinaryType(spasm.objects[ctx].binaryType);
    },
    WebSocket_send__string: function(ctx, dataLen, dataPtr) {
      spasm.objects[ctx].send(spasm.decode_string(dataLen, dataPtr));
    },
    WebSocket_send__Handle: function(ctx, data) {
      spasm.objects[ctx].send(spasm.objects[data]);
    },
    WebSocket_send__ArrayBufferView: function(ctx, data) {
      spasm.objects[ctx].send(spasm.decode_ArrayBufferView(data));
    },
    Window_window_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].window);
    },
    Window_self_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].self);
    },
    Window_document_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].document);
    },
    Window_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    Window_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    Window_location_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].location);
    },
    Window_history_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].history);
    },
    Window_customElements_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].customElements);
    },
    Window_locationbar_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].locationbar);
    },
    Window_menubar_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].menubar);
    },
    Window_personalbar_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].personalbar);
    },
    Window_scrollbars_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].scrollbars);
    },
    Window_statusbar_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].statusbar);
    },
    Window_toolbar_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].toolbar);
    },
    Window_status_Set: function(ctx, statusLen, statusPtr) {
      spasm.objects[ctx].status = spasm.decode_string(statusLen, statusPtr);
    },
    Window_status_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].status);
    },
    Window_close: function(ctx) {
      spasm.objects[ctx].close();
    },
    Window_closed_Get: function(ctx) {
      return spasm.objects[ctx].closed;
    },
    Window_stop: function(ctx) {
      spasm.objects[ctx].stop();
    },
    Window_focus: function(ctx) {
      spasm.objects[ctx].focus();
    },
    Window_blur: function(ctx) {
      spasm.objects[ctx].blur();
    },
    Window_frames_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].frames);
    },
    Window_length_Get: function(ctx) {
      return spasm.objects[ctx].length;
    },
    Window_top_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].top);
    },
    Window_opener_Set: function(ctx, opener) {
      spasm.objects[ctx].opener = spasm.objects[opener];
    },
    Window_opener_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].opener);
    },
    Window_parent_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].parent);
    },
    Window_frameElement_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].frameElement);
    },
    Window_open: function(rawResult, ctx, urlLen, urlPtr, targetLen, targetPtr, featuresLen, featuresPtr) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].open(spasm.decode_string(urlLen, urlPtr), spasm.decode_string(targetLen, targetPtr), spasm.decode_string(featuresLen, featuresPtr)));
    },
    Window_getter__string: function(ctx, nameLen, namePtr) {
      return spasm.addObject(spasm.objects[ctx][spasm.decode_string(nameLen, namePtr)]);
    },
    Window_navigator_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].navigator);
    },
    Window_applicationCache_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].applicationCache);
    },
    Window_alert__: function(ctx) {
      spasm.objects[ctx].alert();
    },
    Window_alert__string: function(ctx, messageLen, messagePtr) {
      spasm.objects[ctx].alert(spasm.decode_string(messageLen, messagePtr));
    },
    Window_confirm: function(ctx, messageLen, messagePtr) {
      return spasm.objects[ctx].confirm(spasm.decode_string(messageLen, messagePtr));
    },
    Window_prompt: function(rawResult, ctx, messageLen, messagePtr, default_Len, default_Ptr) {
      spasm.encode.optional_string(rawResult, spasm.objects[ctx].prompt(spasm.decode_string(messageLen, messagePtr), spasm.decode_string(default_Len, default_Ptr)));
    },
    Window_print: function(ctx) {
      spasm.objects[ctx].print();
    },
    Window_postMessage__Any_string_sequence: function(ctx, message, targetOriginLen, targetOriginPtr, transfer) {
      spasm.objects[ctx].postMessage(spasm.objects[message], spasm.decode_string(targetOriginLen, targetOriginPtr), spasm.objects[transfer]);
    },
    Window_postMessage__Any_Handle: function(ctx, message, options) {
      spasm.objects[ctx].postMessage(spasm.objects[message], spasm.objects[options]);
    },
    Window_event_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].event);
    },
    Window_captureEvents: function(ctx) {
      spasm.objects[ctx].captureEvents();
    },
    Window_releaseEvents: function(ctx) {
      spasm.objects[ctx].releaseEvents();
    },
    Window_external_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].external);
    },
    Window_orientation_Get: function(ctx) {
      return spasm.objects[ctx].orientation;
    },
    Window_onorientationchange_Set: function(ctx, onorientationchange) {
      spasm.objects[ctx].onorientationchange = onorientationchange;
    },
    Window_onorientationchange_Get: function(ctx) {
      return spasm.objects[ctx].onorientationchange;
    },
    WindowLocalStorage_localStorage_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].localStorage);
    },
    WindowSessionStorage_sessionStorage_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].sessionStorage);
    },
    AnimationFrameProvider_requestAnimationFrame: function(ctx, callbackCtx, callbackPtr) {
      return spasm.objects[ctx].requestAnimationFrame((time)=>{spasm.callback_void_double(callbackCtx, callbackPtr, time)});
    },
    AnimationFrameProvider_cancelAnimationFrame: function(ctx, handle) {
      spasm.objects[ctx].cancelAnimationFrame(handle);
    },
    WindowOrWorkerGlobalScope_origin_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].origin);
    },
    WindowOrWorkerGlobalScope_btoa: function(rawResult, ctx, dataLen, dataPtr) {
      spasm.encode.string(rawResult, spasm.objects[ctx].btoa(spasm.decode_string(dataLen, dataPtr)));
    },
    WindowOrWorkerGlobalScope_atob: function(rawResult, ctx, dataLen, dataPtr) {
      spasm.encode.string(rawResult, spasm.objects[ctx].atob(spasm.decode_string(dataLen, dataPtr)));
    },
    WindowOrWorkerGlobalScope_setTimeout: function(ctx, handler, timeout, arguments_) {
      return spasm.objects[ctx].setTimeout(spasm.decode_TimerHandler(handler), timeout, spasm.objects[arguments_]);
    },
    WindowOrWorkerGlobalScope_clearTimeout: function(ctx, handle) {
      spasm.objects[ctx].clearTimeout(handle);
    },
    WindowOrWorkerGlobalScope_setInterval: function(ctx, handler, timeout, arguments_) {
      return spasm.objects[ctx].setInterval(spasm.decode_TimerHandler(handler), timeout, spasm.objects[arguments_]);
    },
    WindowOrWorkerGlobalScope_clearInterval: function(ctx, handle) {
      spasm.objects[ctx].clearInterval(handle);
    },
    WindowOrWorkerGlobalScope_queueMicrotask: function(ctx, callbackCtx, callbackPtr) {
      spasm.objects[ctx].queueMicrotask(()=>{spasm.callback_void(callbackCtx, callbackPtr)});
    },
    WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_Handle: function(ctx, image, options) {
      return spasm.addObject(spasm.objects[ctx].createImageBitmap(spasm.decode_ImageBitmapSource(image), spasm.objects[options]));
    },
    WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_int_int_int_int_Handle: function(ctx, image, sx, sy, sw, sh, options) {
      return spasm.addObject(spasm.objects[ctx].createImageBitmap(spasm.decode_ImageBitmapSource(image), sx, sy, sw, sh, spasm.objects[options]));
    },
    WindowOrWorkerGlobalScope_fetch: function(ctx, input, init) {
      return spasm.addObject(spasm.objects[ctx].fetch(spasm.decode_RequestInfo(input), spasm.objects[init]));
    },
    WindowOrWorkerGlobalScope_indexedDB_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].indexedDB);
    },
    WindowOrWorkerGlobalScope_caches_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].caches);
    },
    GlobalEventHandlers_ongotpointercapture_Set: function(ctx, ongotpointercapture) {
      spasm.objects[ctx].ongotpointercapture = ongotpointercapture;
    },
    GlobalEventHandlers_ongotpointercapture_Get: function(ctx) {
      return spasm.objects[ctx].ongotpointercapture;
    },
    GlobalEventHandlers_onlostpointercapture_Set: function(ctx, onlostpointercapture) {
      spasm.objects[ctx].onlostpointercapture = onlostpointercapture;
    },
    GlobalEventHandlers_onlostpointercapture_Get: function(ctx) {
      return spasm.objects[ctx].onlostpointercapture;
    },
    GlobalEventHandlers_onpointerdown_Set: function(ctx, onpointerdown) {
      spasm.objects[ctx].onpointerdown = onpointerdown;
    },
    GlobalEventHandlers_onpointerdown_Get: function(ctx) {
      return spasm.objects[ctx].onpointerdown;
    },
    GlobalEventHandlers_onpointermove_Set: function(ctx, onpointermove) {
      spasm.objects[ctx].onpointermove = onpointermove;
    },
    GlobalEventHandlers_onpointermove_Get: function(ctx) {
      return spasm.objects[ctx].onpointermove;
    },
    GlobalEventHandlers_onpointerup_Set: function(ctx, onpointerup) {
      spasm.objects[ctx].onpointerup = onpointerup;
    },
    GlobalEventHandlers_onpointerup_Get: function(ctx) {
      return spasm.objects[ctx].onpointerup;
    },
    GlobalEventHandlers_onpointercancel_Set: function(ctx, onpointercancel) {
      spasm.objects[ctx].onpointercancel = onpointercancel;
    },
    GlobalEventHandlers_onpointercancel_Get: function(ctx) {
      return spasm.objects[ctx].onpointercancel;
    },
    GlobalEventHandlers_onpointerover_Set: function(ctx, onpointerover) {
      spasm.objects[ctx].onpointerover = onpointerover;
    },
    GlobalEventHandlers_onpointerover_Get: function(ctx) {
      return spasm.objects[ctx].onpointerover;
    },
    GlobalEventHandlers_onpointerout_Set: function(ctx, onpointerout) {
      spasm.objects[ctx].onpointerout = onpointerout;
    },
    GlobalEventHandlers_onpointerout_Get: function(ctx) {
      return spasm.objects[ctx].onpointerout;
    },
    GlobalEventHandlers_onpointerenter_Set: function(ctx, onpointerenter) {
      spasm.objects[ctx].onpointerenter = onpointerenter;
    },
    GlobalEventHandlers_onpointerenter_Get: function(ctx) {
      return spasm.objects[ctx].onpointerenter;
    },
    GlobalEventHandlers_onpointerleave_Set: function(ctx, onpointerleave) {
      spasm.objects[ctx].onpointerleave = onpointerleave;
    },
    GlobalEventHandlers_onpointerleave_Get: function(ctx) {
      return spasm.objects[ctx].onpointerleave;
    },
    GlobalEventHandlers_ontouchstart_Set: function(ctx, ontouchstart) {
      spasm.objects[ctx].ontouchstart = ontouchstart;
    },
    GlobalEventHandlers_ontouchstart_Get: function(ctx) {
      return spasm.objects[ctx].ontouchstart;
    },
    GlobalEventHandlers_ontouchend_Set: function(ctx, ontouchend) {
      spasm.objects[ctx].ontouchend = ontouchend;
    },
    GlobalEventHandlers_ontouchend_Get: function(ctx) {
      return spasm.objects[ctx].ontouchend;
    },
    GlobalEventHandlers_ontouchmove_Set: function(ctx, ontouchmove) {
      spasm.objects[ctx].ontouchmove = ontouchmove;
    },
    GlobalEventHandlers_ontouchmove_Get: function(ctx) {
      return spasm.objects[ctx].ontouchmove;
    },
    GlobalEventHandlers_ontouchcancel_Set: function(ctx, ontouchcancel) {
      spasm.objects[ctx].ontouchcancel = ontouchcancel;
    },
    GlobalEventHandlers_ontouchcancel_Get: function(ctx) {
      return spasm.objects[ctx].ontouchcancel;
    },
    WindowPostMessageOptions_targetOrigin_Set: function(ctx, targetOriginLen, targetOriginPtr) {
      spasm.objects[ctx].targetOrigin = spasm.decode_string(targetOriginLen, targetOriginPtr);
    },
    WindowPostMessageOptions_targetOrigin_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].targetOrigin);
    },
    Worker_terminate: function(ctx) {
      spasm.objects[ctx].terminate();
    },
    Worker_postMessage__Any_sequence: function(ctx, message, transfer) {
      spasm.objects[ctx].postMessage(spasm.objects[message], spasm.objects[transfer]);
    },
    Worker_postMessage__Any_Handle: function(ctx, message, options) {
      spasm.objects[ctx].postMessage(spasm.objects[message], spasm.objects[options]);
    },
    Worker_onmessage_Set: function(ctx, onmessage) {
      spasm.objects[ctx].onmessage = onmessage;
    },
    Worker_onmessage_Get: function(ctx) {
      return spasm.objects[ctx].onmessage;
    },
    Worker_onmessageerror_Set: function(ctx, onmessageerror) {
      spasm.objects[ctx].onmessageerror = onmessageerror;
    },
    Worker_onmessageerror_Get: function(ctx) {
      return spasm.objects[ctx].onmessageerror;
    },
    WorkerGlobalScope_self_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].self);
    },
    WorkerGlobalScope_location_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].location);
    },
    WorkerGlobalScope_navigator_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].navigator);
    },
    WorkerGlobalScope_importScripts: function(ctx, urlsLen, urlsPtr) {
      spasm.objects[ctx].importScripts(spasm.decode_string(urlsLen, urlsPtr));
    },
    WorkerGlobalScope_onerror_Set: function(ctx, onerrorDefined, onerror) {
      spasm.objects[ctx].onerror = onerrorDefined ? onerror : undefined;
    },
    WorkerGlobalScope_onerror_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].onerror);
    },
    WorkerGlobalScope_onlanguagechange_Set: function(ctx, onlanguagechange) {
      spasm.objects[ctx].onlanguagechange = onlanguagechange;
    },
    WorkerGlobalScope_onlanguagechange_Get: function(ctx) {
      return spasm.objects[ctx].onlanguagechange;
    },
    WorkerGlobalScope_onoffline_Set: function(ctx, onoffline) {
      spasm.objects[ctx].onoffline = onoffline;
    },
    WorkerGlobalScope_onoffline_Get: function(ctx) {
      return spasm.objects[ctx].onoffline;
    },
    WorkerGlobalScope_ononline_Set: function(ctx, ononline) {
      spasm.objects[ctx].ononline = ononline;
    },
    WorkerGlobalScope_ononline_Get: function(ctx) {
      return spasm.objects[ctx].ononline;
    },
    WorkerGlobalScope_onrejectionhandled_Set: function(ctx, onrejectionhandled) {
      spasm.objects[ctx].onrejectionhandled = onrejectionhandled;
    },
    WorkerGlobalScope_onrejectionhandled_Get: function(ctx) {
      return spasm.objects[ctx].onrejectionhandled;
    },
    WorkerGlobalScope_onunhandledrejection_Set: function(ctx, onunhandledrejection) {
      spasm.objects[ctx].onunhandledrejection = onunhandledrejection;
    },
    WorkerGlobalScope_onunhandledrejection_Get: function(ctx) {
      return spasm.objects[ctx].onunhandledrejection;
    },
    WindowOrWorkerGlobalScope_origin_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].origin);
    },
    WindowOrWorkerGlobalScope_btoa: function(rawResult, ctx, dataLen, dataPtr) {
      spasm.encode.string(rawResult, spasm.objects[ctx].btoa(spasm.decode_string(dataLen, dataPtr)));
    },
    WindowOrWorkerGlobalScope_atob: function(rawResult, ctx, dataLen, dataPtr) {
      spasm.encode.string(rawResult, spasm.objects[ctx].atob(spasm.decode_string(dataLen, dataPtr)));
    },
    WindowOrWorkerGlobalScope_setTimeout: function(ctx, handler, timeout, arguments_) {
      return spasm.objects[ctx].setTimeout(spasm.decode_TimerHandler(handler), timeout, spasm.objects[arguments_]);
    },
    WindowOrWorkerGlobalScope_clearTimeout: function(ctx, handle) {
      spasm.objects[ctx].clearTimeout(handle);
    },
    WindowOrWorkerGlobalScope_setInterval: function(ctx, handler, timeout, arguments_) {
      return spasm.objects[ctx].setInterval(spasm.decode_TimerHandler(handler), timeout, spasm.objects[arguments_]);
    },
    WindowOrWorkerGlobalScope_clearInterval: function(ctx, handle) {
      spasm.objects[ctx].clearInterval(handle);
    },
    WindowOrWorkerGlobalScope_queueMicrotask: function(ctx, callbackCtx, callbackPtr) {
      spasm.objects[ctx].queueMicrotask(()=>{spasm.callback_void(callbackCtx, callbackPtr)});
    },
    WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_Handle: function(ctx, image, options) {
      return spasm.addObject(spasm.objects[ctx].createImageBitmap(spasm.decode_ImageBitmapSource(image), spasm.objects[options]));
    },
    WindowOrWorkerGlobalScope_createImageBitmap__ImageBitmapSource_int_int_int_int_Handle: function(ctx, image, sx, sy, sw, sh, options) {
      return spasm.addObject(spasm.objects[ctx].createImageBitmap(spasm.decode_ImageBitmapSource(image), sx, sy, sw, sh, spasm.objects[options]));
    },
    WindowOrWorkerGlobalScope_fetch: function(ctx, input, init) {
      return spasm.addObject(spasm.objects[ctx].fetch(spasm.decode_RequestInfo(input), spasm.objects[init]));
    },
    WindowOrWorkerGlobalScope_indexedDB_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].indexedDB);
    },
    WindowOrWorkerGlobalScope_caches_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].caches);
    },
    WorkerLocation_href_Set: function(ctx, hrefLen, hrefPtr) {
      spasm.objects[ctx].href = spasm.decode_string(hrefLen, hrefPtr);
    },
    WorkerLocation_href_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].href);
    },
    WorkerLocation_origin_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].origin);
    },
    WorkerLocation_protocol_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].protocol);
    },
    WorkerLocation_host_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].host);
    },
    WorkerLocation_hostname_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].hostname);
    },
    WorkerLocation_port_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].port);
    },
    WorkerLocation_pathname_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].pathname);
    },
    WorkerLocation_search_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].search);
    },
    WorkerLocation_hash_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].hash);
    },
    WorkerNavigator_permissions_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].permissions);
    },
    WorkerNavigator_serviceWorker_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].serviceWorker);
    },
    NavigatorConcurrentHardware_hardwareConcurrency_Get: function(ctx) {
      return spasm.objects[ctx].hardwareConcurrency;
    },
    NavigatorOnLine_onLine_Get: function(ctx) {
      return spasm.objects[ctx].onLine;
    },
    NavigatorLanguage_language_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].language);
    },
    NavigatorLanguage_languages_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].languages);
    },
    NavigatorID_appCodeName_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].appCodeName);
    },
    NavigatorID_appName_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].appName);
    },
    NavigatorID_appVersion_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].appVersion);
    },
    NavigatorID_platform_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].platform);
    },
    NavigatorID_product_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].product);
    },
    NavigatorID_productSub_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].productSub);
    },
    NavigatorID_userAgent_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].userAgent);
    },
    NavigatorID_vendor_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].vendor);
    },
    NavigatorID_vendorSub_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].vendorSub);
    },
    NavigatorID_taintEnabled: function(ctx) {
      return spasm.objects[ctx].taintEnabled();
    },
    NavigatorID_oscpu_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].oscpu);
    },
    WorkerOptions_type_Set: function(ctx, type) {
      spasm.objects[ctx].type = spasm.decode_WorkerType(type);
    },
    WorkerOptions_type_Get: function(ctx) {
      return spasm.encode.WorkerType(spasm.objects[ctx].type);
    },
    WorkerOptions_credentials_Set: function(ctx, credentials) {
      spasm.objects[ctx].credentials = spasm.decode_RequestCredentials(credentials);
    },
    WorkerOptions_credentials_Get: function(ctx) {
      return spasm.encode.RequestCredentials(spasm.objects[ctx].credentials);
    },
    WorkerOptions_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    WorkerOptions_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
  }
}