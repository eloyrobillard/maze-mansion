import RecursiveBacktracker from './recursive_backtracker/recursive-backtracker';
import { printMaze, canvasMaze, cellMaze } from './recursive_backtracker/utils';

function mazeToText (width: number, height: number) {
	const mazeDescriptor = RecursiveBacktracker(width, height);
	return printMaze(mazeDescriptor.final!);
}

function mazeToCanvas (ctx: CanvasRenderingContext2D, width: number, height: number): CanvasRenderingContext2D {
	const mazeDescriptor = RecursiveBacktracker(width, height);
	return canvasMaze(ctx, mazeDescriptor.final!);
}

function mazeToClassLists (width: number, height: number) {
	const mazeDescriptor = RecursiveBacktracker(width, height);
	console.log(mazeDescriptor);
	return cellMaze(mazeDescriptor.final!);
}

const ApiClient = { mazeToText, mazeToCanvas, mazeToClassLists };

export default ApiClient;
