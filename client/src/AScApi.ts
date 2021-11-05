import { ASUtil } from '@assemblyscript/loader';
import { Maze, Step, MazeDescriptor } from './ApiTypes';

export type Api = { 
  // TODO check if number good for i32
  getTextMaze: (width: number, height: number) => string;
  generateClasses: (maze: Maze) => string[][];
  updateClasses: (maze: Maze, classLists: string[][], change: Step, updateDir: number) => string[][];
  getMazeDescriptor: (width: number, height: number) => MazeDescriptor;
}

function formatApi(api: ASUtil & Api): Api {
  return { 
    // @ts-ignore
    getTextMaze: (width, height) => api.__getString(api.getTextMaze(width, height)),
    // @ts-ignore
    generateClasses: (maze) => api.__getArray(api.generateClasses(maze))
      .map((row) => api.__getArray(row).map((cl) => api.__getString(cl))),
    // @ts-ignore
    updateClasses: (maze, cls, change, dir) => api.__getArray(api.updateClasses(maze, cls, change, dir))
      .map((row) => api.__getArray(row).map((cl) => api.__getString(cl))),
    // @ts-ignore
    getMazeDescriptor: api.getMazeDescriptor
  };
}

const AScApi = { formatApi };
export default AScApi;