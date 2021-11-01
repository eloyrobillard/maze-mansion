import { MazeDescriptor } from '../ApiTypes';
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
  let current: Cell | null = new Cell(getRand(width), getRand(height));
  current.visited = true;
  maze.cellStack.push(current);
  maze.visited = 1;

  const toVisit = width * height;
  while (maze.visited <= toVisit && maze.cellStack.length) {
    if (current === null) {
      current = maze.cellStack.pop()!;
    }
    maze.prev = current;
    current = maze.getNext(current);

    yield { prev: maze.prev, prevNeighs: {...maze.getNeighbors(maze.prev)}, current, currentNeighs: current ? {...maze.getNeighbors(current)} : null };
  }
}
