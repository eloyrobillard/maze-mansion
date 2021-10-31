import { MazeDescriptor } from '../ApiService';
import { Cell, Maze } from './maze';
import { getRand } from './utils' ;

export default function RecursiveBacktracker (width: number, height: number) {
  const maze = new Maze(width, height);
  const mazeGen = mazeGenerator(maze, width, height);
  
  let curStep = mazeGen.next();
  const res: MazeDescriptor = { 
    initial: new Maze(width, height), 
    steps: [], 
    final: maze};

  while(!curStep.done) {
    res.steps.push(curStep.value);
    curStep = mazeGen.next();
  }

  return res;
}

function * mazeGenerator(maze: Maze, width: number, height: number) {
  const firstCell = new Cell(getRand(width), getRand(height));
  firstCell.visited = true;
  maze.cellStack.push(firstCell);
  maze.visited = 1;

  let current = maze.getNext(firstCell);
  const toVisit = width * height;
  while (maze.visited <= toVisit && maze.cellStack.length) {
    if (current === null) {
      current = maze.cellStack.pop()!;
    }
    maze.prev = current;
    current = maze.getNext(current);

    yield { prev: maze.prev, current };
  }
}
