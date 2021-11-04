/* eslint-disable no-undef */
const fs = require("fs");
const loader = require("@assemblyscript/loader");
// const imports = {
//   "assembly/index": {
//     getMaze: (width, height) => getMaze(width, height),
//   }
// };

function getAssembly() {
  return /* loader.instantiate( */fs.promises.readFile(__dirname + "/build/optimized.wasm");
}

module.exports = { getAssembly };
