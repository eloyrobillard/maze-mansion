export type MazeDescriptor = {
	create_maze: (width: number, height: number) => void;
	get_height: () => number;
	get_width: () => number;
	get_final: () => number;
	get_steps_len: () => number;
}

export type WASMApi = {
	newMaze: (width: number, height: number) => void;
	getStepsLen: () => number;
	generateClasses: () => string[][];
	updateClasses: (
		classLists: string[][],
		stepIndex: number,
		updateDir: number
	) => string[][];
};