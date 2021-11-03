/* eslint-disable no-undef */
const fs = require("fs");
const loader = require("@assemblyscript/loader");
const imports = {
  "assembly/index": {
    add: (a, b) => add(a, b),
    getMaze: (width, height) => getMaze(width, height),
  }
};

const wasmModule = loader.instantiateSync(
  fs.readFileSync(__dirname + "/build/optimized.wasm"), 
  imports
);

module.exports = wasmModule.exports;
