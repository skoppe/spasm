import spasm from './spasm.js';

const nodes = { 1: document, 2: window };
let lastPtr = 3;

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

let events = ['click','change','input','keydown','keyup','dblclick','blur','mousemove','mouseup','mousedown','keypress'];

let currentEvent= null;

function eventHandler(event) {
    const id = event.currentTarget.wasmId;
    const handlers = event.currentTarget.wasmEvents[event.type];
    const cbs = handlers.cbs;
    currentEvent = event;
    cbs.forEach(cb=>spasm.instance.exports.domEvent(id, cb.ctx, cb.fun, handlers.eventType));
    currentEvent = null;
}

const exp = {
    nodes,
    addPtr,
    jsExports: {
        appendChild: function(parent, child) {
            nodes[parent].appendChild(nodes[child]);
        },
        insertBefore: function(parent, child, sibling) {
            nodes[parent].insertBefore(nodes[child], nodes[sibling]);
        },
        addCss: function(cssLen, cssOffset) {
            var style = document.createElement('style');
            style.type = 'text/css';
            style.innerHTML = spasm.decodeStr(cssLen, cssOffset);
            document.getElementsByTagName('head')[0].appendChild(style);
        },
        addClass: function(node, classLen, classOffset) {
            nodes[node].classList.add(spasm.decodeStr(classLen, classOffset));
        },
        removeClass: function(node, classLen, classOffset) {
            nodes[node].classList.remove(spasm.decodeStr(classLen, classOffset));
        },
        changeClass: function(node, classLen, classOffset, on) {
            if (on)
                nodes[node].classList.add(spasm.decodeStr(classLen, classOffset));
            else
                nodes[node].classList.remove(spasm.decodeStr(classLen, classOffset));
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
            nodes[nodePtr].innerText = spasm.decodeStr(textLen,textOffset);
        },
        setAttribute: function(node, attrLen, attrOffset, valueLen, valueOffset) {
            const attr = spasm.decodeStr(attrLen,attrOffset);
            const value = spasm.decodeStr(valueLen,valueOffset);
            nodes[node].setAttribute(attr, value);
        },
        addEventListener: function(nodePtr, listenerType, ctx, fun, eventType) {
            var listenerTypeStr = events[listenerType];
            var node = nodes[nodePtr];
            if (node.wasmEvents === undefined)
                var nodeEvents = node.wasmEvents = {};
            else
                var nodeEvents = nodes[nodePtr].wasmEvents;
            if (nodeEvents[listenerTypeStr] && nodeEvents[listenerTypeStr].cbs.length > 0) {
                nodeEvents[listenerTypeStr].cbs.push({ctx:ctx,fun:fun});
            } else {
                nodeEvents[listenerTypeStr] = {cbs:[{ctx: ctx, fun: fun}], eventType: eventType};
                node.addEventListener(listenerTypeStr, eventHandler);
            }
        },
        removeEventListener: function(nodePtr, listenerType, ctx, fun, eventType) {
            var listenerTypeStr = events[listenerType];
            var node = nodes[nodePtr];
            if (node.wasmEvents === undefined)
                return;
            var nodeEvents = nodes[nodePtr].wasmEvents;
            if (nodeEvents[listenerTypeStr] && nodeEvents[listenerTypeStr].cbs.length > 0) {
                nodeEvents[listenerTypeStr].cbs = nodeEvents[listenerTypeStr].cbs.filter(cb=>!(cb.ctx==ctx && cb.fun==fun));
            }
        },
        getEventBool: function(propLen, propOffset) {
            return !!currentEvent[spasm.decodeStr(propLen,propOffset)];
        },
        getEventInt: function(propLen,propOffset) {
            return 0+currentEvent[spasm.decodeStr(propLen,propOffset)];
        },
        getEventString: function(resultRaw, propLen,propOffset) {
            return spasm.encodeStrIn(resultRaw, currentEvent[spasm.decodeStr(propLen,propOffset)]);
        },
        setPropertyBool: function(nodePtr, propLen, propOffset, value) {
            const node = nodes[nodePtr];
            const prop = spasm.decodeStr(propLen, propOffset);
            if (node && node[prop] !== undefined)
                node[prop] = value;
        },
        setPropertyInt: function(nodePtr, propLen, propOffset, value) {
            exp.jsExports.setPropertyBool(nodePtr, propLen, propOffset, value);
        },
        setProperty: function(nodePtr, propLen, propOffset, valueLen, valueOffset) {
            const node = nodes[nodePtr];
            const prop = spasm.decodeStr(propLen, propOffset);
            if (node && node[prop] !== undefined) {
                node[prop] = spasm.decodeStr(valueLen, valueOffset);
            }
        },
        getPropertyInt: function(nodePtr, propLen, propOffset) {
            const node = nodes[nodePtr];
            const prop = spasm.decodeStr(propLen, propOffset);
            if (!node || node[prop] === undefined)
                return false;
            return +node[prop];
        },
        getPropertyBool: function(nodePtr, propLen, propOffset) {
            const node = nodes[nodePtr];
            const prop = spasm.decodeStr(propLen, propOffset);
            if (!node || node[prop] === undefined)
                return false;
            return !!node[prop];
        },
        getProperty: function(resultRaw, nodePtr, propLen, propOffset) {
            const node = nodes[nodePtr];
            const prop = spasm.decodeStr(propLen, propOffset);
            if (!node || node[prop] === undefined)
                return spasm.encodeStrIn(resultRaw,"");
            return spasm.encodeStrIn(resultRaw,node[prop]);
        },
    }
}

export default exp;
