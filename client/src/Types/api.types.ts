import { Maze, Cell, Neighbors } from '../RBT/ts/maze';
export { Maze, Cell } from 'RBT/ts/maze';

export type Step = { 
  prev: Cell | null;
  prevNeighs: Neighbors | null; 
  current: Cell | null;
  firstVisit: boolean;
  currentNeighs: Neighbors | null; 
}

export type MazeDescriptor = { 
  initial: Maze;
  steps: Step[];
  final: Maze;
}

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

export type Api = {
	getTextMaze: (width: number, height: number) => string;
	generateFinal: () => string[][];
	updateClasses: (
		classLists: string[][],
		step: number,
		updateDir: number
	) => string[][];
	newMazeDescriptor: (width: number, height: number) => void;
	getStepsLen: () => number;
};

export type WasmMazeDesc = {
	initial: number[][];
	steps: number[][];
	final: number[][];
};