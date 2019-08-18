const webpack = require('webpack');
const middleware = require('webpack-dev-middleware');
const config = require('./webpack.config.js');
config.mode = 'development'
const compiler = webpack(config);
const express = require('express');
const app = express();
const fs = require('fs');
const WebSocket = require('ws');

app.use(middleware(compiler, {
}));
app.use(express.static('.',{setHeaders: function(req, path, stat){
    req.set('Content-Type', "application/wasm");
}}))

app.listen(3000, () => console.log('Example app listening on port 3000!'))

function notifyClients() {
    wss.clients.forEach(function each(client) {
        if (client.readyState === WebSocket.OPEN) {
            client.send('reload');
        }
    });
}

const wss = new WebSocket.Server({ port: 3001 });

(function() {
    function exists(filename) {
        try {
            fs.accessSync(filename);
            return true;
        } catch (e) {
            return false;
        }
    }
    let backoff = 0;
    let lastModified = 0;
    function isModified() {
        try {
            const stat = fs.statSync('fetch');
            if (lastModified == stat.mtimeMs)
                return false;
            lastModified = stat.mtimeMs;
            return true;
        } catch(e) {
            return false;
        }
    }
    function doWatch() {
        try {
            let watcher = fs.watch('fetch', (event, filename)=>{
                if (event == 'change') {
                    if (isModified()) {
                        notifyClients();
                    }
                }
                else if (event == 'rename') {
                    if (exists('fetch')) {
                        if (isModified())
                            notifyClients();
                    } else {
                        watcher.close();
                        backoff = 100;
                        setTimeout(doWatch, backoff);
                    }
                }
            });
            if (backoff != 0) {
                if (isModified())
                    notifyClients();
                backoff = 0;
            }
        } catch (e) {
            backoff = Math.min(backoff * 2, 60000);
            setTimeout(doWatch, backoff);
        }
    }
    isModified();
    doWatch();
})();
