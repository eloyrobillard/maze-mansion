import { Maze, NeighborData, Step } from './maze';

export function getRand (max: i32): i32 {
	return Math.floor(Math.random() * max as f32) as i32;
}

export function printMaze (maze: Maze): string {
	let res = `${'*---'.repeat(maze.width)}*`;
	const grid = maze.grid;
	
	for (let y = 0; y < maze.height; y += 1) {
		let mid = '\n|';
		let bot = '*';

		for (let x = 0; x < maze.width; x += 1) {
			let newRight = '    ';
			let newBot = '   *';
			const neighbors = grid[y][x].neighborData.neighbors;
			if (neighbors.has('bottom')) {
				newBot = '---*';
			}
			if (neighbors.has('right')) {
				newRight = `   |`;
			}

			if (y + 1 < maze.height) {
				const neighborsBot = grid[y + 1][x].neighborData.neighbors;
				if (neighborsBot.has('top')) {
					newBot = '---*';
				}

				bot += `${newBot}`;
			}
			if (x + 1 < maze.width) {
				const neighborsRight = grid[y][x + 1].neighborData.neighbors;
				if (neighborsRight.has('left')) {
					newRight = `   |`;
				}
			} else {
				newRight = '   ';
			}

			/* if (maze.current && x === maze.current.x && y === maze.current.y) {
				newRight = `${newRight.substr(0, 1)}o${newRight.substr(2)}`;
			} else if (maze.grid[y][x].visited) {
        newRight = `${newRight.substr(0, 1)}-${newRight.substr(2)}`;
      } */
			mid += newRight;
		}
		res += `${mid}|\n${bot}`;
	}
	res += '---*'.repeat(maze.width);
	// console.log(res);
  return res;
}

export function generateClassLists(maze: Maze): string[][] {
	const base = maze.visited ? 'grid[ri][ci] visited' : 'grid[ri][ci]';
	const grid = maze.grid;
	const res: string[][] = [];
	for (let ri = 0; ri < maze.height; ri += 1) {
	// return maze.grid.map<Array<string>>((row, ri, grid) => {
		for (let ci = 0; ci < maze.width; ci += 1) {
		// return row.map<string>((cell, ci) => {
			let classList = base;

			if (ri === 0) {
				classList = `${classList} wall-top`;
			}
			if (ri + 1 >= maze.height) {
				classList = `${classList} wall-bottom`;
			}
			if (ci === 0) {
				classList = `${classList} wall-left`;
			}
			if (ci + 1 >= maze.width) {
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
			if (ri + 1 < maze.height) {
				const neighborsBot = grid[ri + 1][ci].neighborData.neighbors;
				if (neighborsBot && neighborsBot.has('top')) {
					classList = `${classList} wall-bottom`;
				}
			}
			if (ci + 1 < maze.width) {
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

export function updateClassLists(maze: Maze, classLists: string[][], change: Step, updateDir: number): string[][] {
	if (updateDir > 0) {
		return updateForward(maze, classLists, change);
	}

	return updateBackward(maze, classLists, change);
}

function updateForward(maze: Maze, classLists: string[][], change: Step): string[][] {
	const prev = change.prev;
	const prevNeighs = change.prevNeighs;
	const current = change.current;
	const currentNeighs = change.currentNeighs;
	// console.log(prev, current);
	if (prev) {
		const px = prev.x;
		const py = prev.y;
		classLists[py][px] = getClassList(prevNeighs!, px, py, maze);
	}
	
	const cx = current!.x;
	const cy = current!.y;
	if (prev && cx === prev.x && cy === prev.y) {
		classLists[cy][cx] = `${getClassList(currentNeighs!, cx, cy, maze)} stuck`;
	} else {
		classLists[cy][cx] = `${getClassList(currentNeighs!, cx, cy, maze)} current`;
	}

	return classLists;
	// return [...classLists.map((list) => [...list])];
	// return classLists;
}

function updateBackward(maze: Maze, classLists: string[][], change: Step): string[][] {
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
	classLists[py][px] = `${getClassList(prevNeighs!, px, py, maze)} current`;
	if (cx === px && cy === py) {
		classLists[py][px] = `${classLists[py][px]} stuck`;
	} else if (firstVisit) {
		// NOTE if about to visit current for first time
		classLists[cy][cx] = `grid[ri][ci] ${cx === 0 ? ' wall-left' : cx === maze.width - 1 ? ' wall-right' : ''}${cy === 0 ? ' wall-top' : cy === maze.height - 1 ? ' wall-bottom' : ''}`;
	} else {
		classLists[cy][cx] = `${getClassList(currentNeighs!, cx, cy, maze)}`;
	} 
	
	return classLists;
	// return [...classLists.map((list) => [...list])];
	// return classLists;
} 


function getClassList(neighborData: NeighborData, x: number, y: number, maze: Maze): string {
	const keys = neighborData.neighbors.keys();
	const classes = new Array<string>();
	for (let i = 0; i < keys.length; i += 1) {
		classes.push(`wall-${keys[i]}`)
	}
	const innerWallList = classes.join(' ');

	return `grid[ri][ci] visited ${innerWallList}${x === 0 ? ' wall-left' : x === maze.width - 1 ? ' wall-right' : ''}${y === 0 ? ' wall-top' : y === maze.height - 1 ? ' wall-bottom' : ''}`;
}

