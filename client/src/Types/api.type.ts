export type Api = {
	generateFinal: () => string[][];
	updateClasses: (
		classLists: string[][],
		step: number,
		updateDir: number
	) => string[][];
	newMazeDescriptor: (width: number, height: number) => void;
	getStepsLen: () => number;
};