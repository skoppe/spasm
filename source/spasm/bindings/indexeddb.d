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
    return Any(JsHandle(IDBCursor_key_Get(this.handle));
  }
  auto primaryKey() {
    return Any(JsHandle(IDBCursor_primaryKey_Get(this.handle));
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
    return IDBRequest(JsHandle(IDBCursor_update(this.handle, value.handle));
  }
  auto delete_() {
    return IDBRequest(JsHandle(IDBCursor_delete(this.handle));
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
    return Any(JsHandle(IDBCursorWithValue_value_Get(this._parent));
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
    return DOMStringList(JsHandle(IDBDatabase_objectStoreNames_Get(this._parent));
  }
  auto transaction(SumType!(string, Sequence!(string)) storeNames, IDBTransactionMode mode /* = "readonly" */) {
    return IDBTransaction(JsHandle(IDBDatabase_transaction(this._parent, storeNames, mode));
  }
  auto close() {
    IDBDatabase_close(this._parent);
  }
  auto createObjectStore(string name, IDBObjectStoreParameters options) {
    return IDBObjectStore(JsHandle(IDBDatabase_createObjectStore(this._parent, name, options.handle));
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
    return IDBOpenDBRequest(JsHandle(IDBFactory_open(this.handle, name, version_));
  }
  auto deleteDatabase(string name) {
    return IDBOpenDBRequest(JsHandle(IDBFactory_deleteDatabase(this.handle, name));
  }
  auto databases() {
    return Promise!(Sequence!(IDBDatabaseInfo))(JsHandle(IDBFactory_databases(this.handle));
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
    return IDBObjectStore(JsHandle(IDBIndex_objectStore_Get(this.handle));
  }
  auto keyPath() {
    return Any(JsHandle(IDBIndex_keyPath_Get(this.handle));
  }
  auto multiEntry() {
    return IDBIndex_multiEntry_Get(this.handle);
  }
  auto unique() {
    return IDBIndex_unique_Get(this.handle);
  }
  auto get(Any query) {
    return IDBRequest(JsHandle(IDBIndex_get(this.handle, query.handle));
  }
  auto getKey(Any query) {
    return IDBRequest(JsHandle(IDBIndex_getKey(this.handle, query.handle));
  }
  auto getAll(Any query, uint count) {
    return IDBRequest(JsHandle(IDBIndex_getAll(this.handle, query.handle, count));
  }
  auto getAllKeys(Any query, uint count) {
    return IDBRequest(JsHandle(IDBIndex_getAllKeys(this.handle, query.handle, count));
  }
  auto count(Any query) {
    return IDBRequest(JsHandle(IDBIndex_count(this.handle, query.handle));
  }
  auto openCursor(Any query, IDBCursorDirection direction /* = "next" */) {
    return IDBRequest(JsHandle(IDBIndex_openCursor(this.handle, query.handle, direction));
  }
  auto openKeyCursor(Any query, IDBCursorDirection direction /* = "next" */) {
    return IDBRequest(JsHandle(IDBIndex_openKeyCursor(this.handle, query.handle, direction));
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
    return Any(JsHandle(IDBKeyRange_lower_Get(this.handle));
  }
  auto upper() {
    return Any(JsHandle(IDBKeyRange_upper_Get(this.handle));
  }
  auto lowerOpen() {
    return IDBKeyRange_lowerOpen_Get(this.handle);
  }
  auto upperOpen() {
    return IDBKeyRange_upperOpen_Get(this.handle);
  }
  auto only(Any value) {
    return IDBKeyRange(JsHandle(IDBKeyRange_only(this.handle, value.handle));
  }
  auto lowerBound(Any lower, bool open /* = false */) {
    return IDBKeyRange(JsHandle(IDBKeyRange_lowerBound(this.handle, lower.handle, open));
  }
  auto upperBound(Any upper, bool open /* = false */) {
    return IDBKeyRange(JsHandle(IDBKeyRange_upperBound(this.handle, upper.handle, open));
  }
  auto bound(Any lower, Any upper, bool lowerOpen /* = false */, bool upperOpen /* = false */) {
    return IDBKeyRange(JsHandle(IDBKeyRange_bound(this.handle, lower.handle, upper.handle, lowerOpen, upperOpen));
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
    return Any(JsHandle(IDBObjectStore_keyPath_Get(this.handle));
  }
  auto indexNames() {
    return DOMStringList(JsHandle(IDBObjectStore_indexNames_Get(this.handle));
  }
  auto transaction() {
    return IDBTransaction(JsHandle(IDBObjectStore_transaction_Get(this.handle));
  }
  auto autoIncrement() {
    return IDBObjectStore_autoIncrement_Get(this.handle);
  }
  auto put(Any value, Any key) {
    return IDBRequest(JsHandle(IDBObjectStore_put(this.handle, value.handle, key.handle));
  }
  auto add(Any value, Any key) {
    return IDBRequest(JsHandle(IDBObjectStore_add(this.handle, value.handle, key.handle));
  }
  auto delete_(Any query) {
    return IDBRequest(JsHandle(IDBObjectStore_delete(this.handle, query.handle));
  }
  auto clear() {
    return IDBRequest(JsHandle(IDBObjectStore_clear(this.handle));
  }
  auto get(Any query) {
    return IDBRequest(JsHandle(IDBObjectStore_get(this.handle, query.handle));
  }
  auto getKey(Any query) {
    return IDBRequest(JsHandle(IDBObjectStore_getKey(this.handle, query.handle));
  }
  auto getAll(Any query, uint count) {
    return IDBRequest(JsHandle(IDBObjectStore_getAll(this.handle, query.handle, count));
  }
  auto getAllKeys(Any query, uint count) {
    return IDBRequest(JsHandle(IDBObjectStore_getAllKeys(this.handle, query.handle, count));
  }
  auto count(Any query) {
    return IDBRequest(JsHandle(IDBObjectStore_count(this.handle, query.handle));
  }
  auto openCursor(Any query, IDBCursorDirection direction /* = "next" */) {
    return IDBRequest(JsHandle(IDBObjectStore_openCursor(this.handle, query.handle, direction));
  }
  auto openKeyCursor(Any query, IDBCursorDirection direction /* = "next" */) {
    return IDBRequest(JsHandle(IDBObjectStore_openKeyCursor(this.handle, query.handle, direction));
  }
  auto index(string name) {
    return IDBIndex(JsHandle(IDBObjectStore_index(this.handle, name));
  }
  auto createIndex(string name, SumType!(string, Sequence!(string)) keyPath, IDBIndexParameters options) {
    return IDBIndex(JsHandle(IDBObjectStore_createIndex(this.handle, name, keyPath, options.handle));
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
    return Any(JsHandle(IDBRequest_result_Get(this._parent));
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
    return DOMStringList(JsHandle(IDBTransaction_objectStoreNames_Get(this._parent));
  }
  auto mode() {
    return IDBTransaction_mode_Get(this._parent);
  }
  auto db() {
    return IDBDatabase(JsHandle(IDBTransaction_db_Get(this._parent));
  }
  auto error() {
    return DOMException(JsHandle(IDBTransaction_error_Get(this._parent));
  }
  auto objectStore(string name) {
    return IDBObjectStore(JsHandle(IDBTransaction_objectStore(this._parent, name));
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


extern (C) SumType!(IDBObjectStore, IDBIndex) IDBCursor_source_Get(Handle);
extern (C) IDBCursorDirection IDBCursor_direction_Get(Handle);
extern (C) Handle IDBCursor_key_Get(Handle);
extern (C) Handle IDBCursor_primaryKey_Get(Handle);
extern (C) void IDBCursor_advance(Handle, uint);
extern (C) void IDBCursor_continue(Handle, Handle);
extern (C) void IDBCursor_continuePrimaryKey(Handle, Handle, Handle);
extern (C) Handle IDBCursor_update(Handle, Handle);
extern (C) Handle IDBCursor_delete(Handle);
extern (C) Handle IDBCursorWithValue_value_Get(Handle);
extern (C) string IDBDatabase_name_Get(Handle);
extern (C) ulong IDBDatabase_version_Get(Handle);
extern (C) Handle IDBDatabase_objectStoreNames_Get(Handle);
extern (C) Handle IDBDatabase_transaction(Handle, SumType!(string, Sequence!(string)), IDBTransactionMode);
extern (C) void IDBDatabase_close(Handle);
extern (C) Handle IDBDatabase_createObjectStore(Handle, string, Handle);
extern (C) void IDBDatabase_deleteObjectStore(Handle, string);
extern (C) void IDBDatabase_onabort_Set(Handle, EventHandler);
extern (C) EventHandler IDBDatabase_onabort_Get(Handle);
extern (C) void IDBDatabase_onclose_Set(Handle, EventHandler);
extern (C) EventHandler IDBDatabase_onclose_Get(Handle);
extern (C) void IDBDatabase_onerror_Set(Handle, EventHandler);
extern (C) EventHandler IDBDatabase_onerror_Get(Handle);
extern (C) void IDBDatabase_onversionchange_Set(Handle, EventHandler);
extern (C) EventHandler IDBDatabase_onversionchange_Get(Handle);
extern (C) void IDBDatabaseInfo_name_Set(Handle, string);
extern (C) string IDBDatabaseInfo_name_Get(Handle);
extern (C) void IDBDatabaseInfo_version_Set(Handle, ulong);
extern (C) ulong IDBDatabaseInfo_version_Get(Handle);
extern (C) Handle IDBFactory_open(Handle, string, ulong);
extern (C) Handle IDBFactory_deleteDatabase(Handle, string);
extern (C) Handle IDBFactory_databases(Handle);
extern (C) short IDBFactory_cmp(Handle, Handle, Handle);
extern (C) void IDBIndex_name_Set(Handle, string);
extern (C) string IDBIndex_name_Get(Handle);
extern (C) Handle IDBIndex_objectStore_Get(Handle);
extern (C) Handle IDBIndex_keyPath_Get(Handle);
extern (C) bool IDBIndex_multiEntry_Get(Handle);
extern (C) bool IDBIndex_unique_Get(Handle);
extern (C) Handle IDBIndex_get(Handle, Handle);
extern (C) Handle IDBIndex_getKey(Handle, Handle);
extern (C) Handle IDBIndex_getAll(Handle, Handle, uint);
extern (C) Handle IDBIndex_getAllKeys(Handle, Handle, uint);
extern (C) Handle IDBIndex_count(Handle, Handle);
extern (C) Handle IDBIndex_openCursor(Handle, Handle, IDBCursorDirection);
extern (C) Handle IDBIndex_openKeyCursor(Handle, Handle, IDBCursorDirection);
extern (C) void IDBIndexParameters_unique_Set(Handle, bool);
extern (C) bool IDBIndexParameters_unique_Get(Handle);
extern (C) void IDBIndexParameters_multiEntry_Set(Handle, bool);
extern (C) bool IDBIndexParameters_multiEntry_Get(Handle);
extern (C) Handle IDBKeyRange_lower_Get(Handle);
extern (C) Handle IDBKeyRange_upper_Get(Handle);
extern (C) bool IDBKeyRange_lowerOpen_Get(Handle);
extern (C) bool IDBKeyRange_upperOpen_Get(Handle);
extern (C) Handle IDBKeyRange_only(Handle, Handle);
extern (C) Handle IDBKeyRange_lowerBound(Handle, Handle, bool);
extern (C) Handle IDBKeyRange_upperBound(Handle, Handle, bool);
extern (C) Handle IDBKeyRange_bound(Handle, Handle, Handle, bool, bool);
extern (C) bool IDBKeyRange__includes(Handle, Handle);
extern (C) void IDBObjectStore_name_Set(Handle, string);
extern (C) string IDBObjectStore_name_Get(Handle);
extern (C) Handle IDBObjectStore_keyPath_Get(Handle);
extern (C) Handle IDBObjectStore_indexNames_Get(Handle);
extern (C) Handle IDBObjectStore_transaction_Get(Handle);
extern (C) bool IDBObjectStore_autoIncrement_Get(Handle);
extern (C) Handle IDBObjectStore_put(Handle, Handle, Handle);
extern (C) Handle IDBObjectStore_add(Handle, Handle, Handle);
extern (C) Handle IDBObjectStore_delete(Handle, Handle);
extern (C) Handle IDBObjectStore_clear(Handle);
extern (C) Handle IDBObjectStore_get(Handle, Handle);
extern (C) Handle IDBObjectStore_getKey(Handle, Handle);
extern (C) Handle IDBObjectStore_getAll(Handle, Handle, uint);
extern (C) Handle IDBObjectStore_getAllKeys(Handle, Handle, uint);
extern (C) Handle IDBObjectStore_count(Handle, Handle);
extern (C) Handle IDBObjectStore_openCursor(Handle, Handle, IDBCursorDirection);
extern (C) Handle IDBObjectStore_openKeyCursor(Handle, Handle, IDBCursorDirection);
extern (C) Handle IDBObjectStore_index(Handle, string);
extern (C) Handle IDBObjectStore_createIndex(Handle, string, SumType!(string, Sequence!(string)), Handle);
extern (C) void IDBObjectStore_deleteIndex(Handle, string);
extern (C) void IDBObjectStoreParameters_keyPath_Set(Handle, bool, SumType!(string, Sequence!(string)));
extern (C) Optional!(SumType!(string, Sequence!(string))) IDBObjectStoreParameters_keyPath_Get(Handle);
extern (C) void IDBObjectStoreParameters_autoIncrement_Set(Handle, bool);
extern (C) bool IDBObjectStoreParameters_autoIncrement_Get(Handle);
extern (C) void IDBOpenDBRequest_onblocked_Set(Handle, EventHandler);
extern (C) EventHandler IDBOpenDBRequest_onblocked_Get(Handle);
extern (C) void IDBOpenDBRequest_onupgradeneeded_Set(Handle, EventHandler);
extern (C) EventHandler IDBOpenDBRequest_onupgradeneeded_Get(Handle);
extern (C) Handle IDBRequest_result_Get(Handle);
extern (C) Optional!(DOMException) IDBRequest_error_Get(Handle);
extern (C) Optional!(SumType!(IDBObjectStore, IDBIndex, IDBCursor)) IDBRequest_source_Get(Handle);
extern (C) Optional!(IDBTransaction) IDBRequest_transaction_Get(Handle);
extern (C) IDBRequestReadyState IDBRequest_readyState_Get(Handle);
extern (C) void IDBRequest_onsuccess_Set(Handle, EventHandler);
extern (C) EventHandler IDBRequest_onsuccess_Get(Handle);
extern (C) void IDBRequest_onerror_Set(Handle, EventHandler);
extern (C) EventHandler IDBRequest_onerror_Get(Handle);
extern (C) Handle IDBTransaction_objectStoreNames_Get(Handle);
extern (C) IDBTransactionMode IDBTransaction_mode_Get(Handle);
extern (C) Handle IDBTransaction_db_Get(Handle);
extern (C) Handle IDBTransaction_error_Get(Handle);
extern (C) Handle IDBTransaction_objectStore(Handle, string);
extern (C) void IDBTransaction_abort(Handle);
extern (C) void IDBTransaction_onabort_Set(Handle, EventHandler);
extern (C) EventHandler IDBTransaction_onabort_Get(Handle);
extern (C) void IDBTransaction_oncomplete_Set(Handle, EventHandler);
extern (C) EventHandler IDBTransaction_oncomplete_Get(Handle);
extern (C) void IDBTransaction_onerror_Set(Handle, EventHandler);
extern (C) EventHandler IDBTransaction_onerror_Get(Handle);
extern (C) ulong IDBVersionChangeEvent_oldVersion_Get(Handle);
extern (C) Optional!(ulong) IDBVersionChangeEvent_newVersion_Get(Handle);
extern (C) void IDBVersionChangeEventInit_oldVersion_Set(Handle, ulong);
extern (C) ulong IDBVersionChangeEventInit_oldVersion_Get(Handle);
extern (C) void IDBVersionChangeEventInit_newVersion_Set(Handle, bool, ulong);
extern (C) Optional!(ulong) IDBVersionChangeEventInit_newVersion_Get(Handle);