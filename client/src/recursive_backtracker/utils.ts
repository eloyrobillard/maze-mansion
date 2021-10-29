import { Maze } from './maze';

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

export function htmlMaze(ctx: CanvasRenderingContext2D, maze: Maze): CanvasRenderingContext2D {
	const CELL_SIDE = 10;

	// NOTE draw outer walls
	// top
	ctx.moveTo(0, 0);
	ctx.lineTo(CELL_SIDE * maze.width, 0);

	// right
	ctx.moveTo(CELL_SIDE * maze.width, 0);
	ctx.lineTo(CELL_SIDE * maze.width, CELL_SIDE * maze.height);

	// left
	ctx.moveTo(0, 0);
	ctx.lineTo(0, CELL_SIDE * maze.height);

	// bottom
	ctx.moveTo(0, CELL_SIDE * maze.height);
	ctx.lineTo(CELL_SIDE * maze.width, CELL_SIDE * maze.height);

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
				ctx.lineTo(CELL_SIDE * ci + 10, CELL_SIDE * ri);
			}
			if (neighbors.bottom) {
				ctx.moveTo(CELL_SIDE * ci, CELL_SIDE * ri + 10);
				ctx.lineTo(CELL_SIDE * ci + 10, CELL_SIDE * ri + 10);
			}
			if (neighbors.left) {
				ctx.moveTo(CELL_SIDE * ci, CELL_SIDE * ri);
				ctx.lineTo(CELL_SIDE * ci, CELL_SIDE * ri + 10);
			}
			if (neighbors.right) {
				ctx.moveTo(CELL_SIDE * ci + 10, CELL_SIDE * ri);
				ctx.lineTo(CELL_SIDE * ci + 10, CELL_SIDE * ri + 10);
			}
			ctx.stroke();
		});
	});
	return ctx;
}
