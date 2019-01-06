module spasm.bindings.indexeddb;

import spasm.types;
import spasm.bindings.common;
import spasm.bindings.dom;
import spasm.bindings.html;

struct IDBCursor {
  JsHandle handle;
  alias handle this;
  auto source() {
    return IDBCursor_source_Get(this.handle);
  }
  auto direction() {
    return IDBCursor_direction_Get(this.handle);
  }
  auto key() {
    return Any(IDBCursor_key_Get(this.handle));
  }
  auto primaryKey() {
    return Any(IDBCursor_primaryKey_Get(this.handle));
  }
  auto advance(uint count) {
    IDBCursor_advance(this.handle, count);
  }
  auto continue_(Any key) {
    IDBCursor_continue(this.handle, key.handle);
  }
  auto continuePrimaryKey(Any key, Any primaryKey) {
    IDBCursor_continuePrimaryKey(this.handle, key.handle, primaryKey.handle);
  }
  auto update(Any value) {
    return IDBRequest(IDBCursor_update(this.handle, value.handle));
  }
  auto delete_() {
    return IDBRequest(IDBCursor_delete(this.handle));
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
  this(JsHandle h) {
    _parent = IDBCursor(h);
  }
  auto value() {
    return Any(IDBCursorWithValue_value_Get(this._parent));
  }
}
struct IDBDatabase {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto name() {
    return IDBDatabase_name_Get(this._parent);
  }
  auto version_() {
    return IDBDatabase_version_Get(this._parent);
  }
  auto objectStoreNames() {
    return DOMStringList(IDBDatabase_objectStoreNames_Get(this._parent));
  }
  auto transaction(SumType!(string, Sequence!(string)) storeNames, IDBTransactionMode mode /* = "readonly" */) {
    return IDBTransaction(IDBDatabase_transaction(this._parent, storeNames, mode));
  }
  auto close() {
    IDBDatabase_close(this._parent);
  }
  auto createObjectStore(string name, IDBObjectStoreParameters options) {
    return IDBObjectStore(IDBDatabase_createObjectStore(this._parent, name, options.handle));
  }
  auto deleteObjectStore(string name) {
    IDBDatabase_deleteObjectStore(this._parent, name);
  }
  auto onabort(EventHandler onabort) {
    IDBDatabase_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    return IDBDatabase_onabort_Get(this._parent);
  }
  auto onclose(EventHandler onclose) {
    IDBDatabase_onclose_Set(this._parent, onclose);
  }
  auto onclose() {
    return IDBDatabase_onclose_Get(this._parent);
  }
  auto onerror(EventHandler onerror) {
    IDBDatabase_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return IDBDatabase_onerror_Get(this._parent);
  }
  auto onversionchange(EventHandler onversionchange) {
    IDBDatabase_onversionchange_Set(this._parent, onversionchange);
  }
  auto onversionchange() {
    return IDBDatabase_onversionchange_Get(this._parent);
  }
}
struct IDBDatabaseInfo {
  JsHandle handle;
  alias handle this;
  auto name(string name) {
    IDBDatabaseInfo_name_Set(this.handle, name);
  }
  auto name() {
    return IDBDatabaseInfo_name_Get(this.handle);
  }
  auto version_(ulong version_) {
    IDBDatabaseInfo_version_Set(this.handle, version_);
  }
  auto version_() {
    return IDBDatabaseInfo_version_Get(this.handle);
  }
}
struct IDBFactory {
  JsHandle handle;
  alias handle this;
  auto open(string name, ulong version_) {
    return IDBOpenDBRequest(IDBFactory_open(this.handle, name, version_));
  }
  auto deleteDatabase(string name) {
    return IDBOpenDBRequest(IDBFactory_deleteDatabase(this.handle, name));
  }
  auto databases() {
    return Promise!(Sequence!(IDBDatabaseInfo))(IDBFactory_databases(this.handle));
  }
  auto cmp(Any first, Any second) {
    return IDBFactory_cmp(this.handle, first.handle, second.handle);
  }
}
struct IDBIndex {
  JsHandle handle;
  alias handle this;
  auto name(string name) {
    IDBIndex_name_Set(this.handle, name);
  }
  auto name() {
    return IDBIndex_name_Get(this.handle);
  }
  auto objectStore() {
    return IDBObjectStore(IDBIndex_objectStore_Get(this.handle));
  }
  auto keyPath() {
    return Any(IDBIndex_keyPath_Get(this.handle));
  }
  auto multiEntry() {
    return IDBIndex_multiEntry_Get(this.handle);
  }
  auto unique() {
    return IDBIndex_unique_Get(this.handle);
  }
  auto get(Any query) {
    return IDBRequest(IDBIndex_get(this.handle, query.handle));
  }
  auto getKey(Any query) {
    return IDBRequest(IDBIndex_getKey(this.handle, query.handle));
  }
  auto getAll(Any query, uint count) {
    return IDBRequest(IDBIndex_getAll(this.handle, query.handle, count));
  }
  auto getAllKeys(Any query, uint count) {
    return IDBRequest(IDBIndex_getAllKeys(this.handle, query.handle, count));
  }
  auto count(Any query) {
    return IDBRequest(IDBIndex_count(this.handle, query.handle));
  }
  auto openCursor(Any query, IDBCursorDirection direction /* = "next" */) {
    return IDBRequest(IDBIndex_openCursor(this.handle, query.handle, direction));
  }
  auto openKeyCursor(Any query, IDBCursorDirection direction /* = "next" */) {
    return IDBRequest(IDBIndex_openKeyCursor(this.handle, query.handle, direction));
  }
}
struct IDBIndexParameters {
  JsHandle handle;
  alias handle this;
  auto unique(bool unique) {
    IDBIndexParameters_unique_Set(this.handle, unique);
  }
  auto unique() {
    return IDBIndexParameters_unique_Get(this.handle);
  }
  auto multiEntry(bool multiEntry) {
    IDBIndexParameters_multiEntry_Set(this.handle, multiEntry);
  }
  auto multiEntry() {
    return IDBIndexParameters_multiEntry_Get(this.handle);
  }
}
struct IDBKeyRange {
  JsHandle handle;
  alias handle this;
  auto lower() {
    return Any(IDBKeyRange_lower_Get(this.handle));
  }
  auto upper() {
    return Any(IDBKeyRange_upper_Get(this.handle));
  }
  auto lowerOpen() {
    return IDBKeyRange_lowerOpen_Get(this.handle);
  }
  auto upperOpen() {
    return IDBKeyRange_upperOpen_Get(this.handle);
  }
  auto only(Any value) {
    return IDBKeyRange(IDBKeyRange_only(this.handle, value.handle));
  }
  auto lowerBound(Any lower, bool open /* = false */) {
    return IDBKeyRange(IDBKeyRange_lowerBound(this.handle, lower.handle, open));
  }
  auto upperBound(Any upper, bool open /* = false */) {
    return IDBKeyRange(IDBKeyRange_upperBound(this.handle, upper.handle, open));
  }
  auto bound(Any lower, Any upper, bool lowerOpen /* = false */, bool upperOpen /* = false */) {
    return IDBKeyRange(IDBKeyRange_bound(this.handle, lower.handle, upper.handle, lowerOpen, upperOpen));
  }
  auto _includes(Any key) {
    return IDBKeyRange__includes(this.handle, key.handle);
  }
}
struct IDBObjectStore {
  JsHandle handle;
  alias handle this;
  auto name(string name) {
    IDBObjectStore_name_Set(this.handle, name);
  }
  auto name() {
    return IDBObjectStore_name_Get(this.handle);
  }
  auto keyPath() {
    return Any(IDBObjectStore_keyPath_Get(this.handle));
  }
  auto indexNames() {
    return DOMStringList(IDBObjectStore_indexNames_Get(this.handle));
  }
  auto transaction() {
    return IDBTransaction(IDBObjectStore_transaction_Get(this.handle));
  }
  auto autoIncrement() {
    return IDBObjectStore_autoIncrement_Get(this.handle);
  }
  auto put(Any value, Any key) {
    return IDBRequest(IDBObjectStore_put(this.handle, value.handle, key.handle));
  }
  auto add(Any value, Any key) {
    return IDBRequest(IDBObjectStore_add(this.handle, value.handle, key.handle));
  }
  auto delete_(Any query) {
    return IDBRequest(IDBObjectStore_delete(this.handle, query.handle));
  }
  auto clear() {
    return IDBRequest(IDBObjectStore_clear(this.handle));
  }
  auto get(Any query) {
    return IDBRequest(IDBObjectStore_get(this.handle, query.handle));
  }
  auto getKey(Any query) {
    return IDBRequest(IDBObjectStore_getKey(this.handle, query.handle));
  }
  auto getAll(Any query, uint count) {
    return IDBRequest(IDBObjectStore_getAll(this.handle, query.handle, count));
  }
  auto getAllKeys(Any query, uint count) {
    return IDBRequest(IDBObjectStore_getAllKeys(this.handle, query.handle, count));
  }
  auto count(Any query) {
    return IDBRequest(IDBObjectStore_count(this.handle, query.handle));
  }
  auto openCursor(Any query, IDBCursorDirection direction /* = "next" */) {
    return IDBRequest(IDBObjectStore_openCursor(this.handle, query.handle, direction));
  }
  auto openKeyCursor(Any query, IDBCursorDirection direction /* = "next" */) {
    return IDBRequest(IDBObjectStore_openKeyCursor(this.handle, query.handle, direction));
  }
  auto index(string name) {
    return IDBIndex(IDBObjectStore_index(this.handle, name));
  }
  auto createIndex(string name, SumType!(string, Sequence!(string)) keyPath, IDBIndexParameters options) {
    return IDBIndex(IDBObjectStore_createIndex(this.handle, name, keyPath, options.handle));
  }
  auto deleteIndex(string name) {
    IDBObjectStore_deleteIndex(this.handle, name);
  }
}
struct IDBObjectStoreParameters {
  JsHandle handle;
  alias handle this;
  auto keyPath(Optional!(SumType!(string, Sequence!(string))) keyPath) {
    IDBObjectStoreParameters_keyPath_Set(this.handle, !keyPath.empty, keyPath.front);
  }
  auto keyPath() {
    return IDBObjectStoreParameters_keyPath_Get(this.handle);
  }
  auto autoIncrement(bool autoIncrement) {
    IDBObjectStoreParameters_autoIncrement_Set(this.handle, autoIncrement);
  }
  auto autoIncrement() {
    return IDBObjectStoreParameters_autoIncrement_Get(this.handle);
  }
}
struct IDBOpenDBRequest {
  IDBRequest _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = IDBRequest(h);
  }
  auto onblocked(EventHandler onblocked) {
    IDBOpenDBRequest_onblocked_Set(this._parent, onblocked);
  }
  auto onblocked() {
    return IDBOpenDBRequest_onblocked_Get(this._parent);
  }
  auto onupgradeneeded(EventHandler onupgradeneeded) {
    IDBOpenDBRequest_onupgradeneeded_Set(this._parent, onupgradeneeded);
  }
  auto onupgradeneeded() {
    return IDBOpenDBRequest_onupgradeneeded_Get(this._parent);
  }
}
struct IDBRequest {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto result() {
    return Any(IDBRequest_result_Get(this._parent));
  }
  auto error() {
    return IDBRequest_error_Get(this._parent);
  }
  auto source() {
    return IDBRequest_source_Get(this._parent);
  }
  auto transaction() {
    return IDBRequest_transaction_Get(this._parent);
  }
  auto readyState() {
    return IDBRequest_readyState_Get(this._parent);
  }
  auto onsuccess(EventHandler onsuccess) {
    IDBRequest_onsuccess_Set(this._parent, onsuccess);
  }
  auto onsuccess() {
    return IDBRequest_onsuccess_Get(this._parent);
  }
  auto onerror(EventHandler onerror) {
    IDBRequest_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return IDBRequest_onerror_Get(this._parent);
  }
}
enum IDBRequestReadyState {
  pending,
  done
}
struct IDBTransaction {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto objectStoreNames() {
    return DOMStringList(IDBTransaction_objectStoreNames_Get(this._parent));
  }
  auto mode() {
    return IDBTransaction_mode_Get(this._parent);
  }
  auto db() {
    return IDBDatabase(IDBTransaction_db_Get(this._parent));
  }
  auto error() {
    return DOMException(IDBTransaction_error_Get(this._parent));
  }
  auto objectStore(string name) {
    return IDBObjectStore(IDBTransaction_objectStore(this._parent, name));
  }
  auto abort() {
    IDBTransaction_abort(this._parent);
  }
  auto onabort(EventHandler onabort) {
    IDBTransaction_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    return IDBTransaction_onabort_Get(this._parent);
  }
  auto oncomplete(EventHandler oncomplete) {
    IDBTransaction_oncomplete_Set(this._parent, oncomplete);
  }
  auto oncomplete() {
    return IDBTransaction_oncomplete_Get(this._parent);
  }
  auto onerror(EventHandler onerror) {
    IDBTransaction_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return IDBTransaction_onerror_Get(this._parent);
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
  this(JsHandle h) {
    _parent = Event(h);
  }
  auto oldVersion() {
    return IDBVersionChangeEvent_oldVersion_Get(this._parent);
  }
  auto newVersion() {
    return IDBVersionChangeEvent_newVersion_Get(this._parent);
  }
}
struct IDBVersionChangeEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  auto oldVersion(ulong oldVersion) {
    IDBVersionChangeEventInit_oldVersion_Set(this._parent, oldVersion);
  }
  auto oldVersion() {
    return IDBVersionChangeEventInit_oldVersion_Get(this._parent);
  }
  auto newVersion(Optional!(ulong) newVersion) {
    IDBVersionChangeEventInit_newVersion_Set(this._parent, !newVersion.empty, newVersion.front);
  }
  auto newVersion() {
    return IDBVersionChangeEventInit_newVersion_Get(this._parent);
  }
}


