// The entry file of your WebAssembly module.
// import 'wasi';
// import { Console } from 'as-wasi';
import { printMaze, generateClassLists, updateClassLists } from './utilsFn';
import RecursiveBacktracker from './rbtFn';

export function getTextMaze(width: i32, height: i32): string {
  return printMaze(RecursiveBacktracker(width, height)[2]);
}

export function generateClasses(arrOffset: i32, height: i32, width: i32): i32 {
// export function generateClasses(buffer: ArrayBuffer, arrOffset: i32, height: i32, width: i32): StaticArray<StaticArray<string>> {
  return generateClassLists(arrOffset, height, width);
}

export function updateClasses(maze: Int32Array[], classLists: string[][], change: i32[], updateDir: i32): string[][] {
  return updateClassLists(maze, classLists, change, updateDir);
}

export function getMazeDescriptor(width: i32, height: i32): StaticArray<Int32Array[]> {
  return RecursiveBacktracker(width, height);
}

// export const Grid_ID = idof<i32[][]>();

// const maze = RecursiveBacktracker(10, 10)[0];

// Console.log(printMaze(maze));
// Console.log(generateClasses(maze).reduce((acc, row) => `${acc} ${row.toString()}`, ''));


