import { Maze, Cell } from './recursive_backtracker/maze';

export type Step = { 
  prev: Cell | null; 
  current: Cell | null; 
}

export type MazeDescriptor = { 
  initial: Maze;
  steps: Step[];
  final: Maze;
}