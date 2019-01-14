module spasm.bindings.indexeddb;

import spasm.types;
import spasm.bindings.common;
import spasm.bindings.dom;
import spasm.bindings.html;

struct IDBCursor {
  JsHandle handle;
  alias handle this;
  auto source() {
    auto result = IDBCursor_source_Get(this.handle);
    return result;
  }
  auto direction() {
    auto result = IDBCursor_direction_Get(this.handle);
    return result;
  }
  auto key() {
    auto result = Any(JsHandle(IDBCursor_key_Get(this.handle)));
    return result;
  }
  auto primaryKey() {
    auto result = Any(JsHandle(IDBCursor_primaryKey_Get(this.handle)));
    return result;
  }
  auto advance(uint count) {
    IDBCursor_advance(this.handle, count);
  }
  auto continue_(T0)(T0 key) {
    Handle _handle_key = getOrCreateHandle(key);
    IDBCursor_continue(this.handle, _handle_key);
    dropHandle!(T0)(_handle_key);
  }
  auto continuePrimaryKey(T0, T1)(T0 key, T1 primaryKey) {
    Handle _handle_key = getOrCreateHandle(key);
    Handle _handle_primaryKey = getOrCreateHandle(primaryKey);
    IDBCursor_continuePrimaryKey(this.handle, _handle_key, _handle_primaryKey);
    dropHandle!(T0)(_handle_key);
    dropHandle!(T1)(_handle_primaryKey);
  }
  auto update(T0)(T0 value) {
    Handle _handle_value = getOrCreateHandle(value);
    auto result = IDBRequest(JsHandle(IDBCursor_update(this.handle, _handle_value)));
    dropHandle!(T0)(_handle_value);
    return result;
  }
  auto delete_() {
    auto result = IDBRequest(JsHandle(IDBCursor_delete(this.handle)));
    return result;
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
    auto result = Any(JsHandle(IDBCursorWithValue_value_Get(this._parent)));
    return result;
  }
}
struct IDBDatabase {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto name() {
    auto result = IDBDatabase_name_Get(this._parent);
    return result;
  }
  auto version_() {
    auto result = IDBDatabase_version_Get(this._parent);
    return result;
  }
  auto objectStoreNames() {
    auto result = DOMStringList(JsHandle(IDBDatabase_objectStoreNames_Get(this._parent)));
    return result;
  }
  auto transaction(SumType!(string, Sequence!(string)) storeNames, IDBTransactionMode mode /* = "readonly" */) {
    auto result = IDBTransaction(JsHandle(IDBDatabase_transaction(this._parent, storeNames, mode)));
    return result;
  }
  auto close() {
    IDBDatabase_close(this._parent);
  }
  auto createObjectStore(string name, IDBObjectStoreParameters options) {
    auto result = IDBObjectStore(JsHandle(IDBDatabase_createObjectStore(this._parent, name, options.handle)));
    return result;
  }
  auto deleteObjectStore(string name) {
    IDBDatabase_deleteObjectStore(this._parent, name);
  }
  auto onabort(EventHandler onabort) {
    IDBDatabase_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    auto result = IDBDatabase_onabort_Get(this._parent);
    return result;
  }
  auto onclose(EventHandler onclose) {
    IDBDatabase_onclose_Set(this._parent, onclose);
  }
  auto onclose() {
    auto result = IDBDatabase_onclose_Get(this._parent);
    return result;
  }
  auto onerror(EventHandler onerror) {
    IDBDatabase_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    auto result = IDBDatabase_onerror_Get(this._parent);
    return result;
  }
  auto onversionchange(EventHandler onversionchange) {
    IDBDatabase_onversionchange_Set(this._parent, onversionchange);
  }
  auto onversionchange() {
    auto result = IDBDatabase_onversionchange_Get(this._parent);
    return result;
  }
}
struct IDBDatabaseInfo {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return IDBDatabaseInfo(JsHandle(spasm_add__object()));
  }
  auto name(string name) {
    IDBDatabaseInfo_name_Set(this.handle, name);
  }
  auto name() {
    auto result = IDBDatabaseInfo_name_Get(this.handle);
    return result;
  }
  auto version_(ulong version_) {
    IDBDatabaseInfo_version_Set(this.handle, version_);
  }
  auto version_() {
    auto result = IDBDatabaseInfo_version_Get(this.handle);
    return result;
  }
}
struct IDBFactory {
  JsHandle handle;
  alias handle this;
  auto open(string name, ulong version_) {
    auto result = IDBOpenDBRequest(JsHandle(IDBFactory_open(this.handle, name, version_)));
    return result;
  }
  auto deleteDatabase(string name) {
    auto result = IDBOpenDBRequest(JsHandle(IDBFactory_deleteDatabase(this.handle, name)));
    return result;
  }
  auto databases() {
    auto result = Promise!(Sequence!(IDBDatabaseInfo))(JsHandle(IDBFactory_databases(this.handle)));
    return result;
  }
  auto cmp(T0, T1)(T0 first, T1 second) {
    Handle _handle_first = getOrCreateHandle(first);
    Handle _handle_second = getOrCreateHandle(second);
    auto result = IDBFactory_cmp(this.handle, _handle_first, _handle_second);
    dropHandle!(T0)(_handle_first);
    dropHandle!(T1)(_handle_second);
    return result;
  }
}
struct IDBIndex {
  JsHandle handle;
  alias handle this;
  auto name(string name) {
    IDBIndex_name_Set(this.handle, name);
  }
  auto name() {
    auto result = IDBIndex_name_Get(this.handle);
    return result;
  }
  auto objectStore() {
    auto result = IDBObjectStore(JsHandle(IDBIndex_objectStore_Get(this.handle)));
    return result;
  }
  auto keyPath() {
    auto result = Any(JsHandle(IDBIndex_keyPath_Get(this.handle)));
    return result;
  }
  auto multiEntry() {
    auto result = IDBIndex_multiEntry_Get(this.handle);
    return result;
  }
  auto unique() {
    auto result = IDBIndex_unique_Get(this.handle);
    return result;
  }
  auto get(T0)(T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(JsHandle(IDBIndex_get(this.handle, _handle_query)));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getKey(T0)(T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(JsHandle(IDBIndex_getKey(this.handle, _handle_query)));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getAll(T0)(T0 query, uint count) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(JsHandle(IDBIndex_getAll(this.handle, _handle_query, count)));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getAllKeys(T0)(T0 query, uint count) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(JsHandle(IDBIndex_getAllKeys(this.handle, _handle_query, count)));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto count(T0)(T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(JsHandle(IDBIndex_count(this.handle, _handle_query)));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto openCursor(T0)(T0 query, IDBCursorDirection direction /* = "next" */) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(JsHandle(IDBIndex_openCursor(this.handle, _handle_query, direction)));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto openKeyCursor(T0)(T0 query, IDBCursorDirection direction /* = "next" */) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(JsHandle(IDBIndex_openKeyCursor(this.handle, _handle_query, direction)));
    dropHandle!(T0)(_handle_query);
    return result;
  }
}
struct IDBIndexParameters {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return IDBIndexParameters(JsHandle(spasm_add__object()));
  }
  auto unique(bool unique) {
    IDBIndexParameters_unique_Set(this.handle, unique);
  }
  auto unique() {
    auto result = IDBIndexParameters_unique_Get(this.handle);
    return result;
  }
  auto multiEntry(bool multiEntry) {
    IDBIndexParameters_multiEntry_Set(this.handle, multiEntry);
  }
  auto multiEntry() {
    auto result = IDBIndexParameters_multiEntry_Get(this.handle);
    return result;
  }
}
struct IDBKeyRange {
  JsHandle handle;
  alias handle this;
  auto lower() {
    auto result = Any(JsHandle(IDBKeyRange_lower_Get(this.handle)));
    return result;
  }
  auto upper() {
    auto result = Any(JsHandle(IDBKeyRange_upper_Get(this.handle)));
    return result;
  }
  auto lowerOpen() {
    auto result = IDBKeyRange_lowerOpen_Get(this.handle);
    return result;
  }
  auto upperOpen() {
    auto result = IDBKeyRange_upperOpen_Get(this.handle);
    return result;
  }
  auto only(T0)(T0 value) {
    Handle _handle_value = getOrCreateHandle(value);
    auto result = IDBKeyRange(JsHandle(IDBKeyRange_only(this.handle, _handle_value)));
    dropHandle!(T0)(_handle_value);
    return result;
  }
  auto lowerBound(T0)(T0 lower, bool open /* = false */) {
    Handle _handle_lower = getOrCreateHandle(lower);
    auto result = IDBKeyRange(JsHandle(IDBKeyRange_lowerBound(this.handle, _handle_lower, open)));
    dropHandle!(T0)(_handle_lower);
    return result;
  }
  auto upperBound(T0)(T0 upper, bool open /* = false */) {
    Handle _handle_upper = getOrCreateHandle(upper);
    auto result = IDBKeyRange(JsHandle(IDBKeyRange_upperBound(this.handle, _handle_upper, open)));
    dropHandle!(T0)(_handle_upper);
    return result;
  }
  auto bound(T0, T1)(T0 lower, T1 upper, bool lowerOpen /* = false */, bool upperOpen /* = false */) {
    Handle _handle_lower = getOrCreateHandle(lower);
    Handle _handle_upper = getOrCreateHandle(upper);
    auto result = IDBKeyRange(JsHandle(IDBKeyRange_bound(this.handle, _handle_lower, _handle_upper, lowerOpen, upperOpen)));
    dropHandle!(T0)(_handle_lower);
    dropHandle!(T1)(_handle_upper);
    return result;
  }
  auto _includes(T0)(T0 key) {
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBKeyRange__includes(this.handle, _handle_key);
    dropHandle!(T0)(_handle_key);
    return result;
  }
}
struct IDBObjectStore {
  JsHandle handle;
  alias handle this;
  auto name(string name) {
    IDBObjectStore_name_Set(this.handle, name);
  }
  auto name() {
    auto result = IDBObjectStore_name_Get(this.handle);
    return result;
  }
  auto keyPath() {
    auto result = Any(JsHandle(IDBObjectStore_keyPath_Get(this.handle)));
    return result;
  }
  auto indexNames() {
    auto result = DOMStringList(JsHandle(IDBObjectStore_indexNames_Get(this.handle)));
    return result;
  }
  auto transaction() {
    auto result = IDBTransaction(JsHandle(IDBObjectStore_transaction_Get(this.handle)));
    return result;
  }
  auto autoIncrement() {
    auto result = IDBObjectStore_autoIncrement_Get(this.handle);
    return result;
  }
  auto put(T0, T1)(T0 value, T1 key) {
    Handle _handle_value = getOrCreateHandle(value);
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBRequest(JsHandle(IDBObjectStore_put(this.handle, _handle_value, _handle_key)));
    dropHandle!(T0)(_handle_value);
    dropHandle!(T1)(_handle_key);
    return result;
  }
  auto add(T0, T1)(T0 value, T1 key) {
    Handle _handle_value = getOrCreateHandle(value);
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBRequest(JsHandle(IDBObjectStore_add(this.handle, _handle_value, _handle_key)));
    dropHandle!(T0)(_handle_value);
    dropHandle!(T1)(_handle_key);
    return result;
  }
  auto delete_(T0)(T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(JsHandle(IDBObjectStore_delete(this.handle, _handle_query)));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto clear() {
    auto result = IDBRequest(JsHandle(IDBObjectStore_clear(this.handle)));
    return result;
  }
  auto get(T0)(T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(JsHandle(IDBObjectStore_get(this.handle, _handle_query)));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getKey(T0)(T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(JsHandle(IDBObjectStore_getKey(this.handle, _handle_query)));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getAll(T0)(T0 query, uint count) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(JsHandle(IDBObjectStore_getAll(this.handle, _handle_query, count)));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getAllKeys(T0)(T0 query, uint count) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(JsHandle(IDBObjectStore_getAllKeys(this.handle, _handle_query, count)));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto count(T0)(T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(JsHandle(IDBObjectStore_count(this.handle, _handle_query)));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto openCursor(T0)(T0 query, IDBCursorDirection direction /* = "next" */) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(JsHandle(IDBObjectStore_openCursor(this.handle, _handle_query, direction)));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto openKeyCursor(T0)(T0 query, IDBCursorDirection direction /* = "next" */) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(JsHandle(IDBObjectStore_openKeyCursor(this.handle, _handle_query, direction)));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto index(string name) {
    auto result = IDBIndex(JsHandle(IDBObjectStore_index(this.handle, name)));
    return result;
  }
  auto createIndex(string name, SumType!(string, Sequence!(string)) keyPath, IDBIndexParameters options) {
    auto result = IDBIndex(JsHandle(IDBObjectStore_createIndex(this.handle, name, keyPath, options.handle)));
    return result;
  }
  auto deleteIndex(string name) {
    IDBObjectStore_deleteIndex(this.handle, name);
  }
}
struct IDBObjectStoreParameters {
  JsHandle handle;
  alias handle this;
  static auto create() {
    return IDBObjectStoreParameters(JsHandle(spasm_add__object()));
  }
  auto keyPath(Optional!(SumType!(string, Sequence!(string))) keyPath) {
    IDBObjectStoreParameters_keyPath_Set(this.handle, !keyPath.empty, keyPath.front);
  }
  auto keyPath() {
    auto result = IDBObjectStoreParameters_keyPath_Get(this.handle);
    return result;
  }
  auto autoIncrement(bool autoIncrement) {
    IDBObjectStoreParameters_autoIncrement_Set(this.handle, autoIncrement);
  }
  auto autoIncrement() {
    auto result = IDBObjectStoreParameters_autoIncrement_Get(this.handle);
    return result;
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
    auto result = IDBOpenDBRequest_onblocked_Get(this._parent);
    return result;
  }
  auto onupgradeneeded(EventHandler onupgradeneeded) {
    IDBOpenDBRequest_onupgradeneeded_Set(this._parent, onupgradeneeded);
  }
  auto onupgradeneeded() {
    auto result = IDBOpenDBRequest_onupgradeneeded_Get(this._parent);
    return result;
  }
}
struct IDBRequest {
  EventTarget _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventTarget(h);
  }
  auto result() {
    auto result = Any(JsHandle(IDBRequest_result_Get(this._parent)));
    return result;
  }
  auto error() {
    auto result = IDBRequest_error_Get(this._parent);
    return result;
  }
  auto source() {
    auto result = IDBRequest_source_Get(this._parent);
    return result;
  }
  auto transaction() {
    auto result = IDBRequest_transaction_Get(this._parent);
    return result;
  }
  auto readyState() {
    auto result = IDBRequest_readyState_Get(this._parent);
    return result;
  }
  auto onsuccess(EventHandler onsuccess) {
    IDBRequest_onsuccess_Set(this._parent, onsuccess);
  }
  auto onsuccess() {
    auto result = IDBRequest_onsuccess_Get(this._parent);
    return result;
  }
  auto onerror(EventHandler onerror) {
    IDBRequest_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    auto result = IDBRequest_onerror_Get(this._parent);
    return result;
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
    auto result = DOMStringList(JsHandle(IDBTransaction_objectStoreNames_Get(this._parent)));
    return result;
  }
  auto mode() {
    auto result = IDBTransaction_mode_Get(this._parent);
    return result;
  }
  auto db() {
    auto result = IDBDatabase(JsHandle(IDBTransaction_db_Get(this._parent)));
    return result;
  }
  auto error() {
    auto result = DOMException(JsHandle(IDBTransaction_error_Get(this._parent)));
    return result;
  }
  auto objectStore(string name) {
    auto result = IDBObjectStore(JsHandle(IDBTransaction_objectStore(this._parent, name)));
    return result;
  }
  auto abort() {
    IDBTransaction_abort(this._parent);
  }
  auto onabort(EventHandler onabort) {
    IDBTransaction_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    auto result = IDBTransaction_onabort_Get(this._parent);
    return result;
  }
  auto oncomplete(EventHandler oncomplete) {
    IDBTransaction_oncomplete_Set(this._parent, oncomplete);
  }
  auto oncomplete() {
    auto result = IDBTransaction_oncomplete_Get(this._parent);
    return result;
  }
  auto onerror(EventHandler onerror) {
    IDBTransaction_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    auto result = IDBTransaction_onerror_Get(this._parent);
    return result;
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
    auto result = IDBVersionChangeEvent_oldVersion_Get(this._parent);
    return result;
  }
  auto newVersion() {
    auto result = IDBVersionChangeEvent_newVersion_Get(this._parent);
    return result;
  }
}
struct IDBVersionChangeEventInit {
  EventInit _parent;
  alias _parent this;
  this(JsHandle h) {
    _parent = EventInit(h);
  }
  static auto create() {
    return IDBVersionChangeEventInit(JsHandle(spasm_add__object()));
  }
  auto oldVersion(ulong oldVersion) {
    IDBVersionChangeEventInit_oldVersion_Set(this._parent, oldVersion);
  }
  auto oldVersion() {
    auto result = IDBVersionChangeEventInit_oldVersion_Get(this._parent);
    return result;
  }
  auto newVersion(Optional!(ulong) newVersion) {
    IDBVersionChangeEventInit_newVersion_Set(this._parent, !newVersion.empty, newVersion.front);
  }
  auto newVersion() {
    auto result = IDBVersionChangeEventInit_newVersion_Get(this._parent);
    return result;
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
extern (C) void IDBDatabaseInfo_create(Handle);
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
extern (C) void IDBIndexParameters_create(Handle);
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
extern (C) void IDBObjectStoreParameters_create(Handle);
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
extern (C) void IDBVersionChangeEventInit_create(Handle);
extern (C) void IDBVersionChangeEventInit_oldVersion_Set(Handle, ulong);
extern (C) ulong IDBVersionChangeEventInit_oldVersion_Get(Handle);
extern (C) void IDBVersionChangeEventInit_newVersion_Set(Handle, bool, ulong);
extern (C) Optional!(ulong) IDBVersionChangeEventInit_newVersion_Get(Handle);