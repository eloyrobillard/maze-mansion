import RecursiveBacktracker from './recursive_backtracker/recursive-backtracker';
import { printMaze, canvasMaze, generateClassLists, updateClassLists } from './recursive_backtracker/utils';
import { Maze, Cell } from './recursive_backtracker/maze';

export type Step = { 
  prev: Cell | null; 
  current: Cell | null; 
}

export type MazeDescriptor = { 
  initial: Maze;
  steps: Step[];
  final: Maze;
}

function mazeToText (width: number, height: number) {
	const mazeDescriptor = RecursiveBacktracker(width, height);
	return printMaze(mazeDescriptor.final!);
}

function mazeToCanvas (ctx: CanvasRenderingContext2D, width: number, height: number): CanvasRenderingContext2D {
	const mazeDescriptor = RecursiveBacktracker(width, height);
	return canvasMaze(ctx, mazeDescriptor.final!);
}

function getMazeDescriptor(width: number, height: number) {
	return RecursiveBacktracker(width, height);
}

function mazeToClassListsInstant (maze: Maze) {
	return generateClassLists(maze);
}

function mazeToClassListsStep (classLists: string[][], change: Step) {
	return updateClassLists(classLists, change);
}

const ApiClient = { mazeToText, mazeToCanvas, mazeToClassListsInstant, mazeToClassListsStep, getMazeDescriptor };

export default ApiClient;
