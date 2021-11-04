// The entry file of your WebAssembly module.
// import 'wasi';
// import { Console, FileSystem } from 'as-wasi';
import { printMaze, generateClassLists, updateClassLists } from './utils';
import { Maze, Step, MazeDescriptor } from './maze';
import RecursiveBacktracker from './recursive-backtracker';

export function getTextMaze(width: i32, height: i32): string {
  return printMaze(RecursiveBacktracker(width, height).final);
}

export function generateClasses(maze: Maze): string[][] {
  return generateClassLists(maze)
}

export function updateClasses(maze: Maze, classLists: string[][], change: Step, updateDir: number): string[][] {
  return updateClassLists(maze, classLists, change, updateDir);
}

export function getMazeDescriptor(width: i32, height: i32): MazeDescriptor {
  return RecursiveBacktracker(width, height);
}

// Console.log(getMaze(10, 10));

