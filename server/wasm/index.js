const asc = require('./asc/index');

function getAScAssembly() {
  try {
    const asm = asc.getAssembly();
    // console.log(asm)
    return asm;
  } catch (e) {
    console.log(e);
  }
}

async function getRustAssembly() {
  
}

module.exports = { getAScAssembly, getRustAssembly };