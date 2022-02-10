import { instantiate } from "@assemblyscript/loader";
import { WasmApi } from 'WasmApi';

export default async function loadWasm() {
  const module = await instantiate<WasmApi>(fetch('http://localhost:3002/maze') , {
    console: {
      log(msg: number) {
        console.log(`msg: ${(msg && module.exports.__getString(msg)) || msg}`);
      }
    },
  });
  return module.exports;
};
