export type WasmApi = {
	getTextMaze: (width: number, height: number) => number;
	generateFinal: () => number;
	updateClasses: (
		classLists: number,
		step: number,
		updateDir: number
	) => number;
	newMazeDescriptor: (width: number, height: number) => void;
	getStepsLen: () => number;
	getX: (cell: number) => number;
	getY: (cell: number) => number;
	Int32Array_ID: number;
	ArrayInt32Arrays_ID: number;
	ArrayOfStrings_ID: number;
	Array2DStrings_ID: number;
};