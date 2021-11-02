import { Maze, Cell, Neighbors } from './recursive_backtracker/ts/maze';

export type Step = { 
  prev: Cell | null;
  prevNeighs: Neighbors | null; 
  current: Cell | null;
  currentNeighs: Neighbors | null; 
}

export type MazeDescriptor = { 
  initial: Maze;
  steps: Step[];
  final: Maze;
}