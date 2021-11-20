import { ASUtil } from '@assemblyscript/loader';

export type WasmApi = { 
  getTextMaze: (width: number, height: number) => number;
  generateClasses: (arrOffset: number, height: number, width: number) => number;
  updateClasses: (maze: number[][], classLists: string[][], change: number[], updateDir: number) => number;
  getMazeDescriptor: (width: number, height: number) => number;
  __getArray: (address: number) => number[];
  __getString: (address: number) => string;
  memory: WebAssembly.Memory;
}

export type Api = { 
  getTextMaze: (width: number, height: number) => string;
  generateClasses: (maze: number[][]) => string[][];
  updateClasses: (maze: number[][], classLists: string[][], change: number[], updateDir: number) => string[][];
  getMazeDescriptor: (width: number, height: number) => MazeDescriptor;
}

export type MazeDescriptor = {
  initial: number[][],
  steps: number[][],
  final: number[][],
}

export function formatApi(api: WasmApi): Api {
  return { 
    getTextMaze: (width, height) => api.__getString(api.getTextMaze(width, height)),

    generateClasses: (maze) => {
      if (maze.length === 0) {
        return [['']];
      }
      const buffer = api.memory!.buffer;
      const flatMaze = maze.reduce((acc, row) => acc.concat(row), []);
      const wasmGrid = new Int32Array(buffer, undefined, maze.length * maze[0].length);
      wasmGrid.set(flatMaze);
      // console.log('wasmGrid', wasmGrid);
      const index = api.generateClasses(wasmGrid.byteOffset, maze.length, maze[0].length);
      console.log('index', index);
      // const res = api.__getArray(index);
      // const res = api.__getArray(index)
      //   .map((row) => api.__getArray(row).map((cl) => api.__getString(cl)));
      // console.log('generate', res);
      return [['']];
    },

    updateClasses: (maze, cls, change, dir) => api.__getArray(api.updateClasses(maze, cls, change, dir))
      .map((row) => api.__getArray(row).map((cl) => api.__getString(cl))),

    getMazeDescriptor: (width, height) => {
      const descriptor = api.__getArray(api.getMazeDescriptor(width, height));
      return {
        initial: api.__getArray(descriptor[0]).map((el) => api.__getArray(el)),
        steps: api.__getArray(descriptor[1]).map((el) => api.__getArray(el)),
        final: api.__getArray(descriptor[2]).map((el) => api.__getArray(el)),
      }
    }
  };
}
