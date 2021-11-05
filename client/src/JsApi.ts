/* eslint-disable @typescript-eslint/no-unused-vars */
import RecursiveBacktracker from './RBT/ts/recursive-backtracker';
import { printMaze, canvasMaze, generateClassLists, updateClassLists } from './RBT/ts/utils';
import { Maze } from './RBT/ts/maze';
import { Step } from './ApiTypes';


function getTextMaze (width: number, height: number) {
	const mazeDescriptor = RecursiveBacktracker(width, height);
	return printMaze(mazeDescriptor.final);
}

// function mazeToCanvas (ctx: CanvasRenderingContext2D, width: number, height: number): CanvasRenderingContext2D {
// 	const mazeDescriptor = RecursiveBacktracker(width, height);
// 	return canvasMaze(ctx, mazeDescriptor.final!);
// }

function getMazeDescriptor(width: number, height: number) {
	return RecursiveBacktracker(width, height);
}

function generateClasses(maze: Maze) {
	return generateClassLists(maze);
}

function updateClasses(maze: Maze, classLists: string[][], change: Step, updateDir: number) {
	return updateClassLists(maze, classLists, change, updateDir);
}

const JsApi = { getTextMaze, generateClasses, updateClasses, getMazeDescriptor };

export default JsApi;
