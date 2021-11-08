import { ASUtil } from '@assemblyscript/loader';

export type WasmApi = { 
  getTextMaze: (width: number, height: number) => number;
  generateClasses: (maze: number[][]) => number;
  // updateClasses: (maze: Maze, classLists: string[][], change: Step, updateDir: number) => string[][];
  getMazeDescriptor: (width: number, height: number) => number;
}

export type Api = { 
  getTextMaze: (width: number, height: number) => string;
  generateClasses: (maze: number[][]) => string[][];
  // TODO implement
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
    // @ts-ignore
    getTextMaze: (width, height) => api.__getString(api.getTextMaze(width, height)),
    // @ts-ignore
    generateClasses: (maze) => {
      const index = api.generateClasses(maze)
      // console.log('index', index);
      return api.__getArray(index)
        .map((row) => api.__getArray(row).map((cl) => api.__getString(cl)));
    },
    // @ts-ignore
    updateClasses: (maze, cls, change, dir) => api.__getArray(api.updateClasses(maze, cls, change, dir))
      .map((row) => api.__getArray(row).map((cl) => api.__getString(cl))),
    // @ts-ignore
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
