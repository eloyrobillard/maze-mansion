// NOTE #1 uncomment below for Console debug
// NOTE #2 comment back to compile module
// import 'wasi';
// import { Console } from 'as-wasi';
import { printMaze, generateClassLists, updateClassLists } from './utilsFn';
import RecursiveBacktracker from './rbtFn';

let instance: StaticArray<Int32Array[]>;

export { getX, getY } from './mazeFn';
// Export type ID
// LINK https://github.com/AssemblyScript/examples/blob/main/loader/assembly/index.ts
export const Int32Array_ID = idof<Int32Array>();
export const ArrayInt32Arrays_ID = idof<Int32Array[]>();
export const ArrayOfStrings_ID = idof<string[]>();
export const Array2DStrings_ID = idof<string[][]>();


export function getTextMaze(width: i32, height: i32): string {
	return printMaze(instance[2]);
}

export function generateClasses(ptr: Int32Array[]): Array<Array<string>> {
	return generateClassLists(ptr);
}

export function updateClasses(
	classLists: string[][],
	change: Int32Array,
	updateDir: i32
): string[][] {
	return updateClassLists(instance[2], classLists, change, updateDir);
}

export function newMazeDescriptor(width: i32, height: i32): void {
	instance = RecursiveBacktracker(width, height);
}

// export const Grid_ID = idof<i32[][]>();

// const maze = RecursiveBacktracker(10, 10)[0];

// Console.log(printMaze(maze));
// Console.log(generateClasses(maze).reduce((acc, row) => `${acc} ${row.toString()}`, ''));
