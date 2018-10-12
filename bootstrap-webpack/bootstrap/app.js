function abort(what,file,line) {
    throw `ABORT: $what @ $file:$line`;
}

export const nodes = { 0: null };
let lastPtr = 0;

const addPtr = (node) => {
    if (node === null) return 0;
    if (node.wasmId !== undefined) return node.asmDomPtr;
    nodes[++lastPtr] = node;
    node.wasmId = lastPtr;
    return lastPtr;
};

let tags = ["a","abbr","address","area","article","aside","audio","b","base","bdi","bdo","blockquote","body","br","button","canvas","caption","cite","code","col","colgroup","data","datalist","dd","del","dfn","div","dl","dt","em","embed","fieldset","figcaption","figure","footer","form","h1","h2","h3","h4","h5","h6","head","header","hr","html","i","iframe","img","input","ins","kbd","keygen","label","legend","li","link","main","map","mark","meta","meter","nav","noscript","object","ol","optgroup","option","output","p","param","pre","progress","q","rb","rp","rt","rtc","ruby","s","samp","script","section","select","small","source","span","strong","style","sub","sup","table","tbody","td","template","textarea","tfoot","th","thead","time","title","tr","track","u","ul","var","video","wbr"];
function getTagFromType(type) {
    return tags[type];
}

let events = ['click','change','input','keydown','dblclick','blur'];
const utf8Decoder = new TextDecoder('utf-8');
let exports;
let memory;
let instance;
const utf8Encoder = new TextEncoder();

function decodeStr(len, offset) {
    return utf8Decoder.decode(new DataView(memory.base.buffer,offset,len));
}

function encodeStrIn(u8ptr, str) {
    const encodedString = utf8Encoder.encode(str);
    const buffer = instance.exports.allocString(encodedString.length);
    const asBytes = new Uint8Array(memory.base.buffer, buffer, encodedString.length);
    memory.heap32[u8ptr / 4] = encodedString.length;
    memory.heap32[(u8ptr / 4)+1] = buffer;
    asBytes.set(encodedString);
    return u8ptr;
}

let currentEvent= null;

function eventHandler(event) {
    const id = event.target.wasmId;
    const ctx = event.target.wasmEvents[event.type];
    currentEvent = event;
    instance.exports.domEvent(id, ctx.ctx, ctx.fun, ctx.eventType);
    currentEvent = null;
}

const jsExports = {
    env: {
        onOutOfMemoryError: () => abort("Out of memory exception"),
        _d_assert: (file,line) => abort("assert",file,line),
        doLog: arg => console.log(arg),
        memory: new WebAssembly.Memory({initial:16*16, maximum:16*16}),
        appendChild: function(parent, child) {
            nodes[parent].appendChild(nodes[child]);
        },
        insertBefore: function(parent, child, sibling) {
            nodes[parent].insertBefore(nodes[child], nodes[sibling]);
        },
        addCss: function(cssLen, cssOffset) {
            var style = document.createElement('style');
            style.type = 'text/css';
            style.innerHTML = decodeStr(cssLen, cssOffset);
            document.getElementsByTagName('head')[0].appendChild(style);
        },
        addClass: function(node, classLen, classOffset) {
            nodes[node].classList.add(decodeStr(classLen, classOffset));
        },
        removeClass: function(node, classLen, classOffset) {
            nodes[node].classList.remove(decodeStr(classLen, classOffset));
        },
        changeClass: function(node, classLen, classOffset, on) {
            if (on)
                nodes[node].classList.add(decodeStr(classLen, classOffset));
            else
                nodes[node].classList.remove(decodeStr(classLen, classOffset));
        },
        unmount: function(childPtr) {
            var child = nodes[childPtr];
            child.parentNode.removeChild(child);
        },
        removeChild: function(childPtr) {
            var child = nodes[childPtr];
            child.parentNode.removeChild(child);
            // TODO: we can reuse the child node (it is cheaper than recreating a new one...)
        },
        getRoot: function() {
            return addPtr(document.querySelector("#root"));
        },
        createElement: function(type) {
            return addPtr(document.createElement(getTagFromType(type)));
        },
        focus: function(nodePtr) {
            nodes[nodePtr].focus();
        },
        setSelectionRange: function(nodePtr, start, end) {
            nodes[nodePtr].setSelectionRange(start, end);
        },
        innerText: function(nodePtr,textLen, textOffset) {
            nodes[nodePtr].innerText = decodeStr(textLen,textOffset);
        },
        setAttribute: function(node, attrLen, attrOffset, valueLen, valueOffset) {
            const attr = decodeStr(attrLen,attrOffset);
            const value = decodeStr(valueLen,valueOffset);
            nodes[node].setAttribute(attr, value);
        },
        addEventListener: function(nodePtr, listenerType, ctx, fun, eventType) {
            var listenerTypeStr = events[listenerType];
            var node = nodes[nodePtr];
            if (node.wasmEvents === undefined)
                var nodeEvents = node.wasmEvents = {};
            else
                var nodeEvents = nodes[nodePtr].wasmEvents;
            nodeEvents[listenerTypeStr] = {ctx: ctx, fun: fun, eventType: eventType};
            node.addEventListener(listenerTypeStr, eventHandler);
        },
        getEventBool: function(propLen, propOffset) {
            return !!currentEvent[decodeStr(propLen,propOffset)];
        },
        getEventInt: function(propLen,propOffset) {
            return 0+currentEvent[decodeStr(propLen,propOffset)];
        },
        getEventString: function(resultRaw, propLen,propOffset) {
            return encodeStrIn(resultRaw, currentEvent[decodeStr(propLen,propOffset)]);
        },
        _d_dynamic_cast: function() {
            console.log(arguments)
        },
        setPropertyBool: function(nodePtr, propLen, propOffset, value) {
            const node = nodes[nodePtr];
            const prop = decodeStr(propLen, propOffset);
            if (node && node[prop] !== undefined)
                node[prop] = !!value;
        },
        setProperty: function(nodePtr, propLen, propOffset, valueLen, valueOffset) {
            const node = nodes[nodePtr];
            const prop = decodeStr(propLen, propOffset);
            if (node && node[prop] !== undefined) {
                node[prop] = decodeStr(valueLen, valueOffset);
            }
        },
        getPropertyBool: function(nodePtr, propLen, propOffset) {
            const node = nodes[nodePtr];
            const prop = decodeStr(propLen, propOffset);
            if (!node || node[prop] === undefined)
                return false;
            return !!node[prop];
        },
        getProperty: function(resultRaw, nodePtr, propLen, propOffset) {
            const node = nodes[nodePtr];
            const prop = decodeStr(propLen, propOffset);
            if (!node || node[prop] === undefined)
                return encodeStrIn(resultRaw,"");
            return encodeStrIn(resultRaw,node[prop]);
        },
        doLog: function(val) {
            console.log(val);
        },
        __assert: function(){},
        _Unwind_Resume: function() {
            console.log(arguments);
        }
    }
}

memory = {
    base: jsExports.env.memory,
    heap32: new Uint32Array(jsExports.env.memory.buffer)
};

WebAssembly.instantiateStreaming(fetch('@@targetProjectName@@'), jsExports)
    .then(obj => {
        instance = obj.instance;
        obj.instance.exports._start();
    });
