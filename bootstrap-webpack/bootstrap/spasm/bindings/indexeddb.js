import spasm from './spasm.js';
export default {
  jsExports: {
    IDBCursor_source_Get: function(rawResult, ctx) {
      spasm.encode.union2_IDBObjectStore_IDBIndex(rawResult, spasm.objects[ctx].source);
    },
    IDBCursor_direction_Get: function(ctx) {
      return spasm.encode.IDBCursorDirection(spasm.objects[ctx].direction);
    },
    IDBCursor_key_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].key);
    },
    IDBCursor_primaryKey_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].primaryKey);
    },
    IDBCursor_advance: function(ctx, count) {
      spasm.objects[ctx].advance(count);
    },
    IDBCursor_continue: function(ctx, key) {
      spasm.objects[ctx].continue(spasm.objects[key]);
    },
    IDBCursor_continuePrimaryKey: function(ctx, key, primaryKey) {
      spasm.objects[ctx].continuePrimaryKey(spasm.objects[key], spasm.objects[primaryKey]);
    },
    IDBCursor_update: function(ctx, value) {
      return spasm.addObject(spasm.objects[ctx].update(spasm.objects[value]));
    },
    IDBCursor_delete: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].delete());
    },
    IDBCursorWithValue_value_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].value);
    },
    IDBDatabase_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    IDBDatabase_version_Get: function(ctx) {
      return spasm.objects[ctx].version;
    },
    IDBDatabase_objectStoreNames_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].objectStoreNames);
    },
    IDBDatabase_transaction: function(ctx, storeNames, mode) {
      return spasm.addObject(spasm.objects[ctx].transaction(spasm.decode_union2_string_sequence(storeNames), spasm.decode_IDBTransactionMode(mode)));
    },
    IDBDatabase_close: function(ctx) {
      spasm.objects[ctx].close();
    },
    IDBDatabase_createObjectStore: function(ctx, nameLen, namePtr, options) {
      return spasm.addObject(spasm.objects[ctx].createObjectStore(spasm.decode_string(nameLen, namePtr), spasm.objects[options]));
    },
    IDBDatabase_deleteObjectStore: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].deleteObjectStore(spasm.decode_string(nameLen, namePtr));
    },
    IDBDatabase_onabort_Set: function(ctx, onabort) {
      spasm.objects[ctx].onabort = onabort;
    },
    IDBDatabase_onabort_Get: function(ctx) {
      return spasm.objects[ctx].onabort;
    },
    IDBDatabase_onclose_Set: function(ctx, onclose) {
      spasm.objects[ctx].onclose = onclose;
    },
    IDBDatabase_onclose_Get: function(ctx) {
      return spasm.objects[ctx].onclose;
    },
    IDBDatabase_onerror_Set: function(ctx, onerror) {
      spasm.objects[ctx].onerror = onerror;
    },
    IDBDatabase_onerror_Get: function(ctx) {
      return spasm.objects[ctx].onerror;
    },
    IDBDatabase_onversionchange_Set: function(ctx, onversionchange) {
      spasm.objects[ctx].onversionchange = onversionchange;
    },
    IDBDatabase_onversionchange_Get: function(ctx) {
      return spasm.objects[ctx].onversionchange;
    },
    IDBDatabaseInfo_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    IDBDatabaseInfo_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    IDBDatabaseInfo_version_Set: function(ctx, version) {
      spasm.objects[ctx].version = version;
    },
    IDBDatabaseInfo_version_Get: function(ctx) {
      return spasm.objects[ctx].version;
    },
    IDBFactory_open: function(ctx, nameLen, namePtr, version) {
      return spasm.addObject(spasm.objects[ctx].open(spasm.decode_string(nameLen, namePtr), version));
    },
    IDBFactory_deleteDatabase: function(ctx, nameLen, namePtr) {
      return spasm.addObject(spasm.objects[ctx].deleteDatabase(spasm.decode_string(nameLen, namePtr)));
    },
    IDBFactory_databases: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].databases());
    },
    IDBFactory_cmp: function(ctx, first, second) {
      return spasm.objects[ctx].cmp(spasm.objects[first], spasm.objects[second]);
    },
    IDBIndex_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    IDBIndex_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    IDBIndex_objectStore_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].objectStore);
    },
    IDBIndex_keyPath_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].keyPath);
    },
    IDBIndex_multiEntry_Get: function(ctx) {
      return spasm.objects[ctx].multiEntry;
    },
    IDBIndex_unique_Get: function(ctx) {
      return spasm.objects[ctx].unique;
    },
    IDBIndex_get: function(ctx, query) {
      return spasm.addObject(spasm.objects[ctx].get(spasm.objects[query]));
    },
    IDBIndex_getKey: function(ctx, query) {
      return spasm.addObject(spasm.objects[ctx].getKey(spasm.objects[query]));
    },
    IDBIndex_getAll: function(ctx, query, count) {
      return spasm.addObject(spasm.objects[ctx].getAll(spasm.objects[query], count));
    },
    IDBIndex_getAllKeys: function(ctx, query, count) {
      return spasm.addObject(spasm.objects[ctx].getAllKeys(spasm.objects[query], count));
    },
    IDBIndex_count: function(ctx, query) {
      return spasm.addObject(spasm.objects[ctx].count(spasm.objects[query]));
    },
    IDBIndex_openCursor: function(ctx, query, direction) {
      return spasm.addObject(spasm.objects[ctx].openCursor(spasm.objects[query], spasm.decode_IDBCursorDirection(direction)));
    },
    IDBIndex_openKeyCursor: function(ctx, query, direction) {
      return spasm.addObject(spasm.objects[ctx].openKeyCursor(spasm.objects[query], spasm.decode_IDBCursorDirection(direction)));
    },
    IDBIndexParameters_unique_Set: function(ctx, unique) {
      spasm.objects[ctx].unique = unique;
    },
    IDBIndexParameters_unique_Get: function(ctx) {
      return spasm.objects[ctx].unique;
    },
    IDBIndexParameters_multiEntry_Set: function(ctx, multiEntry) {
      spasm.objects[ctx].multiEntry = multiEntry;
    },
    IDBIndexParameters_multiEntry_Get: function(ctx) {
      return spasm.objects[ctx].multiEntry;
    },
    IDBKeyRange_lower_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].lower);
    },
    IDBKeyRange_upper_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].upper);
    },
    IDBKeyRange_lowerOpen_Get: function(ctx) {
      return spasm.objects[ctx].lowerOpen;
    },
    IDBKeyRange_upperOpen_Get: function(ctx) {
      return spasm.objects[ctx].upperOpen;
    },
    IDBKeyRange_only: function(ctx, value) {
      return spasm.addObject(spasm.objects[ctx].only(spasm.objects[value]));
    },
    IDBKeyRange_lowerBound: function(ctx, lower, open) {
      return spasm.addObject(spasm.objects[ctx].lowerBound(spasm.objects[lower], open));
    },
    IDBKeyRange_upperBound: function(ctx, upper, open) {
      return spasm.addObject(spasm.objects[ctx].upperBound(spasm.objects[upper], open));
    },
    IDBKeyRange_bound: function(ctx, lower, upper, lowerOpen, upperOpen) {
      return spasm.addObject(spasm.objects[ctx].bound(spasm.objects[lower], spasm.objects[upper], lowerOpen, upperOpen));
    },
    IDBKeyRange__includes: function(ctx, key) {
      return spasm.objects[ctx]._includes(spasm.objects[key]);
    },
    IDBObjectStore_name_Set: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].name = spasm.decode_string(nameLen, namePtr);
    },
    IDBObjectStore_name_Get: function(rawResult, ctx) {
      spasm.encode.string(rawResult, spasm.objects[ctx].name);
    },
    IDBObjectStore_keyPath_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].keyPath);
    },
    IDBObjectStore_indexNames_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].indexNames);
    },
    IDBObjectStore_transaction_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].transaction);
    },
    IDBObjectStore_autoIncrement_Get: function(ctx) {
      return spasm.objects[ctx].autoIncrement;
    },
    IDBObjectStore_put: function(ctx, value, key) {
      return spasm.addObject(spasm.objects[ctx].put(spasm.objects[value], spasm.objects[key]));
    },
    IDBObjectStore_add: function(ctx, value, key) {
      return spasm.addObject(spasm.objects[ctx].add(spasm.objects[value], spasm.objects[key]));
    },
    IDBObjectStore_delete: function(ctx, query) {
      return spasm.addObject(spasm.objects[ctx].delete(spasm.objects[query]));
    },
    IDBObjectStore_clear: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].clear());
    },
    IDBObjectStore_get: function(ctx, query) {
      return spasm.addObject(spasm.objects[ctx].get(spasm.objects[query]));
    },
    IDBObjectStore_getKey: function(ctx, query) {
      return spasm.addObject(spasm.objects[ctx].getKey(spasm.objects[query]));
    },
    IDBObjectStore_getAll: function(ctx, query, count) {
      return spasm.addObject(spasm.objects[ctx].getAll(spasm.objects[query], count));
    },
    IDBObjectStore_getAllKeys: function(ctx, query, count) {
      return spasm.addObject(spasm.objects[ctx].getAllKeys(spasm.objects[query], count));
    },
    IDBObjectStore_count: function(ctx, query) {
      return spasm.addObject(spasm.objects[ctx].count(spasm.objects[query]));
    },
    IDBObjectStore_openCursor: function(ctx, query, direction) {
      return spasm.addObject(spasm.objects[ctx].openCursor(spasm.objects[query], spasm.decode_IDBCursorDirection(direction)));
    },
    IDBObjectStore_openKeyCursor: function(ctx, query, direction) {
      return spasm.addObject(spasm.objects[ctx].openKeyCursor(spasm.objects[query], spasm.decode_IDBCursorDirection(direction)));
    },
    IDBObjectStore_index: function(ctx, nameLen, namePtr) {
      return spasm.addObject(spasm.objects[ctx].index(spasm.decode_string(nameLen, namePtr)));
    },
    IDBObjectStore_createIndex: function(ctx, nameLen, namePtr, keyPath, options) {
      return spasm.addObject(spasm.objects[ctx].createIndex(spasm.decode_string(nameLen, namePtr), spasm.decode_union2_string_sequence(keyPath), spasm.objects[options]));
    },
    IDBObjectStore_deleteIndex: function(ctx, nameLen, namePtr) {
      spasm.objects[ctx].deleteIndex(spasm.decode_string(nameLen, namePtr));
    },
    IDBObjectStoreParameters_keyPath_Set: function(ctx, keyPathDefined, keyPath) {
      spasm.objects[ctx].keyPath = keyPathDefined ? spasm.decode_union2_string_sequence(keyPath) : undefined;
    },
    IDBObjectStoreParameters_keyPath_Get: function(rawResult, ctx) {
      spasm.encode.optional_union2_string_sequence(rawResult, spasm.objects[ctx].keyPath);
    },
    IDBObjectStoreParameters_autoIncrement_Set: function(ctx, autoIncrement) {
      spasm.objects[ctx].autoIncrement = autoIncrement;
    },
    IDBObjectStoreParameters_autoIncrement_Get: function(ctx) {
      return spasm.objects[ctx].autoIncrement;
    },
    IDBOpenDBRequest_onblocked_Set: function(ctx, onblocked) {
      spasm.objects[ctx].onblocked = onblocked;
    },
    IDBOpenDBRequest_onblocked_Get: function(ctx) {
      return spasm.objects[ctx].onblocked;
    },
    IDBOpenDBRequest_onupgradeneeded_Set: function(ctx, onupgradeneeded) {
      spasm.objects[ctx].onupgradeneeded = onupgradeneeded;
    },
    IDBOpenDBRequest_onupgradeneeded_Get: function(ctx) {
      return spasm.objects[ctx].onupgradeneeded;
    },
    IDBRequest_result_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].result);
    },
    IDBRequest_error_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].error);
    },
    IDBRequest_source_Get: function(rawResult, ctx) {
      spasm.encode.optional_union3_IDBObjectStore_IDBIndex_IDBCursor(rawResult, spasm.objects[ctx].source);
    },
    IDBRequest_transaction_Get: function(rawResult, ctx) {
      spasm.encode.optional_Handle(rawResult, spasm.objects[ctx].transaction);
    },
    IDBRequest_readyState_Get: function(ctx) {
      return spasm.encode.IDBRequestReadyState(spasm.objects[ctx].readyState);
    },
    IDBRequest_onsuccess_Set: function(ctx, onsuccess) {
      spasm.objects[ctx].onsuccess = onsuccess;
    },
    IDBRequest_onsuccess_Get: function(ctx) {
      return spasm.objects[ctx].onsuccess;
    },
    IDBRequest_onerror_Set: function(ctx, onerror) {
      spasm.objects[ctx].onerror = onerror;
    },
    IDBRequest_onerror_Get: function(ctx) {
      return spasm.objects[ctx].onerror;
    },
    IDBTransaction_objectStoreNames_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].objectStoreNames);
    },
    IDBTransaction_mode_Get: function(ctx) {
      return spasm.encode.IDBTransactionMode(spasm.objects[ctx].mode);
    },
    IDBTransaction_db_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].db);
    },
    IDBTransaction_error_Get: function(ctx) {
      return spasm.addObject(spasm.objects[ctx].error);
    },
    IDBTransaction_objectStore: function(ctx, nameLen, namePtr) {
      return spasm.addObject(spasm.objects[ctx].objectStore(spasm.decode_string(nameLen, namePtr)));
    },
    IDBTransaction_abort: function(ctx) {
      spasm.objects[ctx].abort();
    },
    IDBTransaction_onabort_Set: function(ctx, onabort) {
      spasm.objects[ctx].onabort = onabort;
    },
    IDBTransaction_onabort_Get: function(ctx) {
      return spasm.objects[ctx].onabort;
    },
    IDBTransaction_oncomplete_Set: function(ctx, oncomplete) {
      spasm.objects[ctx].oncomplete = oncomplete;
    },
    IDBTransaction_oncomplete_Get: function(ctx) {
      return spasm.objects[ctx].oncomplete;
    },
    IDBTransaction_onerror_Set: function(ctx, onerror) {
      spasm.objects[ctx].onerror = onerror;
    },
    IDBTransaction_onerror_Get: function(ctx) {
      return spasm.objects[ctx].onerror;
    },
    IDBVersionChangeEvent_oldVersion_Get: function(ctx) {
      return spasm.objects[ctx].oldVersion;
    },
    IDBVersionChangeEvent_newVersion_Get: function(rawResult, ctx) {
      spasm.encode.optional_ulong(rawResult, spasm.objects[ctx].newVersion);
    },
    IDBVersionChangeEventInit_oldVersion_Set: function(ctx, oldVersion) {
      spasm.objects[ctx].oldVersion = oldVersion;
    },
    IDBVersionChangeEventInit_oldVersion_Get: function(ctx) {
      return spasm.objects[ctx].oldVersion;
    },
    IDBVersionChangeEventInit_newVersion_Set: function(ctx, newVersionDefined, newVersion) {
      spasm.objects[ctx].newVersion = newVersionDefined ? newVersion : undefined;
    },
    IDBVersionChangeEventInit_newVersion_Get: function(rawResult, ctx) {
      spasm.encode.optional_ulong(rawResult, spasm.objects[ctx].newVersion);
    },
  }
}