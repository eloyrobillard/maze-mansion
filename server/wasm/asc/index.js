const fs = require("fs");

function getAssembly() {
  return fs.promises.readFile(__dirname + "/build/optimized.wasm");
}

module.exports = { getAssembly };
