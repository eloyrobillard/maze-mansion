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
	Int32Array_ID: number;
	ArrayInt32Arrays_ID: number;
	ArrayOfStrings_ID: number;
	Array2DStrings_ID: number;
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
				return [ [ '' ] ];
			}
			// Passing array to WebAssembly
			// LINK https://github.com/AssemblyScript/examples/blob/main/loader/tests/index.js
			const elemPtrs = maze.map((arr) =>
				api.__pin(api.__newArray(api.Int32Array_ID, arr))
			);
			const inPtr = api.__pin(
				api.__newArray(api.ArrayInt32Arrays_ID, elemPtrs)
			);
			elemPtrs.forEach(api.__unpin);

			const index = api.generateClasses(inPtr);
			console.log('index', index);
			api.__unpin(inPtr);
			// const res = api.__getArray(index);
			const res = api
				.__getArray(index)
				.map((row) => api.__getArray(row).map((cl) => api.__getString(cl)));
			// console.log('generate', res);
			return res;
		},

		updateClasses: (maze, cls, change, dir) => {
			if (maze.length === 0) {
				return [ [ '' ] ];
			}
			// Passing array to WebAssembly
			// LINK https://github.com/AssemblyScript/examples/blob/main/loader/tests/index.js
			const elemPtrs = maze.map((arr) =>
				api.__pin(api.__newArray(api.Int32Array_ID, arr))
			);
			const mazePtr = api.__pin(
				api.__newArray(api.ArrayInt32Arrays_ID, elemPtrs)
			);
			elemPtrs.forEach(api.__unpin);

			const strArrsPtrs = cls.map((arr, i) => {
				const strsPtr = arr.map((str) => api.__pin(api.__newString(str)));
				const res = api.__pin(api.__newArray(api.ArrayOfStrings_ID, strsPtr));
				strsPtr.forEach(api.__unpin);
				return res;
			});
			const clsPtr = api.__pin(
				api.__newArray(api.Array2DStrings_ID, strArrsPtrs)
			);
			strArrsPtrs.forEach(api.__unpin);

			const changePtr = api.__pin(api.__newArray(api.Int32Array_ID, change));

			const resPtr = api.updateClasses(mazePtr, clsPtr, changePtr, dir);
			const res = api
				.__getArray(resPtr)
				.map((row) => api.__getArray(row).map((cl) => api.__getString(cl)));

			api.__unpin(mazePtr);
			api.__unpin(clsPtr);
			api.__unpin(changePtr);

			// console.log(res);

			return res;
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
