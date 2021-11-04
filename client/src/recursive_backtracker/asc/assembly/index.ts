// The entry file of your WebAssembly module.

import { printMaze } from './utils';
// import { Maze, Cell, MazeDescriptor } from './maze';
import RecursiveBacktracker from './recursive-backtracker';

export function add(a: i32, b: i32): i32 {
  return a + b;
}

export function getMaze(width: i32, height: i32): string {
  // TODO if res is address of descriptor, test passing memory up
  return printMaze(RecursiveBacktracker(width, height).final);
}

export function getArr(): i32[] {
  return [1,2,3,4,5,6];
}

