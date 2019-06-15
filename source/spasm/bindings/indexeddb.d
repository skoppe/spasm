module spasm.bindings.indexeddb;

import spasm.types;
import spasm.bindings.common;
import spasm.bindings.dom;
import spasm.bindings.html;

@safe:
nothrow:

struct IDBCursor {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
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
  void advance(uint count) {
    IDBCursor_advance(this.handle, count);
  }
  void continue_(T0)(scope auto ref T0 key) {
    Handle _handle_key = getOrCreateHandle(key);
    IDBCursor_continue(this.handle, _handle_key);
    dropHandle!(T0)(_handle_key);
  }
  void continue_() {
    IDBCursor_continue_0(this.handle);
  }
  void continuePrimaryKey(T0, T1)(scope auto ref T0 key, scope auto ref T1 primaryKey) {
    Handle _handle_key = getOrCreateHandle(key);
    Handle _handle_primaryKey = getOrCreateHandle(primaryKey);
    IDBCursor_continuePrimaryKey(this.handle, _handle_key, _handle_primaryKey);
    dropHandle!(T0)(_handle_key);
    dropHandle!(T1)(_handle_primaryKey);
  }
  auto update(T0)(scope auto ref T0 value) {
    Handle _handle_value = getOrCreateHandle(value);
    auto result = IDBRequest(IDBCursor_update(this.handle, _handle_value));
    dropHandle!(T0)(_handle_value);
    return result;
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
  nothrow:
  spasm.bindings.indexeddb.IDBCursor _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .IDBCursor(h);
  }
  auto value() {
    return Any(IDBCursorWithValue_value_Get(this._parent));
  }
}
struct IDBDatabase {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
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
  auto transaction(scope ref SumType!(string, Sequence!(string)) storeNames, IDBTransactionMode mode /* = "readonly" */) {
    return IDBTransaction(IDBDatabase_transaction(this._parent, storeNames, mode));
  }
  auto transaction(scope ref SumType!(string, Sequence!(string)) storeNames) {
    return IDBTransaction(IDBDatabase_transaction_0(this._parent, storeNames));
  }
  void close() {
    IDBDatabase_close(this._parent);
  }
  auto createObjectStore(string name, scope ref IDBObjectStoreParameters options) {
    return IDBObjectStore(IDBDatabase_createObjectStore(this._parent, name, options.handle));
  }
  auto createObjectStore(string name) {
    return IDBObjectStore(IDBDatabase_createObjectStore_0(this._parent, name));
  }
  void deleteObjectStore(string name) {
    IDBDatabase_deleteObjectStore(this._parent, name);
  }
  void onabort(EventHandler onabort) {
    IDBDatabase_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    return IDBDatabase_onabort_Get(this._parent);
  }
  void onclose(EventHandler onclose) {
    IDBDatabase_onclose_Set(this._parent, onclose);
  }
  auto onclose() {
    return IDBDatabase_onclose_Get(this._parent);
  }
  void onerror(EventHandler onerror) {
    IDBDatabase_onerror_Set(this._parent, onerror);
  }
  auto onerror() {
    return IDBDatabase_onerror_Get(this._parent);
  }
  void onversionchange(EventHandler onversionchange) {
    IDBDatabase_onversionchange_Set(this._parent, onversionchange);
  }
  auto onversionchange() {
    return IDBDatabase_onversionchange_Get(this._parent);
  }
}
struct IDBDatabaseInfo {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return IDBDatabaseInfo(spasm_add__object());
  }
  void name(string name) {
    IDBDatabaseInfo_name_Set(this.handle, name);
  }
  auto name() {
    return IDBDatabaseInfo_name_Get(this.handle);
  }
  void version_(ulong version_) {
    IDBDatabaseInfo_version_Set(this.handle, version_);
  }
  auto version_() {
    return IDBDatabaseInfo_version_Get(this.handle);
  }
}
struct IDBFactory {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  auto open(string name, ulong version_) {
    return IDBOpenDBRequest(IDBFactory_open(this.handle, name, version_));
  }
  auto open(string name) {
    return IDBOpenDBRequest(IDBFactory_open_0(this.handle, name));
  }
  auto deleteDatabase(string name) {
    return IDBOpenDBRequest(IDBFactory_deleteDatabase(this.handle, name));
  }
  auto databases() {
    return Promise!(Sequence!(IDBDatabaseInfo))(IDBFactory_databases(this.handle));
  }
  auto cmp(T0, T1)(scope auto ref T0 first, scope auto ref T1 second) {
    Handle _handle_first = getOrCreateHandle(first);
    Handle _handle_second = getOrCreateHandle(second);
    auto result = IDBFactory_cmp(this.handle, _handle_first, _handle_second);
    dropHandle!(T0)(_handle_first);
    dropHandle!(T1)(_handle_second);
    return result;
  }
}
struct IDBIndex {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void name(string name) {
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
  auto get(T0)(scope auto ref T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBIndex_get(this.handle, _handle_query));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getKey(T0)(scope auto ref T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBIndex_getKey(this.handle, _handle_query));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getAll(T0)(scope auto ref T0 query, uint count) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBIndex_getAll(this.handle, _handle_query, count));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getAll(T0)(scope auto ref T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBIndex_getAll_0(this.handle, _handle_query));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getAll() {
    return IDBRequest(IDBIndex_getAll_1(this.handle));
  }
  auto getAllKeys(T0)(scope auto ref T0 query, uint count) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBIndex_getAllKeys(this.handle, _handle_query, count));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getAllKeys(T0)(scope auto ref T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBIndex_getAllKeys_0(this.handle, _handle_query));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getAllKeys() {
    return IDBRequest(IDBIndex_getAllKeys_1(this.handle));
  }
  auto count(T0)(scope auto ref T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBIndex_count(this.handle, _handle_query));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto count() {
    return IDBRequest(IDBIndex_count_0(this.handle));
  }
  auto openCursor(T0)(scope auto ref T0 query, IDBCursorDirection direction /* = "next" */) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBIndex_openCursor(this.handle, _handle_query, direction));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto openCursor(T0)(scope auto ref T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBIndex_openCursor_0(this.handle, _handle_query));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto openCursor() {
    return IDBRequest(IDBIndex_openCursor_1(this.handle));
  }
  auto openKeyCursor(T0)(scope auto ref T0 query, IDBCursorDirection direction /* = "next" */) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBIndex_openKeyCursor(this.handle, _handle_query, direction));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto openKeyCursor(T0)(scope auto ref T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBIndex_openKeyCursor_0(this.handle, _handle_query));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto openKeyCursor() {
    return IDBRequest(IDBIndex_openKeyCursor_1(this.handle));
  }
}
struct IDBIndexParameters {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return IDBIndexParameters(spasm_add__object());
  }
  void unique(bool unique) {
    IDBIndexParameters_unique_Set(this.handle, unique);
  }
  auto unique() {
    return IDBIndexParameters_unique_Get(this.handle);
  }
  void multiEntry(bool multiEntry) {
    IDBIndexParameters_multiEntry_Set(this.handle, multiEntry);
  }
  auto multiEntry() {
    return IDBIndexParameters_multiEntry_Get(this.handle);
  }
}
struct IDBKeyRange {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
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
  auto only(T0)(scope auto ref T0 value) {
    Handle _handle_value = getOrCreateHandle(value);
    auto result = IDBKeyRange(IDBKeyRange_only(this.handle, _handle_value));
    dropHandle!(T0)(_handle_value);
    return result;
  }
  auto lowerBound(T0)(scope auto ref T0 lower, bool open /* = false */) {
    Handle _handle_lower = getOrCreateHandle(lower);
    auto result = IDBKeyRange(IDBKeyRange_lowerBound(this.handle, _handle_lower, open));
    dropHandle!(T0)(_handle_lower);
    return result;
  }
  auto lowerBound(T0)(scope auto ref T0 lower) {
    Handle _handle_lower = getOrCreateHandle(lower);
    auto result = IDBKeyRange(IDBKeyRange_lowerBound_0(this.handle, _handle_lower));
    dropHandle!(T0)(_handle_lower);
    return result;
  }
  auto upperBound(T0)(scope auto ref T0 upper, bool open /* = false */) {
    Handle _handle_upper = getOrCreateHandle(upper);
    auto result = IDBKeyRange(IDBKeyRange_upperBound(this.handle, _handle_upper, open));
    dropHandle!(T0)(_handle_upper);
    return result;
  }
  auto upperBound(T0)(scope auto ref T0 upper) {
    Handle _handle_upper = getOrCreateHandle(upper);
    auto result = IDBKeyRange(IDBKeyRange_upperBound_0(this.handle, _handle_upper));
    dropHandle!(T0)(_handle_upper);
    return result;
  }
  auto bound(T0, T1)(scope auto ref T0 lower, scope auto ref T1 upper, bool lowerOpen /* = false */, bool upperOpen /* = false */) {
    Handle _handle_lower = getOrCreateHandle(lower);
    Handle _handle_upper = getOrCreateHandle(upper);
    auto result = IDBKeyRange(IDBKeyRange_bound(this.handle, _handle_lower, _handle_upper, lowerOpen, upperOpen));
    dropHandle!(T0)(_handle_lower);
    dropHandle!(T1)(_handle_upper);
    return result;
  }
  auto bound(T0, T1)(scope auto ref T0 lower, scope auto ref T1 upper, bool lowerOpen /* = false */) {
    Handle _handle_lower = getOrCreateHandle(lower);
    Handle _handle_upper = getOrCreateHandle(upper);
    auto result = IDBKeyRange(IDBKeyRange_bound_0(this.handle, _handle_lower, _handle_upper, lowerOpen));
    dropHandle!(T0)(_handle_lower);
    dropHandle!(T1)(_handle_upper);
    return result;
  }
  auto bound(T0, T1)(scope auto ref T0 lower, scope auto ref T1 upper) {
    Handle _handle_lower = getOrCreateHandle(lower);
    Handle _handle_upper = getOrCreateHandle(upper);
    auto result = IDBKeyRange(IDBKeyRange_bound_1(this.handle, _handle_lower, _handle_upper));
    dropHandle!(T0)(_handle_lower);
    dropHandle!(T1)(_handle_upper);
    return result;
  }
  auto _includes(T0)(scope auto ref T0 key) {
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBKeyRange__includes(this.handle, _handle_key);
    dropHandle!(T0)(_handle_key);
    return result;
  }
}
struct IDBObjectStore {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  void name(string name) {
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
  auto put(T0, T1)(scope auto ref T0 value, scope auto ref T1 key) {
    Handle _handle_value = getOrCreateHandle(value);
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBRequest(IDBObjectStore_put(this.handle, _handle_value, _handle_key));
    dropHandle!(T0)(_handle_value);
    dropHandle!(T1)(_handle_key);
    return result;
  }
  auto put(T0)(scope auto ref T0 value) {
    Handle _handle_value = getOrCreateHandle(value);
    auto result = IDBRequest(IDBObjectStore_put_0(this.handle, _handle_value));
    dropHandle!(T0)(_handle_value);
    return result;
  }
  auto add(T0, T1)(scope auto ref T0 value, scope auto ref T1 key) {
    Handle _handle_value = getOrCreateHandle(value);
    Handle _handle_key = getOrCreateHandle(key);
    auto result = IDBRequest(IDBObjectStore_add(this.handle, _handle_value, _handle_key));
    dropHandle!(T0)(_handle_value);
    dropHandle!(T1)(_handle_key);
    return result;
  }
  auto add(T0)(scope auto ref T0 value) {
    Handle _handle_value = getOrCreateHandle(value);
    auto result = IDBRequest(IDBObjectStore_add_0(this.handle, _handle_value));
    dropHandle!(T0)(_handle_value);
    return result;
  }
  auto delete_(T0)(scope auto ref T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBObjectStore_delete(this.handle, _handle_query));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto clear() {
    return IDBRequest(IDBObjectStore_clear(this.handle));
  }
  auto get(T0)(scope auto ref T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBObjectStore_get(this.handle, _handle_query));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getKey(T0)(scope auto ref T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBObjectStore_getKey(this.handle, _handle_query));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getAll(T0)(scope auto ref T0 query, uint count) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBObjectStore_getAll(this.handle, _handle_query, count));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getAll(T0)(scope auto ref T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBObjectStore_getAll_0(this.handle, _handle_query));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getAll() {
    return IDBRequest(IDBObjectStore_getAll_1(this.handle));
  }
  auto getAllKeys(T0)(scope auto ref T0 query, uint count) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBObjectStore_getAllKeys(this.handle, _handle_query, count));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getAllKeys(T0)(scope auto ref T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBObjectStore_getAllKeys_0(this.handle, _handle_query));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto getAllKeys() {
    return IDBRequest(IDBObjectStore_getAllKeys_1(this.handle));
  }
  auto count(T0)(scope auto ref T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBObjectStore_count(this.handle, _handle_query));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto count() {
    return IDBRequest(IDBObjectStore_count_0(this.handle));
  }
  auto openCursor(T0)(scope auto ref T0 query, IDBCursorDirection direction /* = "next" */) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBObjectStore_openCursor(this.handle, _handle_query, direction));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto openCursor(T0)(scope auto ref T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBObjectStore_openCursor_0(this.handle, _handle_query));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto openCursor() {
    return IDBRequest(IDBObjectStore_openCursor_1(this.handle));
  }
  auto openKeyCursor(T0)(scope auto ref T0 query, IDBCursorDirection direction /* = "next" */) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBObjectStore_openKeyCursor(this.handle, _handle_query, direction));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto openKeyCursor(T0)(scope auto ref T0 query) {
    Handle _handle_query = getOrCreateHandle(query);
    auto result = IDBRequest(IDBObjectStore_openKeyCursor_0(this.handle, _handle_query));
    dropHandle!(T0)(_handle_query);
    return result;
  }
  auto openKeyCursor() {
    return IDBRequest(IDBObjectStore_openKeyCursor_1(this.handle));
  }
  auto index(string name) {
    return IDBIndex(IDBObjectStore_index(this.handle, name));
  }
  auto createIndex(string name, scope ref SumType!(string, Sequence!(string)) keyPath, scope ref IDBIndexParameters options) {
    return IDBIndex(IDBObjectStore_createIndex(this.handle, name, keyPath, options.handle));
  }
  auto createIndex(string name, scope ref SumType!(string, Sequence!(string)) keyPath) {
    return IDBIndex(IDBObjectStore_createIndex_0(this.handle, name, keyPath));
  }
  void deleteIndex(string name) {
    IDBObjectStore_deleteIndex(this.handle, name);
  }
}
struct IDBObjectStoreParameters {
  nothrow:
  JsHandle handle;
  alias handle this;
  this(Handle h) {
    this.handle = JsHandle(h);
  }
  static auto create() {
    return IDBObjectStoreParameters(spasm_add__object());
  }
  void keyPath(scope ref Optional!(SumType!(string, Sequence!(string))) keyPath) {
    IDBObjectStoreParameters_keyPath_Set(this.handle, !keyPath.empty, keyPath.front);
  }
  auto keyPath() {
    return IDBObjectStoreParameters_keyPath_Get(this.handle);
  }
  void autoIncrement(bool autoIncrement) {
    IDBObjectStoreParameters_autoIncrement_Set(this.handle, autoIncrement);
  }
  auto autoIncrement() {
    return IDBObjectStoreParameters_autoIncrement_Get(this.handle);
  }
}
struct IDBOpenDBRequest {
  nothrow:
  spasm.bindings.indexeddb.IDBRequest _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .IDBRequest(h);
  }
  void onblocked(EventHandler onblocked) {
    IDBOpenDBRequest_onblocked_Set(this._parent, onblocked);
  }
  auto onblocked() {
    return IDBOpenDBRequest_onblocked_Get(this._parent);
  }
  void onupgradeneeded(EventHandler onupgradeneeded) {
    IDBOpenDBRequest_onupgradeneeded_Set(this._parent, onupgradeneeded);
  }
  auto onupgradeneeded() {
    return IDBOpenDBRequest_onupgradeneeded_Get(this._parent);
  }
}
struct IDBRequest {
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
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
  void onsuccess(EventHandler onsuccess) {
    IDBRequest_onsuccess_Set(this._parent, onsuccess);
  }
  auto onsuccess() {
    return IDBRequest_onsuccess_Get(this._parent);
  }
  void onerror(EventHandler onerror) {
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
  nothrow:
  spasm.bindings.dom.EventTarget _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventTarget(h);
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
  void abort() {
    IDBTransaction_abort(this._parent);
  }
  void onabort(EventHandler onabort) {
    IDBTransaction_onabort_Set(this._parent, onabort);
  }
  auto onabort() {
    return IDBTransaction_onabort_Get(this._parent);
  }
  void oncomplete(EventHandler oncomplete) {
    IDBTransaction_oncomplete_Set(this._parent, oncomplete);
  }
  auto oncomplete() {
    return IDBTransaction_oncomplete_Get(this._parent);
  }
  void onerror(EventHandler onerror) {
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
  nothrow:
  spasm.bindings.dom.Event _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .Event(h);
  }
  auto oldVersion() {
    return IDBVersionChangeEvent_oldVersion_Get(this._parent);
  }
  auto newVersion() {
    return IDBVersionChangeEvent_newVersion_Get(this._parent);
  }
}
struct IDBVersionChangeEventInit {
  nothrow:
  spasm.bindings.dom.EventInit _parent;
  alias _parent this;
  this(Handle h) {
    _parent = .EventInit(h);
  }
  static auto create() {
    return IDBVersionChangeEventInit(spasm_add__object());
  }
  void oldVersion(ulong oldVersion) {
    IDBVersionChangeEventInit_oldVersion_Set(this._parent, oldVersion);
  }
  auto oldVersion() {
    return IDBVersionChangeEventInit_oldVersion_Get(this._parent);
  }
  void newVersion(scope ref Optional!(ulong) newVersion) {
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
extern (C) void IDBCursor_continue_0(Handle);
extern (C) void IDBCursor_continuePrimaryKey(Handle, Handle, Handle);
extern (C) Handle IDBCursor_update(Handle, Handle);
extern (C) Handle IDBCursor_delete(Handle);
extern (C) Handle IDBCursorWithValue_value_Get(Handle);
extern (C) string IDBDatabase_name_Get(Handle);
extern (C) ulong IDBDatabase_version_Get(Handle);
extern (C) Handle IDBDatabase_objectStoreNames_Get(Handle);
extern (C) Handle IDBDatabase_transaction(Handle, scope ref SumType!(string, Sequence!(string)), IDBTransactionMode);
extern (C) Handle IDBDatabase_transaction_0(Handle, scope ref SumType!(string, Sequence!(string)));
extern (C) void IDBDatabase_close(Handle);
extern (C) Handle IDBDatabase_createObjectStore(Handle, string, Handle);
extern (C) Handle IDBDatabase_createObjectStore_0(Handle, string);
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
extern (C) Handle IDBFactory_open_0(Handle, string);
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
extern (C) Handle IDBIndex_getAll_0(Handle, Handle);
extern (C) Handle IDBIndex_getAll_1(Handle);
extern (C) Handle IDBIndex_getAllKeys(Handle, Handle, uint);
extern (C) Handle IDBIndex_getAllKeys_0(Handle, Handle);
extern (C) Handle IDBIndex_getAllKeys_1(Handle);
extern (C) Handle IDBIndex_count(Handle, Handle);
extern (C) Handle IDBIndex_count_0(Handle);
extern (C) Handle IDBIndex_openCursor(Handle, Handle, IDBCursorDirection);
extern (C) Handle IDBIndex_openCursor_0(Handle, Handle);
extern (C) Handle IDBIndex_openCursor_1(Handle);
extern (C) Handle IDBIndex_openKeyCursor(Handle, Handle, IDBCursorDirection);
extern (C) Handle IDBIndex_openKeyCursor_0(Handle, Handle);
extern (C) Handle IDBIndex_openKeyCursor_1(Handle);
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
extern (C) Handle IDBKeyRange_lowerBound_0(Handle, Handle);
extern (C) Handle IDBKeyRange_upperBound(Handle, Handle, bool);
extern (C) Handle IDBKeyRange_upperBound_0(Handle, Handle);
extern (C) Handle IDBKeyRange_bound(Handle, Handle, Handle, bool, bool);
extern (C) Handle IDBKeyRange_bound_0(Handle, Handle, Handle, bool);
extern (C) Handle IDBKeyRange_bound_1(Handle, Handle, Handle);
extern (C) bool IDBKeyRange__includes(Handle, Handle);
extern (C) void IDBObjectStore_name_Set(Handle, string);
extern (C) string IDBObjectStore_name_Get(Handle);
extern (C) Handle IDBObjectStore_keyPath_Get(Handle);
extern (C) Handle IDBObjectStore_indexNames_Get(Handle);
extern (C) Handle IDBObjectStore_transaction_Get(Handle);
extern (C) bool IDBObjectStore_autoIncrement_Get(Handle);
extern (C) Handle IDBObjectStore_put(Handle, Handle, Handle);
extern (C) Handle IDBObjectStore_put_0(Handle, Handle);
extern (C) Handle IDBObjectStore_add(Handle, Handle, Handle);
extern (C) Handle IDBObjectStore_add_0(Handle, Handle);
extern (C) Handle IDBObjectStore_delete(Handle, Handle);
extern (C) Handle IDBObjectStore_clear(Handle);
extern (C) Handle IDBObjectStore_get(Handle, Handle);
extern (C) Handle IDBObjectStore_getKey(Handle, Handle);
extern (C) Handle IDBObjectStore_getAll(Handle, Handle, uint);
extern (C) Handle IDBObjectStore_getAll_0(Handle, Handle);
extern (C) Handle IDBObjectStore_getAll_1(Handle);
extern (C) Handle IDBObjectStore_getAllKeys(Handle, Handle, uint);
extern (C) Handle IDBObjectStore_getAllKeys_0(Handle, Handle);
extern (C) Handle IDBObjectStore_getAllKeys_1(Handle);
extern (C) Handle IDBObjectStore_count(Handle, Handle);
extern (C) Handle IDBObjectStore_count_0(Handle);
extern (C) Handle IDBObjectStore_openCursor(Handle, Handle, IDBCursorDirection);
extern (C) Handle IDBObjectStore_openCursor_0(Handle, Handle);
extern (C) Handle IDBObjectStore_openCursor_1(Handle);
extern (C) Handle IDBObjectStore_openKeyCursor(Handle, Handle, IDBCursorDirection);
extern (C) Handle IDBObjectStore_openKeyCursor_0(Handle, Handle);
extern (C) Handle IDBObjectStore_openKeyCursor_1(Handle);
extern (C) Handle IDBObjectStore_index(Handle, string);
extern (C) Handle IDBObjectStore_createIndex(Handle, string, scope ref SumType!(string, Sequence!(string)), Handle);
extern (C) Handle IDBObjectStore_createIndex_0(Handle, string, scope ref SumType!(string, Sequence!(string)));
extern (C) void IDBObjectStore_deleteIndex(Handle, string);
extern (C) void IDBObjectStoreParameters_keyPath_Set(Handle, bool, scope ref SumType!(string, Sequence!(string)));
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