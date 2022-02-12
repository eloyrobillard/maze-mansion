// import { console } from 'as-wasi';
// import * as console from './console';
import { instance } from './index';
import {
	NULL,
	getNeighbors,
	getNeighborsCell,
	getX,
	getY,
	neighsToStrings,
	isVisited
} from './mazeFn';

export function getRand (max: i32): i32 {
	return Math.floor((Math.random() * max) as f32) as i32;
}

export function printMaze (grid: Int32Array[]): string {
	const height = grid.length;
	if (height <= 0) {
		return '**\n**';
	}
	const width = grid[0].length;
	if (height <= 0) {
		return '**\n**';
	}

	let res = `${'*---'.repeat(width)}*`;

	for (let y = 0; y < height; y += 1) {
		let mid = '\n|';
		let bot = '*';

		for (let x = 0; x < width; x += 1) {
			let newRight = '    ';
			let newBot = '   *';
			const neighbors = getNeighbors(grid, x, y);
			// if has bottom
			if (neighbors & (1 << 1)) {
				newBot = '---*';
			}
			// if has right
			if (neighbors & (1 << 2)) {
				newRight = `   |`;
			}

			if (y + 1 < height) {
				const neighborsBot = getNeighbors(grid, x, y + 1);
				// if has top
				if (neighborsBot & (1 << 3)) {
					newBot = '---*';
				}

				bot += `${newBot}`;
			}
			if (x + 1 < width) {
				const neighborsRight = getNeighbors(grid, x + 1, y);
				// if has left
				if (neighborsRight & 1) {
					newRight = `   |`;
				}
			} else {
				newRight = '   ';
			}

			/* if (current && x === current.x && y === current.y) {
				newRight = `${newRight.substr(0, 1)}o${newRight.substr(2)}`;
			} else if (grid[y][x].visited) {
				newRight = `${newRight.substr(0, 1)}-${newRight.substr(2)}`;
			} */
			mid += newRight;
		}
		res += `${mid}|\n${bot}`;
	}
	res += '---*'.repeat(width);
	// console.log(res);
	return res;
}

export function generateFinalLists (): Array<Array<string>> {
	const grid = instance[2];
	const height = grid.length;
	const width = grid[0].length;

	if (height <= 0) {
		return [ [ `no height` ] ];
	}
	if (width <= 0) {
		return [ [ `no width` ] ];
	}

	// NOTE checks if grid state is initial or final
	const isFinal = isVisited(grid, 0, 0);

	const res: string[][] = new Array<Array<string>>(height);
	for (let i = 0; i < height; i++) {
		res[i] = new Array<string>(width);
	}

	if (!isFinal) {
		return res.map<Array<string>>((arr) => arr.map<string>(() => 'cell'));
	}

	const base = 'cell visited';

	for (let y = 0; y < height; y += 1) {
		for (let x = 0; x < width; x += 1) {
			let classList = base;

			if (y === 0) {
				classList = `${classList} wall-top`;
			}
			if (y + 1 >= height) {
				classList = `${classList} wall-bottom`;
			}
			if (x === 0) {
				classList = `${classList} wall-left`;
			}
			if (x + 1 >= width) {
				classList = `${classList} wall-right`;
			}

			const neighbors = getNeighbors(grid, x, y);
			if (neighbors === NULL) {
				res[y][x] = classList;
				continue;
			}

			//* if has bottom
			if (neighbors & (1 << 1)) {
				classList = `${classList} wall-bottom`;
			}
			//* if has right
			if (neighbors & (1 << 2)) {
				classList = `${classList} wall-right`;
			}
			// NOTE keep all walls to bot/right to avoid breaks in wall lines
			if (y + 1 < height) {
				const neighborsBot = getNeighbors(grid, x, y + 1);
				//* if has top
				if (neighborsBot !== NULL && neighborsBot & (1 << 3)) {
					classList = `${classList} wall-bottom`;
				}
			}
			if (x + 1 < width) {
				const neighborsRight = getNeighbors(grid, x + 1, y);
				//* if has left
				if (neighborsRight !== NULL && neighborsRight & 1) {
					classList = `${classList} wall-right`;
				}
			}
			res[y][x] = classList;
		}
	}
	return res;
}

export function updateClassLists (
	grid: Int32Array[],
	classLists: string[][],
	step: i32,
	updateDir: i32
): string[][] {
	if (updateDir > 0) {
		return updateForward(grid, classLists, step);
	}

	return updateBackward(grid, classLists, step);
}

function updateForward (
	grid: Int32Array[],
	classLists: string[][],
	step: i32
): string[][] {
	const change = instance[1][step];
	const prev = change[0];
	const current = change[1];

	const cx = getX(current);
	const cy = getY(current);
	// console.log(classLists[cy][cx]);
	const currNeighs = getNeighborsCell(current);
	const cNeighStrs = neighsToStrings(currNeighs);
	const currCls = getClassList(grid, cx, cy, cNeighStrs);
	classLists[cy][cx] = `${currCls} current`;
	if (prev !== NULL && prev !== current) {
		const px = getX(prev);
		const py = getY(prev);
		const prevNeighs = getNeighborsCell(prev);
		const pNeighStrs = neighsToStrings(prevNeighs);
		classLists[py][px] = getClassList(grid, px, py, pNeighStrs);
	} else {
		classLists[cy][cx] = `${currCls} stuck`;
	}
	return classLists;
}

function updateBackward (
	grid: Int32Array[],
	classLists: string[][],
	step: i32
): string[][] {
	const change = instance[1][step];
	const prev = change[0];
	const current = change[1];
	const firstVisit = change[2];

	const cx = getX(current);
	const cy = getY(current);

	if (prev !== NULL) {
		classLists[cy][cx] = `cell`;
		return classLists;
	}

	const px = getX(prev);
	const py = getY(prev);
	const prevNeighs = getNeighbors(grid, px, py);
	const pNeighStrs = neighsToStrings(prevNeighs);
	classLists[py][px] = `${getClassList(grid, px, py, pNeighStrs)} current`;
	if (cx === px && cy === py) {
		classLists[py][px] = `${classLists[py][px]} stuck`;
	} else if (firstVisit) {
		// NOTE if about to visit current for first time
		classLists[cy][cx] = `grid[y][x] ${cx === 0
			? ' wall-left'
			: cx === grid[0].length - 1 ? ' wall-right' : ''}${cy === 0
			? ' wall-top'
			: cy === grid.length - 1 ? ' wall-bottom' : ''}`;
	} else {
		const currNeighs = getNeighbors(grid, cx, cy);
		const cNeighStrs = neighsToStrings(currNeighs);
		classLists[cy][cx] = `${getClassList(grid, cx, cy, cNeighStrs)}`;
	}

	return classLists;
}

function getClassList (
	grid: Int32Array[],
	x: i32,
	y: i32,
	neighStrs: string[]
): string {
	const classes = new Array<string>();
	for (let i = 0; i < neighStrs.length; i += 1) {
		classes.push(`wall-${neighStrs[i]}`);
	}
	const innerWallList = classes.join(' ');

	return `cell visited ${innerWallList}${x === 0
		? ' wall-left'
		: x === grid[0].length - 1 ? ' wall-right' : ''}${y === 0
		? ' wall-top'
		: y === grid.length - 1 ? ' wall-bottom' : ''}`;
}
