import { getNeighbors } from './mazeFn';

export function getRand (max: i32): i32 {
	return Math.floor(Math.random() * max as f32) as i32;
}

export function printMaze (grid: i32[][]): string {
  const height = grid.length;
  const width = grid[0].length;
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

/* 
export function generateClassLists(grid: Maze): string[][] {
	const base = grid.visited ? 'grid[ri][ci] visited' : 'grid[ri][ci]';
	const grid = grid.grid;
	const res: string[][] = [];
	for (let ri = 0; ri < grid.height; ri += 1) {
	// return grid.grid.map<Array<string>>((row, ri, grid) => {
		for (let ci = 0; ci < grid.width; ci += 1) {
		// return row.map<string>((cell, ci) => {
			let classList = base;

			if (ri === 0) {
				classList = `${classList} wall-top`;
			}
			if (ri + 1 >= grid.height) {
				classList = `${classList} wall-bottom`;
			}
			if (ci === 0) {
				classList = `${classList} wall-left`;
			}
			if (ci + 1 >= grid.width) {
				classList = `${classList} wall-right`;
			}

			const hasNeighs = grid[ri][ci].neighborData.count > 0;
			if (!hasNeighs) {
				res[ri].push(classList);
			}
			const neighbors = grid[ri][ci].neighborData.neighbors;

			if (neighbors.has('bottom')) {
				classList = `${classList} wall-bottom`
			}
			if (neighbors.has('right')) {
				classList = `${classList} wall-right`;
			}
			// NOTE keep all walls to bot/right to avoid breaks in wall lines
			if (ri + 1 < grid.height) {
				const neighborsBot = grid[ri + 1][ci].neighborData.neighbors;
				if (neighborsBot && neighborsBot.has('top')) {
					classList = `${classList} wall-bottom`;
				}
			}
			if (ci + 1 < grid.width) {
				const neighborsRight = grid[ri][ci + 1].neighborData.neighbors;
				if (neighborsRight && neighborsRight.has('left')) {
					classList = `${classList} wall-right`;
				}
			}
			res[ri].push(classList);
		}
	}
	return res;
}

export function updateClassLists(grid: Maze, classLists: string[][], change: Step, updateDir: number): string[][] {
	if (updateDir > 0) {
		return updateForward(grid, classLists, change);
	}

	return updateBackward(grid, classLists, change);
}

function updateForward(grid: Maze, classLists: string[][], change: Step): string[][] {
	const prev = change.prev;
	const prevNeighs = change.prevNeighs;
	const current = change.current;
	const currentNeighs = change.currentNeighs;
	// console.log(prev, current);
	if (prev) {
		const px = prev.x;
		const py = prev.y;
		classLists[py][px] = getClassList(prevNeighs!, px, py, grid);
	}
	
	const cx = current!.x;
	const cy = current!.y;
	if (prev && cx === prev.x && cy === prev.y) {
		classLists[cy][cx] = `${getClassList(currentNeighs!, cx, cy, grid)} stuck`;
	} else {
		classLists[cy][cx] = `${getClassList(currentNeighs!, cx, cy, grid)} current`;
	}

	return classLists;
	// return [...classLists.map((list) => [...list])];
	// return classLists;
}

function updateBackward(grid: Maze, classLists: string[][], change: Step): string[][] {
	const prev = change.prev;
	const prevNeighs = change.prevNeighs;
	const current = change.current;
	const currentNeighs = change.currentNeighs;
	const firstVisit = change.firstVisit;
	
	const cx = current!.x;
	const cy = current!.y;
	if (!prev) {
		classLists[cy][cx] = `grid[ri][ci]`;
		return classLists;
	} 
	
	const px = prev.x;
	const py = prev.y;
	classLists[py][px] = `${getClassList(prevNeighs!, px, py, grid)} current`;
	if (cx === px && cy === py) {
		classLists[py][px] = `${classLists[py][px]} stuck`;
	} else if (firstVisit) {
		// NOTE if about to visit current for first time
		classLists[cy][cx] = `grid[ri][ci] ${cx === 0 ? ' wall-left' : cx === grid.width - 1 ? ' wall-right' : ''}${cy === 0 ? ' wall-top' : cy === grid.height - 1 ? ' wall-bottom' : ''}`;
	} else {
		classLists[cy][cx] = `${getClassList(currentNeighs!, cx, cy, grid)}`;
	} 
	
	return classLists;
	// return [...classLists.map((list) => [...list])];
	// return classLists;
} 


function getClassList(neighborData: NeighborData, x: number, y: number, grid: Maze): string {
	const keys = neighborData.neighbors.keys();
	const classes = new Array<string>();
	for (let i = 0; i < keys.length; i += 1) {
		classes.push(`wall-${keys[i]}`)
	}
	const innerWallList = classes.join(' ');

	return `grid[ri][ci] visited ${innerWallList}${x === 0 ? ' wall-left' : x === grid.width - 1 ? ' wall-right' : ''}${y === 0 ? ' wall-top' : y === grid.height - 1 ? ' wall-bottom' : ''}`;
}

 */