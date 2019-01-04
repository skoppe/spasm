module spasm.bindings.indexeddb;

import spasm.types;
import spasm.bindings.common : DOMException;
import spasm.bindings.html : DOMStringList;
import spasm.bindings.html : EventHandler;

struct IDBCursor {
  JsHandle handle;
  alias handle this;
  SumType!(IDBObjectStore, IDBIndex) source() {
    return IDBCursor_source_Get(handle);
  }
  IDBCursorDirection direction() {
    return IDBCursor_direction_Get(handle);
  }
  Any key() {
    return Any(IDBCursor_key_Get(handle));
  }
  Any primaryKey() {
    return Any(IDBCursor_primaryKey_Get(handle));
  }
  void advance(uint count) {
    IDBCursor_advance(handle, count);
  }
  void continue_(Any key) {
    IDBCursor_continue(handle, key.handle);
  }
  void continuePrimaryKey(Any key, Any primaryKey) {
    IDBCursor_continuePrimaryKey(handle, key.handle, primaryKey.handle);
  }
  IDBRequest update(Any value) {
    return IDBRequest(IDBCursor_update(handle, value.handle));
  }
  IDBRequest delete_() {
    return IDBRequest(IDBCursor_delete(handle));
  }
}
enum IDBCursorDirection {
  next,
  nextunique,
  prev,
  prevunique
}
struct IDBCursorWithValue {
  IDBCursor _parent;
  alias _parent this;
  Any value() {
    return Any(IDBCursorWithValue_value_Get(handle));
  }
}
struct IDBDatabase {
  EventTarget _parent;
  alias _parent this;
  string name() {
    return IDBDatabase_name_Get(handle);
  }
  ulong version_() {
    return IDBDatabase_version_Get(handle);
  }
  DOMStringList objectStoreNames() {
    return DOMStringList(IDBDatabase_objectStoreNames_Get(handle));
  }
  IDBTransaction transaction(SumType!(string, Sequence!(string)) storeNames, IDBTransactionMode mode /* = "readonly" */) {
    return IDBTransaction(IDBDatabase_transaction(handle, storeNames, mode));
  }
  void close() {
    IDBDatabase_close(handle);
  }
  IDBObjectStore createObjectStore(string name, IDBObjectStoreParameters options) {
    return IDBObjectStore(IDBDatabase_createObjectStore(handle, name, options.handle));
  }
  void deleteObjectStore(string name) {
    IDBDatabase_deleteObjectStore(handle, name);
  }
  void onabort(EventHandler onabort) {
    IDBDatabase_onabort_Set(handle, !onabort.empty, onabort.value);
  }
  EventHandler onabort() {
    return IDBDatabase_onabort_Get(handle);
  }
  void onclose(EventHandler onclose) {
    IDBDatabase_onclose_Set(handle, !onclose.empty, onclose.value);
  }
  EventHandler onclose() {
    return IDBDatabase_onclose_Get(handle);
  }
  void onerror(EventHandler onerror) {
    IDBDatabase_onerror_Set(handle, !onerror.empty, onerror.value);
  }
  EventHandler onerror() {
    return IDBDatabase_onerror_Get(handle);
  }
  void onversionchange(EventHandler onversionchange) {
    IDBDatabase_onversionchange_Set(handle, !onversionchange.empty, onversionchange.value);
  }
  EventHandler onversionchange() {
    return IDBDatabase_onversionchange_Get(handle);
  }
}
struct IDBDatabaseInfo {
  JsHandle handle;
  alias handle this;
  void name(string name) {
    IDBDatabaseInfo_name_Set(handle, name);
  }
  string name() {
    return IDBDatabaseInfo_name_Get(handle);
  }
  void version_(ulong version_) {
    IDBDatabaseInfo_version_Set(handle, version_);
  }
  ulong version_() {
    return IDBDatabaseInfo_version_Get(handle);
  }
}
struct IDBFactory {
  JsHandle handle;
  alias handle this;
  IDBOpenDBRequest open(string name, ulong version_) {
    return IDBOpenDBRequest(IDBFactory_open(handle, name, version_));
  }
  IDBOpenDBRequest deleteDatabase(string name) {
    return IDBOpenDBRequest(IDBFactory_deleteDatabase(handle, name));
  }
  Promise!(Sequence!(IDBDatabaseInfo)) databases() {
    return Promise!(Sequence!(IDBDatabaseInfo))(IDBFactory_databases(handle));
  }
  short cmp(Any first, Any second) {
    return IDBFactory_cmp(handle, first.handle, second.handle);
  }
}
struct IDBIndex {
  JsHandle handle;
  alias handle this;
  void name(string name) {
    IDBIndex_name_Set(handle, name);
  }
  string name() {
    return IDBIndex_name_Get(handle);
  }
  IDBObjectStore objectStore() {
    return IDBObjectStore(IDBIndex_objectStore_Get(handle));
  }
  Any keyPath() {
    return Any(IDBIndex_keyPath_Get(handle));
  }
  bool multiEntry() {
    return IDBIndex_multiEntry_Get(handle);
  }
  bool unique() {
    return IDBIndex_unique_Get(handle);
  }
  IDBRequest get(Any query) {
    return IDBRequest(IDBIndex_get(handle, query.handle));
  }
  IDBRequest getKey(Any query) {
    return IDBRequest(IDBIndex_getKey(handle, query.handle));
  }
  IDBRequest getAll(Any query, uint count) {
    return IDBRequest(IDBIndex_getAll(handle, query.handle, count));
  }
  IDBRequest getAllKeys(Any query, uint count) {
    return IDBRequest(IDBIndex_getAllKeys(handle, query.handle, count));
  }
  IDBRequest count(Any query) {
    return IDBRequest(IDBIndex_count(handle, query.handle));
  }
  IDBRequest openCursor(Any query, IDBCursorDirection direction /* = "next" */) {
    return IDBRequest(IDBIndex_openCursor(handle, query.handle, direction));
  }
  IDBRequest openKeyCursor(Any query, IDBCursorDirection direction /* = "next" */) {
    return IDBRequest(IDBIndex_openKeyCursor(handle, query.handle, direction));
  }
}
struct IDBIndexParameters {
  JsHandle handle;
  alias handle this;
  void unique(bool unique) {
    IDBIndexParameters_unique_Set(handle, unique);
  }
  bool unique() {
    return IDBIndexParameters_unique_Get(handle);
  }
  void multiEntry(bool multiEntry) {
    IDBIndexParameters_multiEntry_Set(handle, multiEntry);
  }
  bool multiEntry() {
    return IDBIndexParameters_multiEntry_Get(handle);
  }
}
struct IDBKeyRange {
  JsHandle handle;
  alias handle this;
  Any lower() {
    return Any(IDBKeyRange_lower_Get(handle));
  }
  Any upper() {
    return Any(IDBKeyRange_upper_Get(handle));
  }
  bool lowerOpen() {
    return IDBKeyRange_lowerOpen_Get(handle);
  }
  bool upperOpen() {
    return IDBKeyRange_upperOpen_Get(handle);
  }
  IDBKeyRange only(Any value) {
    return IDBKeyRange(IDBKeyRange_only(handle, value.handle));
  }
  IDBKeyRange lowerBound(Any lower, bool open /* = false */) {
    return IDBKeyRange(IDBKeyRange_lowerBound(handle, lower.handle, open));
  }
  IDBKeyRange upperBound(Any upper, bool open /* = false */) {
    return IDBKeyRange(IDBKeyRange_upperBound(handle, upper.handle, open));
  }
  IDBKeyRange bound(Any lower, Any upper, bool lowerOpen /* = false */, bool upperOpen /* = false */) {
    return IDBKeyRange(IDBKeyRange_bound(handle, lower.handle, upper.handle, lowerOpen, upperOpen));
  }
  bool _includes(Any key) {
    return IDBKeyRange__includes(handle, key.handle);
  }
}
struct IDBObjectStore {
  JsHandle handle;
  alias handle this;
  void name(string name) {
    IDBObjectStore_name_Set(handle, name);
  }
  string name() {
    return IDBObjectStore_name_Get(handle);
  }
  Any keyPath() {
    return Any(IDBObjectStore_keyPath_Get(handle));
  }
  DOMStringList indexNames() {
    return DOMStringList(IDBObjectStore_indexNames_Get(handle));
  }
  IDBTransaction transaction() {
    return IDBTransaction(IDBObjectStore_transaction_Get(handle));
  }
  bool autoIncrement() {
    return IDBObjectStore_autoIncrement_Get(handle);
  }
  IDBRequest put(Any value, Any key) {
    return IDBRequest(IDBObjectStore_put(handle, value.handle, key.handle));
  }
  IDBRequest add(Any value, Any key) {
    return IDBRequest(IDBObjectStore_add(handle, value.handle, key.handle));
  }
  IDBRequest delete_(Any query) {
    return IDBRequest(IDBObjectStore_delete(handle, query.handle));
  }
  IDBRequest clear() {
    return IDBRequest(IDBObjectStore_clear(handle));
  }
  IDBRequest get(Any query) {
    return IDBRequest(IDBObjectStore_get(handle, query.handle));
  }
  IDBRequest getKey(Any query) {
    return IDBRequest(IDBObjectStore_getKey(handle, query.handle));
  }
  IDBRequest getAll(Any query, uint count) {
    return IDBRequest(IDBObjectStore_getAll(handle, query.handle, count));
  }
  IDBRequest getAllKeys(Any query, uint count) {
    return IDBRequest(IDBObjectStore_getAllKeys(handle, query.handle, count));
  }
  IDBRequest count(Any query) {
    return IDBRequest(IDBObjectStore_count(handle, query.handle));
  }
  IDBRequest openCursor(Any query, IDBCursorDirection direction /* = "next" */) {
    return IDBRequest(IDBObjectStore_openCursor(handle, query.handle, direction));
  }
  IDBRequest openKeyCursor(Any query, IDBCursorDirection direction /* = "next" */) {
    return IDBRequest(IDBObjectStore_openKeyCursor(handle, query.handle, direction));
  }
  IDBIndex index(string name) {
    return IDBIndex(IDBObjectStore_index(handle, name));
  }
  IDBIndex createIndex(string name, SumType!(string, Sequence!(string)) keyPath, IDBIndexParameters options) {
    return IDBIndex(IDBObjectStore_createIndex(handle, name, keyPath, options.handle));
  }
  void deleteIndex(string name) {
    IDBObjectStore_deleteIndex(handle, name);
  }
}
struct IDBObjectStoreParameters {
  JsHandle handle;
  alias handle this;
  void keyPath(Optional!(SumType!(string, Sequence!(string))) keyPath) {
    IDBObjectStoreParameters_keyPath_Set(handle, !keyPath.empty, keyPath.value);
  }
  Optional!(SumType!(string, Sequence!(string))) keyPath() {
    return IDBObjectStoreParameters_keyPath_Get(handle);
  }
  void autoIncrement(bool autoIncrement) {
    IDBObjectStoreParameters_autoIncrement_Set(handle, autoIncrement);
  }
  bool autoIncrement() {
    return IDBObjectStoreParameters_autoIncrement_Get(handle);
  }
}
struct IDBOpenDBRequest {
  IDBRequest _parent;
  alias _parent this;
  void onblocked(EventHandler onblocked) {
    IDBOpenDBRequest_onblocked_Set(handle, !onblocked.empty, onblocked.value);
  }
  EventHandler onblocked() {
    return IDBOpenDBRequest_onblocked_Get(handle);
  }
  void onupgradeneeded(EventHandler onupgradeneeded) {
    IDBOpenDBRequest_onupgradeneeded_Set(handle, !onupgradeneeded.empty, onupgradeneeded.value);
  }
  EventHandler onupgradeneeded() {
    return IDBOpenDBRequest_onupgradeneeded_Get(handle);
  }
}
struct IDBRequest {
  EventTarget _parent;
  alias _parent this;
  Any result() {
    return Any(IDBRequest_result_Get(handle));
  }
  Optional!(DOMException) error() {
    return IDBRequest_error_Get(handle);
  }
  Optional!(SumType!(IDBObjectStore, IDBIndex, IDBCursor)) source() {
    return IDBRequest_source_Get(handle);
  }
  Optional!(IDBTransaction) transaction() {
    return IDBRequest_transaction_Get(handle);
  }
  IDBRequestReadyState readyState() {
    return IDBRequest_readyState_Get(handle);
  }
  void onsuccess(EventHandler onsuccess) {
    IDBRequest_onsuccess_Set(handle, !onsuccess.empty, onsuccess.value);
  }
  EventHandler onsuccess() {
    return IDBRequest_onsuccess_Get(handle);
  }
  void onerror(EventHandler onerror) {
    IDBRequest_onerror_Set(handle, !onerror.empty, onerror.value);
  }
  EventHandler onerror() {
    return IDBRequest_onerror_Get(handle);
  }
}
enum IDBRequestReadyState {
  pending,
  done
}
struct IDBTransaction {
  EventTarget _parent;
  alias _parent this;
  DOMStringList objectStoreNames() {
    return DOMStringList(IDBTransaction_objectStoreNames_Get(handle));
  }
  IDBTransactionMode mode() {
    return IDBTransaction_mode_Get(handle);
  }
  IDBDatabase db() {
    return IDBDatabase(IDBTransaction_db_Get(handle));
  }
  DOMException error() {
    return DOMException(IDBTransaction_error_Get(handle));
  }
  IDBObjectStore objectStore(string name) {
    return IDBObjectStore(IDBTransaction_objectStore(handle, name));
  }
  void abort() {
    IDBTransaction_abort(handle);
  }
  void onabort(EventHandler onabort) {
    IDBTransaction_onabort_Set(handle, !onabort.empty, onabort.value);
  }
  EventHandler onabort() {
    return IDBTransaction_onabort_Get(handle);
  }
  void oncomplete(EventHandler oncomplete) {
    IDBTransaction_oncomplete_Set(handle, !oncomplete.empty, oncomplete.value);
  }
  EventHandler oncomplete() {
    return IDBTransaction_oncomplete_Get(handle);
  }
  void onerror(EventHandler onerror) {
    IDBTransaction_onerror_Set(handle, !onerror.empty, onerror.value);
  }
  EventHandler onerror() {
    return IDBTransaction_onerror_Get(handle);
  }
}
enum IDBTransactionMode {
  readonly,
  readwrite,
  versionchange
}
struct IDBVersionChangeEvent {
  Event _parent;
  alias _parent this;
  ulong oldVersion() {
    return IDBVersionChangeEvent_oldVersion_Get(handle);
  }
  Optional!(ulong) newVersion() {
    return IDBVersionChangeEvent_newVersion_Get(handle);
  }
}
struct IDBVersionChangeEventInit {
  EventInit _parent;
  alias _parent this;
  void oldVersion(ulong oldVersion) {
    IDBVersionChangeEventInit_oldVersion_Set(handle, oldVersion);
  }
  ulong oldVersion() {
    return IDBVersionChangeEventInit_oldVersion_Get(handle);
  }
  void newVersion(Optional!(ulong) newVersion) {
    IDBVersionChangeEventInit_newVersion_Set(handle, !newVersion.empty, newVersion.value);
  }
  Optional!(ulong) newVersion() {
    return IDBVersionChangeEventInit_newVersion_Get(handle);
  }
}


