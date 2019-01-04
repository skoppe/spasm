import spasm from './spasm.js';
export default {
  jsExports: {
    console_assert: function(condition, data) {
      console.assert(condition, spasm.objects[data]);
    },
    console_clear: function() {
      console.clear();
    },
    console_debug: function(data) {
      console.debug(spasm.objects[data]);
    },
    console_error: function(data) {
      console.error(spasm.objects[data]);
    },
    console_info: function(data) {
      console.info(spasm.objects[data]);
    },
    console_log: function(data) {
      console.log(spasm.objects[data]);
    },
    console_table: function(tabularData, properties) {
      console.table(spasm.objects[tabularData], spasm.objects[properties]);
    },
    console_trace: function(data) {
      console.trace(spasm.objects[data]);
    },
    console_warn: function(data) {
      console.warn(spasm.objects[data]);
    },
    console_dir: function(item, optionsDefined, options) {
      console.dir(spasm.objects[item], optionsDefined ? spasm.objects[options] : undefined);
    },
    console_dirxml: function(data) {
      console.dirxml(spasm.objects[data]);
    },
    console_count: function(labelLen, labelPtr) {
      console.count(spasm.decode_string(labelLen, labelPtr));
    },
    console_countReset: function(labelLen, labelPtr) {
      console.countReset(spasm.decode_string(labelLen, labelPtr));
    },
    console_group: function(data) {
      console.group(spasm.objects[data]);
    },
    console_groupCollapsed: function(data) {
      console.groupCollapsed(spasm.objects[data]);
    },
    console_groupEnd: function() {
      console.groupEnd();
    },
    console_time: function(labelLen, labelPtr) {
      console.time(spasm.decode_string(labelLen, labelPtr));
    },
    console_timeLog: function(labelLen, labelPtr, data) {
      console.timeLog(spasm.decode_string(labelLen, labelPtr), spasm.objects[data]);
    },
    console_timeEnd: function(labelLen, labelPtr) {
      console.timeEnd(spasm.decode_string(labelLen, labelPtr));
    },
  }
}