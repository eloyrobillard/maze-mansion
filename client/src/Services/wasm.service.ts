import { ASUtil } from '@assemblyscript/loader';
import { WasmApi, Api } from 'Types';

export function formatApi(api: ASUtil & WasmApi): Api {
	return {
		getTextMaze: (width, height) =>
			api.__getString(api.getTextMaze(width, height)),

		generateFinal: () => {
			const offset = api.generateFinal();
			const res = api
				.__getArray(offset)
				.map((row) => api.__getArray(row).map((cl) => api.__getString(cl)));
			return res;
		},

		updateClasses: (cls, step, dir) => {
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

			const resPtr = api.updateClasses(clsPtr, step, dir);
			const res = api
				.__getArray(resPtr)
				.map((row) => api.__getArray(row).map((cl) => api.__getString(cl)));

			api.__unpin(clsPtr);

			return res;
		},
		newMazeDescriptor: api.newMazeDescriptor,
		getStepsLen: api.getStepsLen
	};
}
