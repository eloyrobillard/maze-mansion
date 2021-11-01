import { getRand } from './utils';

export interface Neighbors {
	[top: string]: Cell | null;
	top: Cell | null;
	right: Cell | null;
	bottom: Cell | null;
	left: Cell | null;
}

export class Cell {
	x: number;
	y: number;
	visited = false;
	neighbors: Neighbors | null = null;

	constructor (x: number, y: number) {
		this.x = x;
		this.y = y;
	}
}

export class Maze {
	width: number;
	height: number;
	grid: Cell[][];
	cellStack: Cell[] = [];
	visited = 0;
	prev: Cell | null = null;
	current: Cell | null = null;

	constructor (width: number, height: number) {
		this.width = width;
		this.height = height;
		this.grid = Array.from({ length: height }, (_, y) => {
			return Array.from({ length: width }, (_, x) => new Cell(x, y));
		});
	}

	getNeighbors (cell: Cell): Neighbors {
		if (cell.neighbors) {
			return cell.neighbors;
		}

		const neighbors: Neighbors = {
			top: null,
			bottom: null,
			left: null,
			right: null
		};

		const { x, y } = cell;
		if (y - 1 >= 0) {
			const neighbor = this.grid[y - 1][x];
			neighbors.top = !neighbor.visited ? neighbor : null;
		}
		if (y + 1 < this.height) {
			const neighbor = this.grid[y + 1][x];
			neighbors.bottom = !neighbor.visited ? neighbor : null;
		}
		if (x - 1 >= 0) {
			const neighbor = this.grid[y][x - 1];
			neighbors.left = !neighbor.visited ? neighbor : null;
		}
		if (x + 1 < this.width) {
			const neighbor = this.grid[y][x + 1];
			neighbors.right = !neighbor.visited ? neighbor : null;
		}
		cell.neighbors = neighbors;

		return cell.neighbors;
	}

	getNext (cell: Cell | null): Cell | null {
		if (cell === null) {
			return null;
		}
		const neighbors = this.getNeighbors(cell);
		const visitables = Object.entries(neighbors).filter(([ , value ]) => value && !value.visited);
		if (visitables.length === 0) {
			return null;
		}
		const [ direction ] = visitables[getRand(visitables.length)];

		// console.log(direction);
		const next = neighbors[direction];
		// NOTE remove next from neighbors since now linked to cell
		neighbors[direction] = null;
		next!.visited = true;
		this.visited += 1;
		this.updateStack(next!);

		return next;
	}

	updateStack (cell: Cell): Cell[] {
		this.cellStack.push(cell);
		return this.cellStack;
	}
}
