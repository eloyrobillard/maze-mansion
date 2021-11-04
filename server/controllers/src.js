// NOTE use to load asm
const model = require('../models/model');

async function getMazeAssembly (ctx) {
	try {
		const asm = await model.getMazeAssembly(ctx);
		// console.log(asm);
		ctx.set('Content-Type', 'application/wasm');
		ctx.body = asm;
    ctx.status = 200;
	} catch (e) {
		console.log(e);
	}
}

module.exports = { getMazeAssembly };
