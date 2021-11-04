const wasm = require('../wasm/index');

async function getMazeAssembly (ctx) {
  try {
    // console.log('hi model');
    const { algo, src } = ctx.params;
    if (src === 'asc') {
      const asm = await wasm.getAScAssembly();
      // console.log(asm);
      return asm;
    } 
    return wasm.getRustAssembly();
  } catch (e) {
    console.log(e);
  }
}

module.exports = { getMazeAssembly };