extern (C) SumType!(IDBObjectStore, IDBIndex) IDBCursor_source_Get(JsHandle);
extern (C) IDBCursorDirection IDBCursor_direction_Get(JsHandle);
extern (C) JsHandle IDBCursor_key_Get(JsHandle);
extern (C) JsHandle IDBCursor_primaryKey_Get(JsHandle);
extern (C) void IDBCursor_advance(JsHandle, uint);
extern (C) void IDBCursor_continue(JsHandle, Any);
extern (C) void IDBCursor_continuePrimaryKey(JsHandle, Any, Any);
extern (C) JsHandle IDBCursor_update(JsHandle, Any);
extern (C) JsHandle IDBCursor_delete(JsHandle);
extern (C) JsHandle IDBCursorWithValue_value_Get(JsHandle);
extern (C) string IDBDatabase_name_Get(JsHandle);
extern (C) ulong IDBDatabase_version_Get(JsHandle);
extern (C) JsHandle IDBDatabase_objectStoreNames_Get(JsHandle);
extern (C) JsHandle IDBDatabase_transaction(JsHandle, SumType!(string, Sequence!(string)), IDBTransactionMode);
extern (C) void IDBDatabase_close(JsHandle);
extern (C) JsHandle IDBDatabase_createObjectStore(JsHandle, string, JsHandle);
extern (C) void IDBDatabase_deleteObjectStore(JsHandle, string);
extern (C) void IDBDatabase_onabort_Set(JsHandle, EventHandler);
extern (C) EventHandler IDBDatabase_onabort_Get(JsHandle);
extern (C) void IDBDatabase_onclose_Set(JsHandle, EventHandler);
extern (C) EventHandler IDBDatabase_onclose_Get(JsHandle);
extern (C) void IDBDatabase_onerror_Set(JsHandle, EventHandler);
extern (C) EventHandler IDBDatabase_onerror_Get(JsHandle);
extern (C) void IDBDatabase_onversionchange_Set(JsHandle, EventHandler);
extern (C) EventHandler IDBDatabase_onversionchange_Get(JsHandle);
extern (C) void IDBDatabaseInfo_name_Set(JsHandle, string);
extern (C) string IDBDatabaseInfo_name_Get(JsHandle);
extern (C) void IDBDatabaseInfo_version_Set(JsHandle, ulong);
extern (C) ulong IDBDatabaseInfo_version_Get(JsHandle);
extern (C) JsHandle IDBFactory_open(JsHandle, string, ulong);
extern (C) JsHandle IDBFactory_deleteDatabase(JsHandle, string);
extern (C) JsHandle IDBFactory_databases(JsHandle);
extern (C) short IDBFactory_cmp(JsHandle, Any, Any);
extern (C) void IDBIndex_name_Set(JsHandle, string);
extern (C) string IDBIndex_name_Get(JsHandle);
extern (C) JsHandle IDBIndex_objectStore_Get(JsHandle);
extern (C) JsHandle IDBIndex_keyPath_Get(JsHandle);
extern (C) bool IDBIndex_multiEntry_Get(JsHandle);
extern (C) bool IDBIndex_unique_Get(JsHandle);
extern (C) JsHandle IDBIndex_get(JsHandle, Any);
extern (C) JsHandle IDBIndex_getKey(JsHandle, Any);
extern (C) JsHandle IDBIndex_getAll(JsHandle, Any, uint);
extern (C) JsHandle IDBIndex_getAllKeys(JsHandle, Any, uint);
extern (C) JsHandle IDBIndex_count(JsHandle, Any);
extern (C) JsHandle IDBIndex_openCursor(JsHandle, Any, IDBCursorDirection);
extern (C) JsHandle IDBIndex_openKeyCursor(JsHandle, Any, IDBCursorDirection);
extern (C) void IDBIndexParameters_unique_Set(JsHandle, bool);
extern (C) bool IDBIndexParameters_unique_Get(JsHandle);
extern (C) void IDBIndexParameters_multiEntry_Set(JsHandle, bool);
extern (C) bool IDBIndexParameters_multiEntry_Get(JsHandle);
extern (C) JsHandle IDBKeyRange_lower_Get(JsHandle);
extern (C) JsHandle IDBKeyRange_upper_Get(JsHandle);
extern (C) bool IDBKeyRange_lowerOpen_Get(JsHandle);
extern (C) bool IDBKeyRange_upperOpen_Get(JsHandle);
extern (C) JsHandle IDBKeyRange_only(JsHandle, Any);
extern (C) JsHandle IDBKeyRange_lowerBound(JsHandle, Any, bool);
extern (C) JsHandle IDBKeyRange_upperBound(JsHandle, Any, bool);
extern (C) JsHandle IDBKeyRange_bound(JsHandle, Any, Any, bool, bool);
extern (C) bool IDBKeyRange__includes(JsHandle, Any);
extern (C) void IDBObjectStore_name_Set(JsHandle, string);
extern (C) string IDBObjectStore_name_Get(JsHandle);
extern (C) JsHandle IDBObjectStore_keyPath_Get(JsHandle);
extern (C) JsHandle IDBObjectStore_indexNames_Get(JsHandle);
extern (C) JsHandle IDBObjectStore_transaction_Get(JsHandle);
extern (C) bool IDBObjectStore_autoIncrement_Get(JsHandle);
extern (C) JsHandle IDBObjectStore_put(JsHandle, Any, Any);
extern (C) JsHandle IDBObjectStore_add(JsHandle, Any, Any);
extern (C) JsHandle IDBObjectStore_delete(JsHandle, Any);
extern (C) JsHandle IDBObjectStore_clear(JsHandle);
extern (C) JsHandle IDBObjectStore_get(JsHandle, Any);
extern (C) JsHandle IDBObjectStore_getKey(JsHandle, Any);
extern (C) JsHandle IDBObjectStore_getAll(JsHandle, Any, uint);
extern (C) JsHandle IDBObjectStore_getAllKeys(JsHandle, Any, uint);
extern (C) JsHandle IDBObjectStore_count(JsHandle, Any);
extern (C) JsHandle IDBObjectStore_openCursor(JsHandle, Any, IDBCursorDirection);
extern (C) JsHandle IDBObjectStore_openKeyCursor(JsHandle, Any, IDBCursorDirection);
extern (C) JsHandle IDBObjectStore_index(JsHandle, string);
extern (C) JsHandle IDBObjectStore_createIndex(JsHandle, string, SumType!(string, Sequence!(string)), JsHandle);
extern (C) void IDBObjectStore_deleteIndex(JsHandle, string);
extern (C) void IDBObjectStoreParameters_keyPath_Set(JsHandle, bool, SumType!(string, Sequence!(string)));
extern (C) Optional!(SumType!(string, Sequence!(string))) IDBObjectStoreParameters_keyPath_Get(JsHandle);
extern (C) void IDBObjectStoreParameters_autoIncrement_Set(JsHandle, bool);
extern (C) bool IDBObjectStoreParameters_autoIncrement_Get(JsHandle);
extern (C) void IDBOpenDBRequest_onblocked_Set(JsHandle, EventHandler);
extern (C) EventHandler IDBOpenDBRequest_onblocked_Get(JsHandle);
extern (C) void IDBOpenDBRequest_onupgradeneeded_Set(JsHandle, EventHandler);
extern (C) EventHandler IDBOpenDBRequest_onupgradeneeded_Get(JsHandle);
extern (C) JsHandle IDBRequest_result_Get(JsHandle);
extern (C) Optional!(DOMException) IDBRequest_error_Get(JsHandle);
extern (C) Optional!(SumType!(IDBObjectStore, IDBIndex, IDBCursor)) IDBRequest_source_Get(JsHandle);
extern (C) Optional!(IDBTransaction) IDBRequest_transaction_Get(JsHandle);
extern (C) IDBRequestReadyState IDBRequest_readyState_Get(JsHandle);
extern (C) void IDBRequest_onsuccess_Set(JsHandle, EventHandler);
extern (C) EventHandler IDBRequest_onsuccess_Get(JsHandle);
extern (C) void IDBRequest_onerror_Set(JsHandle, EventHandler);
extern (C) EventHandler IDBRequest_onerror_Get(JsHandle);
extern (C) JsHandle IDBTransaction_objectStoreNames_Get(JsHandle);
extern (C) IDBTransactionMode IDBTransaction_mode_Get(JsHandle);
extern (C) JsHandle IDBTransaction_db_Get(JsHandle);
extern (C) JsHandle IDBTransaction_error_Get(JsHandle);
extern (C) JsHandle IDBTransaction_objectStore(JsHandle, string);
extern (C) void IDBTransaction_abort(JsHandle);
extern (C) void IDBTransaction_onabort_Set(JsHandle, EventHandler);
extern (C) EventHandler IDBTransaction_onabort_Get(JsHandle);
extern (C) void IDBTransaction_oncomplete_Set(JsHandle, EventHandler);
extern (C) EventHandler IDBTransaction_oncomplete_Get(JsHandle);
extern (C) void IDBTransaction_onerror_Set(JsHandle, EventHandler);
extern (C) EventHandler IDBTransaction_onerror_Get(JsHandle);
extern (C) ulong IDBVersionChangeEvent_oldVersion_Get(JsHandle);
extern (C) Optional!(ulong) IDBVersionChangeEvent_newVersion_Get(JsHandle);
extern (C) void IDBVersionChangeEventInit_oldVersion_Set(JsHandle, ulong);
extern (C) ulong IDBVersionChangeEventInit_oldVersion_Get(JsHandle);
extern (C) void IDBVersionChangeEventInit_newVersion_Set(JsHandle, bool, ulong);
extern (C) Optional!(ulong) IDBVersionChangeEventInit_newVersion_Get(JsHandle);