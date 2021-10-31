import RecursiveBacktracker from './recursive_backtracker/recursive-backtracker';
import { printMaze, canvasMaze, cellMaze } from './recursive_backtracker/utils';

function mazeToText (width: number, height: number) {
	return printMaze(RecursiveBacktracker(width, height));
}

function mazeToCanvas (ctx: CanvasRenderingContext2D, width: number, height: number): CanvasRenderingContext2D {
	return canvasMaze(ctx, RecursiveBacktracker(width, height));
}

function mazeToCells (width: number, height: number) {
	return cellMaze(RecursiveBacktracker(width, height));
}

const ApiClient = { mazeToText, mazeToCanvas, mazeToCells };

export default ApiClient;
