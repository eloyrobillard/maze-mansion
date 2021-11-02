import { Maze, Neighbors } from './maze';
import { Step } from '../../ApiTypes';

export function getRand (max: number) {
	return Math.floor(Math.random() * max);
}

export function printMaze (maze: Maze) {
	let res = `${'*---'.repeat(maze.width)}*`;
	const grid = maze.grid;
	for (let y = 0; y < maze.height; y += 1) {
		let mid = '\n|';
		let bot = '*';
		for (let x = 0; x < maze.width; x += 1) {
			let newRight = '    ';
			let newBot = '   *';
			const neighbors = grid[y][x].neighbors;
			if (neighbors) {
				if (neighbors.bottom) {
					newBot = '---*';
				}
				if (neighbors.right) {
					newRight = `   |`;
				}
			}

			if (y + 1 < maze.height) {
				const neighborsBot = grid[y + 1][x].neighbors;
				if (neighborsBot && neighborsBot.top) {
					newBot = '---*';
				}

				bot += `${newBot}`;
			}
			if (x + 1 < maze.width) {
				const neighborsRight = grid[y][x + 1].neighbors;
				if (neighborsRight && neighborsRight.left) {
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

export function canvasMaze(ctx: CanvasRenderingContext2D, maze: Maze): CanvasRenderingContext2D {
	const CELL_SIDE = 10;
	const WIDTH = maze.width;
	const HEIGHT = maze.height;

	// NOTE draw outer walls
	// top
	ctx.moveTo(0, 0);
	ctx.lineTo(CELL_SIDE * WIDTH, 0);

	// right
	ctx.moveTo(CELL_SIDE * WIDTH, 0);
	ctx.lineTo(CELL_SIDE * WIDTH, CELL_SIDE * HEIGHT);

	// left
	ctx.moveTo(0, 0);
	ctx.lineTo(0, CELL_SIDE * HEIGHT);

	// bottom
	ctx.moveTo(0, CELL_SIDE * HEIGHT);
	ctx.lineTo(CELL_SIDE * WIDTH, CELL_SIDE * HEIGHT );

	maze.grid.forEach((row, ri) => {
		row.forEach((cell, ci) => {
			// const factor = ri + ci;
			// if (factor & 1) {
			// 	ctx.fillStyle = 'green';
			// 	ctx.fillRect(CELL_SIDE * ci, CELL_SIDE * ri, CELL_SIDE, CELL_SIDE);
			// } else {
			// 	ctx.fillStyle = 'red';
			// 	ctx.fillRect(CELL_SIDE * ci, CELL_SIDE * ri, CELL_SIDE, CELL_SIDE);
			// }

			// NOTE draw inner walls
			const neighbors = cell.neighbors;
			if (!neighbors) return;

			if (neighbors.top) {
				ctx.moveTo(CELL_SIDE * ci, CELL_SIDE * ri);
				ctx.lineTo(CELL_SIDE * ci + CELL_SIDE, CELL_SIDE * ri);
			}
			if (neighbors.bottom) {
				ctx.moveTo(CELL_SIDE * ci, CELL_SIDE * ri + CELL_SIDE);
				ctx.lineTo(CELL_SIDE * ci + CELL_SIDE, CELL_SIDE * ri + CELL_SIDE);
			}
			if (neighbors.left) {
				ctx.moveTo(CELL_SIDE * ci, CELL_SIDE * ri);
				ctx.lineTo(CELL_SIDE * ci, CELL_SIDE * ri + CELL_SIDE);
			}
			if (neighbors.right) {
				ctx.moveTo(CELL_SIDE * ci + CELL_SIDE, CELL_SIDE * ri);
				ctx.lineTo(CELL_SIDE * ci + CELL_SIDE, CELL_SIDE * ri + CELL_SIDE);
			}
			ctx.stroke();
		});
	});
	return ctx;
}

export function generateClassLists(maze: Maze) {
	const base = maze.visited ? 'cell visited' : 'cell';
	return maze.grid.map((row, ri, grid) => {
		return row.map((cell, ci) => {
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

			const neighbors = cell.neighbors;
			if (!neighbors) {
				return classList;
			}

			if (neighbors.bottom) {
				classList = `${classList} wall-bottom`
			}
			if (neighbors.right) {
				classList = `${classList} wall-right`;
			}
			// NOTE keep all walls to bot/right to avoid breaks in wall lines
			if (ri + 1 < maze.height) {
				const neighborsBot = grid[ri + 1][ci].neighbors;
				if (neighborsBot && neighborsBot.top) {
					classList = `${classList} wall-bottom`;
				}
			}
			if (ci + 1 < maze.width) {
				const neighborsRight = grid[ri][ci + 1].neighbors;
				if (neighborsRight && neighborsRight.left) {
					classList = `${classList} wall-right`;
				}
			}
			return classList;
		});
	});
}

export function updateClassLists(maze: Maze, classLists: string[][], change: Step, updateDir: number): string[][] {
	if (updateDir > 0) {
		return updateForward(maze, classLists, change);
	}

	return updateBackward(maze, classLists, change);
}

function updateForward(maze: Maze, classLists: string[][], change: Step) {
	const { prev, prevNeighs, current, currentNeighs } = change;
	// console.log(prev, current);
	if (prev) {
		const { x: px, y: py } = prev;
		classLists[py][px] = getClassList(prevNeighs!, px, py, maze);
	}
	
	const { x: cx, y: cy } = current!;
	if (prev && cx === prev.x && cy === prev.y) {
		classLists[cy][cx] = `${getClassList(currentNeighs!, cx, cy, maze)} stuck`;
	} else {
		classLists[cy][cx] = `${getClassList(currentNeighs!, cx, cy, maze)} current`;
	}

	// return [...classLists.map((list) => [...list])];
	return classLists;
}

function updateBackward(maze: Maze, classLists: string[][], change: Step) {
	const { prev, prevNeighs, current, firstVisit, currentNeighs } = change;
	
	const { x: cx, y: cy } = current!;
	if (!prev) {
		classLists[cy][cx] = `cell`;
		return classLists;
	} 
	
	const { x: px, y: py } = prev;
	classLists[py][px] = `${getClassList(prevNeighs!, px, py, maze)} current`;
	
	if (cx === px && cy === py) {
		classLists[py][px] = `${classLists[py][px]} stuck`;
	} else if (firstVisit) {
		// NOTE if about to visit current for first time
		classLists[cy][cx] = `cell`;
	} else {
		classLists[cy][cx] = `${getClassList(currentNeighs!, cx, cy, maze)}`;
	} 
	
	return [...classLists.map((list) => [...list])];
	// return classLists;
}


function getClassList(neighbors: Neighbors, x: number, y: number, maze: Maze): string {
	const innerWallList = Object.entries(neighbors)
		.filter(([, value]) => value)
		.map(([key, ]) => `wall-${key}`)
		.join(' ');

	return `cell visited ${innerWallList}${x === 0 ? ' wall-left' : x === maze.width - 1 ? ' wall-right' : ''}${y === 0 ? ' wall-top' : y === maze.height - 1 ? ' wall-bottom' : ''}`;
}
