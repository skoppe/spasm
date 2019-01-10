var modules = {};
function importAll (r) {
    r.keys().forEach(key => modules[key] = r(key).default);
}
importAll(require.context('./modules/', true, /\.js$/));
importAll(require.context('./bindings/', true, /\.js$/));

modules["./spasm.js"].init(modules);
