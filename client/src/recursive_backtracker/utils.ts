import { Maze } from './maze';
import { Step } from '../ApiTypes';

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
	return maze.grid.map((row, ri, grid) => {
		return row.map((cell, ci) => {
			let classList = 'cell';

			if (ri - 1 < 0) {
				classList = `${classList} wall-top`;
			}
			if (ri + 1 >= maze.height) {
				classList = `${classList} wall-bottom`;
			}
			if (ci - 1 < 0) {
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

export function updateClassLists(classLists: string[][], change: Step) {
	const { prev, current } = change;
	if (!current) {
		return classLists;
	}

	const { x: px, y: py } = prev!;
	const { x: cx, y: cy } = current;
	const direction = `wall-${getChangeDirections(px, py, cx ,cy)}`;

	classLists[py][px] = classLists[py][px].replace('current', '').replace(` ${direction}`, '');
	classLists[cy][cx] = `${classLists[cy][cx]} current`;

	return classLists;
}

function getChangeDirections(x1: number, y1: number, x2: number, y2: number) {
	const xDiff = x2 - x1;
	if (xDiff) {
		return xDiff > 0 ? 'right' : 'left';
	}
	const yDiff = y2 - y1;
	if (yDiff) {
		return yDiff > 0 ? 'top' : 'bottom';
	}
}
