const { instantiate } = require("@assemblyscript/loader");

async function Asc() {
  const module = await instantiate(fetch('http://localhost:3001/maze/rbt/asc'));
  return module.exports;
};

module.exports = Asc;
