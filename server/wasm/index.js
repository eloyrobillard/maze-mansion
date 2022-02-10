const fs = require("fs");

function getAssembly() {
  try {
    return fs.promises.readFile(__dirname + "/build/optimized.wasm");
  } catch (e) {
    console.log(e);
  }
}

module.exports = { getAssembly };
