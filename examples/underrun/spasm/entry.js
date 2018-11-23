var modules = {};
function importAll (r) {
    r.keys().forEach(key => modules[key] = r(key).default);
}
importAll(require.context('./modules/', true, /\.js$/));

modules["./spasm.js"].init(modules);
