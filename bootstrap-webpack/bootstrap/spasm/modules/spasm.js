function abort(what,file,line) {
    throw `ABORT: $what @ $file:$line`;
}

const utf8Decoder = new TextDecoder('utf-8');
const utf8Encoder = new TextEncoder();
const memory = new WebAssembly.Memory({initial:16*16, maximum:16*16});

const spasm = {
    base: memory,
    heap32: new Uint32Array(memory.buffer),
    instance: null,
    decodeStr: (len, offset) => {
        return utf8Decoder.decode(new DataView(spasm.base.buffer,offset,len));
    },
    encodeStrIn: (u8ptr, str) => {
        const encodedString = utf8Encoder.encode(str);
        const buffer = spasm.instance.exports.allocString(encodedString.length);
        const asBytes = new Uint8Array(spasm.base.buffer, buffer, encodedString.length);
        spasm.heap32[u8ptr / 4] = encodedString.length;
        spasm.heap32[(u8ptr / 4)+1] = buffer;
        asBytes.set(encodedString);
        return u8ptr;
    },
    init: (modules) => {
        let exports = {env: Object.assign.apply(null,Object.keys(modules).map(key=>modules[key].jsExports))};
        WebAssembly.instantiateStreaming(fetch('@@targetProjectName@@'), exports)
            .then(obj => {
                spasm.instance = obj.instance;
                obj.instance.exports._start();
            });
    }
}

spasm.jsExports = {
    onOutOfMemoryError: () => abort("Out of memory exception"),
    _d_assert: (file,line) => abort("assert",file,line),
    doLog: arg => console.log(arg),
    memory: spasm.base,
    __assert: function(){},
    _Unwind_Resume: function() {
        console.log(arguments);
    },
    _d_dynamic_cast: function() {
        console.log(arguments)
    }
};

export default spasm;
