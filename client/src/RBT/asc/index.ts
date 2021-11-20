import { instantiate } from "@assemblyscript/loader";
import { WasmApi } from '../../AScApi';

export default async function Asc() {
  const { exports: { 
    getTextMaze,
    generateClasses,
    updateClasses,
    getMazeDescriptor,
    __getArray,
    __getString,
    memory
  }} = await instantiate<WasmApi>(fetch('http://localhost:3001/maze/rbt/asc'), {
    console: {
      log(msg: number) {
        // @ts-ignore
        console.log(`msg: ${(msg && __getString(msg)) || msg}`); 
      }
    },
  });
  return {
    getTextMaze,
    generateClasses,
    updateClasses,
    getMazeDescriptor,
    __getArray,
    __getString,
    memory
  };
};
