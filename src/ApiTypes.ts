import { Maze, Cell, Neighbors } from './RBT/ts/maze';
export { Maze, Cell } from './RBT/ts/maze';

export type Step = { 
  prev: Cell | null;
  prevNeighs: Neighbors | null; 
  current: Cell | null;
  firstVisit: boolean;
  currentNeighs: Neighbors | null; 
}

export type MazeDescriptor = { 
  initial: Maze;
  steps: Step[];
  final: Maze;
}