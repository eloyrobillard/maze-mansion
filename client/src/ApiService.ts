import RecursiveBacktracker from './recursive_backtracker/recursive-backtracker';
import { printMaze, htmlMaze } from './recursive_backtracker/utils';

function mazeToText (width: number, height: number) {
	return printMaze(RecursiveBacktracker(width, height));
}

function mazeToScreen (ctx: CanvasRenderingContext2D, width: number, height: number): CanvasRenderingContext2D {
	return htmlMaze(ctx, RecursiveBacktracker(width, height));
}

const ApiClient = { mazeToText, mazeToScreen };

export default ApiClient;
