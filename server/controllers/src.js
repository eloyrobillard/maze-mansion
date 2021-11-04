// NOTE use to load assembly
const wasm = require('../wasm/index');

async function getMazeModule (ctx) {
  try {
    const module = await wasm.getMazeModule()

  } catch (e) {
    console.log(e);
  }
}

module.exports = { getMazeModule };