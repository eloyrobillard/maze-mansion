/* eslint-disable no-undef */
// const fs = require("fs");
const { instantiate } = require("@assemblyscript/loader");
// const imports = {
//   "assembly/index": {
//     getMaze: (width, height) => getMaze(width, height),
//   }
// };

// const wasmModule = loader.instantiate(fs.promises.readFile(__dirname + "/build/optimized.wasm"), imports);

// module.exports = wasmModule.exports;

// function getAssembly() {
//   return fetch('http://localhost:3001/maze/rbt/asc')
//     .then((res) => res)
//     .then((data) => data)
//     .catch((err) => console.log(err));
// }

async function Asc() {
  const module = await instantiate(fetch('http://localhost:3001/maze/rbt/asc'));
  return module.exports;
};

module.exports = Asc;
