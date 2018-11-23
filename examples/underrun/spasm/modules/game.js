import dom from './dom.js';
import spasm from './spasm.js';

export default {
    jsExports: {
        atan2(a,b) {
            return Math.atan2(a,b);
        },
        cos(a) {
            return Math.cos(a);
        },
        sin(a) {
            return Math.sin(a);
        },
        sqrt(a) {
            return Math.sqrt(a);
        },
        random() {
            return Math.random();
        },
        pow(base, exp) {
            return Math.pow(base, exp);
        },
        ldexpf(base, exp) {
            return Math.pow(base, exp);
        },
        setTimeout(ctx, func, ms) {
            return setTimeout(()=>{
                spasm.instance.exports.jsCallback0(ctx, func);
            },ms);
        },
        clearTimeout(id) {
            clearTimeout(id);
        },
        load_image(len, offset, ctx, func) {
	          let img = new Image();
	          img.src = 'images/'+spasm.decodeStr(len,offset)+'.png';
	          img.onload = function(){
                let ptr = dom.addPtr(this);
                spasm.instance.exports.jsCallback(ctx,func,ptr);
            };
        },
        load_level(id, bufLen, bufOffset, ctx, func) {
	          let img = new Image();
            let level = new Uint8Array(spasm.base.buffer, bufOffset, 64*64);
	          img.src = 'images/l'+id+'.png';
	          img.onload = function(){
                const level_width = 64, level_height = 64;
                var temp = document.createElement('canvas');
                var empty=0, floor=1, wall=2, player=3, cpu=4, sentry=5;
                temp.width = temp.height = level_width; // assume square levels
                temp = temp.getContext('2d')
                temp.drawImage(this, 0, 0);
                temp =temp.getImageData(0, 0, level_width, level_height).data;

                for (var y = 0, index = 0; y < level_height; y++) {
                    for (var x = 0; x < level_width; x++, index++) {
                        // reduce to 12 bit color to accurately match
                        var color_key =
                            ((temp[index*4]>>4) << 8) +
                            ((temp[index*4+1]>>4) << 4) +
                            (temp[index*4+2]>>4);

                        if (color_key === 0x888)
                            level[index] = wall;
                        else if (color_key === 0x00f)
                            level[index] = cpu;
                        else if (color_key === 0xf00)
                            level[index] = sentry;
                        else if (color_key === 0x0f0)
                            level[index] = player;
                        else if (color_key !== 0)
                            level[index] = floor;
                        else
                            level[index] = 0;
                    }
                }
                spasm.instance.exports.jsCallback(ctx,func,bufOffset);
            };
        },
        scheduleFrame(ctx, func) {
            requestAnimationFrame(()=>{
                let time = parseInt(performance.now(),10);
                spasm.instance.exports.jsCallback(ctx, func, time);
            })
        }
    }
}
