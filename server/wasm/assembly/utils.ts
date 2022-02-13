import { Maze, NeighborData, Step } from './maze';
import { instance } from './index';

export function getRand(max: i32): i32 {
	return Math.floor((Math.random() * max) as f32) as i32;
}

export function generateFinalLists(): string[][] {
	const maze = instance.final;
	const grid = maze.grid;
	const res: string[][] = new Array<Array<string>>(maze.height);
	for (let i = 0; i < maze.height; i++) {
		res[i] = new Array<string>(maze.width);
	}

	const base = 'cell visited';
	for (let y = 0; y < maze.height; y += 1) {
		for (let x = 0; x < maze.width; x += 1) {
			let classList = base;

			if (y === 0) {
				classList = `${classList} wall-top`;
			}
			if (y + 1 >= maze.height) {
				classList = `${classList} wall-bottom`;
			}
			if (x === 0) {
				classList = `${classList} wall-left`;
			}
			if (x + 1 >= maze.width) {
				classList = `${classList} wall-right`;
			}

			const hasNeighs = grid[y][x].neighborData.count > 0;
			if (!hasNeighs) {
				res[y][x] = classList;
				continue;
			}
			const neighbors = grid[y][x].neighborData.neighbors;

			if (neighbors.has('bottom')) {
				classList = `${classList} wall-bottom`;
			}
			if (neighbors.has('right')) {
				classList = `${classList} wall-right`;
			}
			// NOTE keep all walls to bot/right to avoid breaks in wall lines
			if (y + 1 < maze.height) {
				const neighborsBot = grid[y + 1][x].neighborData.neighbors;
				if (neighborsBot && neighborsBot.has('top')) {
					classList = `${classList} wall-bottom`;
				}
			}
			if (x + 1 < maze.width) {
				const neighborsRight = grid[y][x + 1].neighborData.neighbors;
				if (neighborsRight && neighborsRight.has('left')) {
					classList = `${classList} wall-right`;
				}
			}
			res[y][x] = classList;
		}
	}
	return res;
}

export function updateClassLists(
	classLists: string[][],
	change: Step,
	updateDir: number
): string[][] {
	if (updateDir > 0) {
		return updateForward(classLists, change);
	}

	return updateBackward(classLists, change);
}

function updateForward(classLists: string[][], change: Step): string[][] {
	// NOTE AssemblyScript doesn't allow object destructuring
	const prev = change.prev;
	const prevNeighs = change.prevNeighs;
	const current = change.current;
	const currentNeighs = change.currentNeighs;

	const cx = current!.x;
	const cy = current!.y;
	const currentClassList = getClassList(currentNeighs!, cx, cy);
	classLists[cy][cx] = `${currentClassList} current`;
	if (prev && prev != current) {
		const px = prev.x;
		const py = prev.y;
		classLists[py][px] = getClassList(prevNeighs!, px, py);
	} else {
		classLists[cy][cx] = `${currentClassList} stuck`;
	}

	return classLists;
}

function updateBackward(classLists: string[][], change: Step): string[][] {
	const prev = change.prev;
	const prevNeighs = change.prevNeighs;
	const current = change.current;
	const currentNeighs = change.currentNeighs;
	const firstVisit = change.firstVisit;

	const cx = current!.x;
	const cy = current!.y;
	if (prev == null) {
		classLists[cy][cx] = 'cell';
		return classLists;
	}

	const px = prev.x;
	const py = prev.y;
	classLists[py][px] = `current ${getClassList(prevNeighs!, px, py)}`;
	if (cx === px && cy === py) {
		classLists[py][px] = `${classLists[py][px]} stuck`;
	} else if (firstVisit) {
		// NOTE don't erase outer walls by mistake
		classLists[cy][cx] = `cell ${keepOuterWalls(cx, cy)}`;
	} else {
		classLists[cy][cx] = getClassList(currentNeighs!, cx, cy);
	}

	return classLists;
}

function keepOuterWalls(x: i32, y: i32): string {
	const maze = instance.final;

	return `${x === 0
		? 'wall-left'
		: x === maze.width - 1 ? 'wall-right' : ''} ${y === 0
			? 'wall-top'
			: y === maze.height - 1 ? 'wall-bottom' : ''}`;
}

function getClassList(neighborData: NeighborData, x: number, y: number): string {
	const maze = instance.final;
	const keys = neighborData.neighbors.keys();
	const classes = new Array<string>();
	for (let i = 0; i < keys.length; i += 1) {
		classes.push(`wall-${keys[i]}`);
	}
	const innerWallList = classes.join(' ');

	return `cell visited ${innerWallList}${x === 0
		? ' wall-left'
		: x === maze.width - 1 ? ' wall-right' : ''}${y === 0
			? ' wall-top'
			: y === maze.height - 1 ? ' wall-bottom' : ''}`;
}
