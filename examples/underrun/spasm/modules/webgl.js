import {spasm, decoders} from './spasm.js';

let contexts = {};
let objects = spasm.objects;
let addObject = spasm.addObject;
let currentContext;

export let jsExports = {
    glSetContext(ctxPtr) {
        currentContext = contexts[ctxPtr];
    },
    glAttachShader(program, shader) {
        currentContext.attachShader(objects[program], objects[shader]);
    },
    glBindBuffer ( target, buffer ) {
        currentContext.bindBuffer(target, objects[buffer]);
    },
    glBindTexture ( target, texture ) {
        currentContext.bindTexture(target, objects[texture]);
    },
    glBlendFunc ( sfactor, dfactor) {
        currentContext.blendFunc(sfactor, dfactor);
    },
    glBufferData ( target, bufferLen, offset, usage) {
        let buffer = new Float32Array(spasm.memory.buffer, offset, bufferLen);
        currentContext.bufferData(target, buffer, usage);
    },
    glClear ( mask ) {
        currentContext.clear(mask);
    },
    glClearColor ( red, green, blue, alpha ) {
        currentContext.clearColor(red, green, blue, alpha);
    },
    glCompileShader ( shader ) {
        currentContext.compileShader(objects[shader]);
    },
    glCreateProgram (  ) {
        return addObject(currentContext.createProgram());
    },
    glCreateShader ( type ) {
        return addObject(currentContext.createShader(type));
    },
    glDrawArrays ( mode, first, count ) {
        currentContext.drawArrays(mode,first,count);
    },
    glEnable ( cap ) {
        currentContext.enable(cap);
    },
    glEnableVertexAttribArray ( index ) {
        currentContext.enableVertexAttribArray(index);
    },
    glCreateBuffer() {
        return addObject(currentContext.createBuffer());
    },
    glCreateTexture() {
        return addObject(currentContext.createTexture());
    },
    glGetAttribLocation ( program, len, offset) {
        return currentContext.getAttribLocation(objects[program],decoders.string(len,offset));
    },
    glGetShaderInfoLog ( shader ) {
    },
    glGetUniformLocation ( program, len, offset) {
        return addObject(currentContext.getUniformLocation(objects[program],decoders.string(len,offset)));
    },
    glLinkProgram ( program ) {
        currentContext.linkProgram(objects[program]);
    },
    glShaderSource ( shader, len, offset ) {
        currentContext.shaderSource(objects[shader], decoders.string(len,offset));
    },
    glTexImage2D ( target, level, internalformat, format, type, image) {
        currentContext.texImage2D(target, level, internalformat, format, type, objects[image]);
    },
    glTexParameteri ( target, pname, param ) {
        currentContext.texParameteri(target,pname,param);
    },
    glUniform1fv ( location, len, offset) {
        let buffer = new Float32Array(spasm.memory.buffer, offset, len);
        currentContext.uniform1fv(objects[location],buffer);
    },
    glUniform3f ( location, v0, v1, v2 ) {
        currentContext.uniform3f(objects[location],v0,v1,v2);
    },
    glUseProgram ( program ) {
        currentContext.useProgram(objects[program]);
    },
    glVertexAttribPointer ( index, size, type, normalized, stride, offset ) {
        currentContext.vertexAttribPointer(index, size, type, normalized, stride, offset);
    },
    glViewport ( x, y, width, height ) {
        currentContext.viewport(x,y,width,height);
    }
}
