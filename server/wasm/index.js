const asc = require('./asc/index');

async function getAScAssembly() {
  try {
    const asm = await asc.getAssembly();
    // console.log(asm)
    return asm;
  } catch (e) {
    console.log(e);
  }
}

async function getRustAssembly() {

}

module.exports = { getAScAssembly, getRustAssembly };