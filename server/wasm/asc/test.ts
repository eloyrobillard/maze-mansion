const loader = require("@assemblyscript/loader");
const { getAssembly } = require ('./index');

(async function () { 
  const asm = await getAssembly();
  const module = await loader.instantiate(asm);

  const { getTextMaze } = module.exports;
  const { __getString } = module.exports;
  
  console.log(__getString(getTextMaze(10, 10)));
})();
