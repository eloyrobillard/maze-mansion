import { Cell, Maze, MazeDescriptor } from './maze';
import { getRand } from './utils' ;

export default function RecursiveBacktracker (width: i32, height: i32): MazeDescriptor {
  const maze = new Maze(width, height);
  
  const res: MazeDescriptor = new MazeDescriptor( 
    [], 
    maze
  );

  let prev: Cell | null = null;
  let current: Cell | null = maze.grid[getRand(height)][getRand(width)];
  current!.visited = true;
  maze.cellStack.push(current!);
  maze.visited = 1;

  const toVisit = width * height;
  while (maze.visited < toVisit && maze.cellStack.length) {
    if (current === null) {
      current = maze.cellStack.pop();
    }

    const firstVisit = current.neighborData.ready === false;
    res.steps.push({ 
      prev, 
      prevNeighs: prev ? maze.getNeighbors(prev) : null, 
      firstVisit,
      current,
      currentNeighs: maze.getNeighbors(current),
    });
    
    prev = current;
    current = maze.getNext(current);
  }

  // NOTE yield last change
  res.steps.push({ 
    prev, 
    prevNeighs: prev!.neighborData, 
    current,
    currentNeighs: maze.getNeighbors(current!),
    firstVisit: true,
  });
  
  return res;
}
