import { Cell, Maze } from './maze';
import { getRand } from './utils' ;

export default function RecursiveBacktracker (width: number, height: number) {
  const maze = new Maze(width, height);

  const firstCell = new Cell(getRand(width), getRand(height));
  firstCell.visited = true;
  maze.cellStack.push(firstCell);
  maze.visited = 1;

  let next = maze.getNext(firstCell);
  const toVisit = width * height;
  while (maze.visited <= toVisit && maze.cellStack.length) {
    while (next === null && maze.cellStack.length) {
      next = maze.cellStack.pop()!;
    }
    // maze.current = next;
    // printGrid(maze);
    next = maze.getNext(next);
  }

  return maze;
}