extern (C) SumType!(IDBObjectStore, IDBIndex) IDBCursor_source_Get(JsHandle);
extern (C) IDBCursorDirection IDBCursor_direction_Get(JsHandle);
extern (C) JsHandle IDBCursor_key_Get(JsHandle);
extern (C) JsHandle IDBCursor_primaryKey_Get(JsHandle);
extern (C) void IDBCursor_advance(JsHandle, uint);
extern (C) void IDBCursor_continue(JsHandle, JsHandle);
extern (C) void IDBCursor_continuePrimaryKey(JsHandle, JsHandle, JsHandle);
extern (C) JsHandle IDBCursor_update(JsHandle, JsHandle);
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
extern (C) short IDBFactory_cmp(JsHandle, JsHandle, JsHandle);
extern (C) void IDBIndex_name_Set(JsHandle, string);
extern (C) string IDBIndex_name_Get(JsHandle);
extern (C) JsHandle IDBIndex_objectStore_Get(JsHandle);
extern (C) JsHandle IDBIndex_keyPath_Get(JsHandle);
extern (C) bool IDBIndex_multiEntry_Get(JsHandle);
extern (C) bool IDBIndex_unique_Get(JsHandle);
extern (C) JsHandle IDBIndex_get(JsHandle, JsHandle);
extern (C) JsHandle IDBIndex_getKey(JsHandle, JsHandle);
extern (C) JsHandle IDBIndex_getAll(JsHandle, JsHandle, uint);
extern (C) JsHandle IDBIndex_getAllKeys(JsHandle, JsHandle, uint);
extern (C) JsHandle IDBIndex_count(JsHandle, JsHandle);
extern (C) JsHandle IDBIndex_openCursor(JsHandle, JsHandle, IDBCursorDirection);
extern (C) JsHandle IDBIndex_openKeyCursor(JsHandle, JsHandle, IDBCursorDirection);
extern (C) void IDBIndexParameters_unique_Set(JsHandle, bool);
extern (C) bool IDBIndexParameters_unique_Get(JsHandle);
extern (C) void IDBIndexParameters_multiEntry_Set(JsHandle, bool);
extern (C) bool IDBIndexParameters_multiEntry_Get(JsHandle);
extern (C) JsHandle IDBKeyRange_lower_Get(JsHandle);
extern (C) JsHandle IDBKeyRange_upper_Get(JsHandle);
extern (C) bool IDBKeyRange_lowerOpen_Get(JsHandle);
extern (C) bool IDBKeyRange_upperOpen_Get(JsHandle);
extern (C) JsHandle IDBKeyRange_only(JsHandle, JsHandle);
extern (C) JsHandle IDBKeyRange_lowerBound(JsHandle, JsHandle, bool);
extern (C) JsHandle IDBKeyRange_upperBound(JsHandle, JsHandle, bool);
extern (C) JsHandle IDBKeyRange_bound(JsHandle, JsHandle, JsHandle, bool, bool);
extern (C) bool IDBKeyRange__includes(JsHandle, JsHandle);
extern (C) void IDBObjectStore_name_Set(JsHandle, string);
extern (C) string IDBObjectStore_name_Get(JsHandle);
extern (C) JsHandle IDBObjectStore_keyPath_Get(JsHandle);
extern (C) JsHandle IDBObjectStore_indexNames_Get(JsHandle);
extern (C) JsHandle IDBObjectStore_transaction_Get(JsHandle);
extern (C) bool IDBObjectStore_autoIncrement_Get(JsHandle);
extern (C) JsHandle IDBObjectStore_put(JsHandle, JsHandle, JsHandle);
extern (C) JsHandle IDBObjectStore_add(JsHandle, JsHandle, JsHandle);
extern (C) JsHandle IDBObjectStore_delete(JsHandle, JsHandle);
extern (C) JsHandle IDBObjectStore_clear(JsHandle);
extern (C) JsHandle IDBObjectStore_get(JsHandle, JsHandle);
extern (C) JsHandle IDBObjectStore_getKey(JsHandle, JsHandle);
extern (C) JsHandle IDBObjectStore_getAll(JsHandle, JsHandle, uint);
extern (C) JsHandle IDBObjectStore_getAllKeys(JsHandle, JsHandle, uint);
extern (C) JsHandle IDBObjectStore_count(JsHandle, JsHandle);
extern (C) JsHandle IDBObjectStore_openCursor(JsHandle, JsHandle, IDBCursorDirection);
extern (C) JsHandle IDBObjectStore_openKeyCursor(JsHandle, JsHandle, IDBCursorDirection);
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