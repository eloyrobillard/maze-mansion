import { ASUtil } from '@assemblyscript/loader';

export type WasmApi = { 
  getTextMaze: (width: number, height: number) => number;
  generateClasses: (maze: Int32Array) => number;
  updateClasses: (maze: number[][], classLists: string[][], change: number[], updateDir: number) => number;
  getMazeDescriptor: (width: number, height: number) => number;
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

export function formatApi(api: ASUtil & WasmApi): Api {
  return { 
    getTextMaze: (width, height) => api.__getString(api.getTextMaze(width, height)),
    generateClasses: (maze) => {
      const arrBuffer = api.memory!.buffer;
      const wasmGrid = new Int32Array(arrBuffer, 0, maze.length * maze[0].length);
      const index = api.generateClasses(wasmGrid);
      // console.log('index', api);
      const res = api.__getArray(index)
        .map((row) => api.__getArray(row).map((cl) => api.__getString(cl)));
      // console.log('generate', res);
      return res;
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
