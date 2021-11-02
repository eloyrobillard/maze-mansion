import RecursiveBacktracker from './recursive_backtracker/ts/recursive-backtracker';
import { printMaze, canvasMaze, generateClassLists, updateClassLists } from './recursive_backtracker/ts/utils';
import { Maze } from './recursive_backtracker/ts/maze';
import { Step } from './ApiTypes';

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

function mazeToClassLists(maze: Maze) {
	return generateClassLists(maze);
}

function updateMaze (maze: Maze, classLists: string[][], change: Step, updateDir: number) {
	return updateClassLists(maze, classLists, change, updateDir);
}

const MazeApi = { mazeToText, mazeToCanvas, mazeToClassLists, updateMaze, getMazeDescriptor };

export default MazeApi;
