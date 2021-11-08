// The entry file of your WebAssembly module.
// import 'wasi';
// import { Console } from 'as-wasi';
import { printMaze, generateClassLists } from './utilsFn';
import RecursiveBacktracker from './rbtFn';


export function getTextMaze(width: i32, height: i32): string {
  return printMaze(RecursiveBacktracker(width, height)[2]);
}

export function generateClasses(grid: i32[][]): StaticArray<StaticArray<string>> {
  return generateClassLists(grid);
}

export function getMazeDescriptor(width: i32, height: i32): StaticArray<i32[][]> {
  return RecursiveBacktracker(width, height);
}

// const maze = RecursiveBacktracker(25, 25)[2];

// Console.log(printMaze(maze));
// Console.log(generateClasses(maze).reduce((acc, row) => `${acc} ${row.toString()}`, ''));

/* import { printMaze, generateClassLists, updateClassLists } from './utils';
import { Maze, Step, MazeDescriptor } from './maze';
import RecursiveBacktracker from './rbt';

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
} */


