import { ASUtil } from '@assemblyscript/loader';
import { WasmApi, Api, WasmMazeDesc as MazeDescriptor } from 'Types';

export function formatApi(api: ASUtil & WasmApi): Api {
	return {
		getTextMaze: (width, height) =>
			api.__getString(api.getTextMaze(width, height)),

		generateClasses: (maze) => {
			if (maze.length === 0) {
				return [['']];
			}
			// Passing array to WebAssembly
			// LINK https://github.com/AssemblyScript/examples/blob/main/loader/tests/offset.js
			const elemPtrs = maze.map((arr) =>
				api.__pin(api.__newArray(api.Int32Array_ID, arr))
			);
			const inPtr = api.__pin(
				api.__newArray(api.ArrayInt32Arrays_ID, elemPtrs)
			);
			elemPtrs.forEach(api.__unpin);

			const offset = api.generateClasses(inPtr);
			console.log('class lists generated');
			api.__unpin(inPtr);
			// const res = api.__getArray(offset);
			const res = api
				.__getArray(offset)
				.map((row) => api.__getArray(row).map((cl) => api.__getString(cl)));
			// console.log('generate', res);
			return res;
		},

		updateClasses: (maze, cls, change, dir) => {
			if (maze.length === 0) {
				return [['']];
			}

			// Passing array to WebAssembly
			// LINK https://github.com/AssemblyScript/examples/blob/main/loader/tests/offset.js
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
			} as MazeDescriptor;
		}
	};
}
