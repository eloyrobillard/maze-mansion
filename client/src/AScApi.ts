import { MazeDescriptor } from 'rs';

export type WasmApi = {
	get_classes: (ptr: number) => number;
	update_classes: (
		classLists: number,
		change: number,
		updateDir: number
	) => number;
	getX: (cell: number) => number;
	getY: (cell: number) => number;
	Int32Array_ID: number;
	ArrayInt32Arrays_ID: number;
	ArrayOfStrings_ID: number;
	Array2DStrings_ID: number;
};

type WASMApi = {
	generateClasses: (maze: MazeDescriptor, stage: string) => string[][];
	updateClasses: (
		maze: MazeDescriptor,
		classLists: string[][],
		change: number[],
		updateDir: number
	) => string[][];
};

const WASMAPI: WASMApi =  {
		generateClasses: (maze, stage) => {
			// Passing array to WebAssembly
			// LINK https://github.com/AssemblyScript/examples/blob/main/loader/tests/offset.js
			const ptr = maze.get_classes(stage);
			console.log('class lists generated');
			return new Uint8Array();
		},

		updateClasses: (maze, cls, change, dir) => {

			// Passing array to WebAssembly
			// LINK https://github.com/AssemblyScript/examples/blob/main/loader/tests/offset.js
			return maze.update_classes(cls, change, dir);
		},
}

export default WASMAPI;
