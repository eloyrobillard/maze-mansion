import { getRand } from './utils';

export class Step { 
  prev: Cell | null;
  prevNeighs: NeighborData | null; 
  current: Cell | null;
  firstVisit: boolean;
  currentNeighs: NeighborData | null; 
}

export class MazeDescriptor { 
  initial: Maze;
  steps: Step[];
  final: Maze;
}

export class NeighborData {
	[key: string]: any;
	ready: boolean;
	count: i32;
	neighbors: Map<string, Cell | null>
}

export class Cell {
	visited: boolean = false;
	neighborData: NeighborData = {
		count: 0,
		ready: false,
		neighbors: new Map<string, Cell | null>()
	};

	constructor (public x: i32, public y: i32) {}
}

export class Maze {
	grid: Cell[][];
	cellStack: Cell[] = [];
	visited: i32 = 0;
	prev: Cell | null = null;

	constructor (public width: i32, public height: i32) {
		this.grid = new Array<Cell[]>(height);
		this.initializeGrid();
	}

	initializeGrid(): Cell[][] { 
		for (let y = 0; y < this.height; y += 1) {
			this.grid[y] = new Array<Cell>(this.width);
			for (let x = 0; x < this.width; x += 1) {
				this.grid[y][x] = new Cell(x, y);
			}
		}
		return this.grid;
	}

	getNeighbors(cell: Cell): NeighborData {
		if (cell.neighborData.ready) {
			return cell.neighborData;
		}

		const neighborData: NeighborData = {
			count: 0,
			ready: true,
			neighbors: new Map<string, Cell | null>()
		};

		const x= cell.x;
		const y= cell.y;
		if (y - 1 >= 0) {
			const neighbor = this.grid[y - 1][x];
			if (!neighbor.visited) {
				neighborData.neighbors.set('top', neighbor);
				neighborData.count += 1;
			}
		}
		if (y + 1 < this.height) {
			const neighbor = this.grid[y + 1][x];
			if (!neighbor.visited) {
				neighborData.neighbors.set('bottom', neighbor);
				neighborData.count += 1;
			}
		}
		if (x - 1 >= 0) {
			const neighbor = this.grid[y][x - 1];
			if (!neighbor.visited) {
				neighborData.neighbors.set('left', neighbor);
				neighborData.count += 1;
			} 
		}
		if (x + 1 < this.width) {
			const neighbor = this.grid[y][x + 1];
			if (!neighbor.visited) {
				neighborData.neighbors.set('right', neighbor);
				neighborData.count += 1;
			} 
		}

		cell.neighborData = neighborData;
		return neighborData;
	}

	getNext (cell: Cell): Cell | null {
		const neighborData = this.getNeighbors(cell);
		const keys = neighborData.neighbors.keys();
		const visitables = new Array<string>();
		for (let i = 0; i < keys.length; i += 1) {
			if (filterVisitables(keys[i], neighborData)) {
				visitables.push(keys[i])
			}
		}

		if (visitables.length === 0) {
			return null;
		}
		const direction = visitables[getRand(visitables.length)];

		// console.log(direction);
		const next = neighborData.neighbors.get(direction);
		// NOTE remove next from neighborData since now linked to cell
		neighborData.neighbors.set(direction, null);
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

function filterVisitables(key: string, neighborData: NeighborData): boolean {
	if (!neighborData.neighbors.has(key)) {
		return false;
	} 
	const val = neighborData.neighbors.get(key);
	if (val === null) {
		return false
	} 
	return val.visited;
}