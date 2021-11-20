import { ASUtil } from '@assemblyscript/loader';

export type WasmApi = {
	getTextMaze: (width: number, height: number) => number;
	generateClasses: (ptr: number) => number;
	updateClasses: (
		maze: number,
		classLists: number,
		change: number,
		updateDir: number
	) => number;
	getMazeDescriptor: (width: number, height: number) => number;
	__getArray: (address: number) => number[];
	__getString: (address: number) => string;
	memory: WebAssembly.Memory;
	Int32Array_ID: number;
	ArrayInt32Arrays_ID: number;
	ArrayOfArrayOfStrings_ID: number;
	ArrayOfStrings_ID: number;
};

export type Api = {
	getTextMaze: (width: number, height: number) => string;
	generateClasses: (maze: number[][]) => string[][];
	updateClasses: (
		maze: number[][],
		classLists: string[][],
		change: number[],
		updateDir: number
	) => string[][];
	getMazeDescriptor: (width: number, height: number) => MazeDescriptor;
};

export type MazeDescriptor = {
	initial: number[][];
	steps: number[][];
	final: number[][];
};

export function formatApi (api: ASUtil & WasmApi): Api {
	return {
		getTextMaze: (width, height) =>
			api.__getString(api.getTextMaze(width, height)),

		generateClasses: (maze) => {
			if (maze.length === 0) {
				return [
					[
						''
					]
				];
			}
			// Passing array to WebAssembly
			// LINK https://github.com/AssemblyScript/examples/blob/main/loader/tests/index.js
			const elemPtrs = maze.map(arr => api.__pin(api.__newArray(api.Int32Array_ID, arr)));
      const inPtr = api.__pin(api.__newArray(api.ArrayInt32Arrays_ID, elemPtrs));
      elemPtrs.forEach(api.__unpin);

			const index = api.generateClasses(inPtr);
			console.log('index', index);
			api.__unpin(inPtr);
			// const res = api.__getArray(index);
			const res = api.__getArray(index)
			  .map((row) => api.__getArray(row).map((cl) => api.__getString(cl)));
			// console.log('generate', res);
			return res;
		},

		updateClasses: (maze, cls, change, dir) => {
			if (maze.length === 0) {
				return [
					[
						''
					]
				];
			}
			// Passing array to WebAssembly
			// LINK https://github.com/AssemblyScript/examples/blob/main/loader/tests/index.js
			// const elemPtrs = maze.map(arr => api.__pin(api.__newArray(api.Int32Array_ID, arr)));
      // const mazePtr = api.__pin(api.__newArray(api.ArrayInt32Arrays_ID, elemPtrs));
      // elemPtrs.forEach(api.__unpin);
			// TODO newStrings
			// const strArrsPtrs = cls.map(arr => api.__pin(api.__newArray(api.ArrayOfStrings_ID, arr)));
      // const clsPtr = api.__pin(api.__newArray(api.ArrayOfArrayOfStrings_ID, ));
      // strArrsPtrs.forEach(api.__unpin);
			
      // const changePtr = api.__pin(api.__newArray(api.Int32Array_ID, ));

			return api
					.__getArray(api.updateClasses(0, 0, 0, dir))
					.map((row) => api.__getArray(row).map((cl) => api.__getString(cl)))
		},

		getMazeDescriptor: (width, height) => {
			const descriptor = api.__getArray(api.getMazeDescriptor(width, height));
			return {
				initial: api.__getArray(descriptor[0]).map((el) => api.__getArray(el)),
				steps: api.__getArray(descriptor[1]).map((el) => api.__getArray(el)),
				final: api.__getArray(descriptor[2]).map((el) => api.__getArray(el))
			};
		}
	};
}
