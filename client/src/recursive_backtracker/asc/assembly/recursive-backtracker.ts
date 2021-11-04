import { Cell, Maze, MazeDescriptor } from './maze';
import { getRand } from './utils' ;

export default function RecursiveBacktracker (width: i32, height: i32): MazeDescriptor {
  const maze = new Maze(width, height);
  
  const res: MazeDescriptor = { 
    initial: new Maze(width, height), 
    steps: [], 
    final: maze
  };

  let current: Cell | null = maze.grid[getRand(height)][getRand(width)];
  current!.visited = true;
  maze.cellStack.push(current!);
  maze.visited = 1;

  const toVisit = width * height;
  while (maze.visited < toVisit && maze.cellStack.length) {
    if (current === null) {
      current = maze.cellStack.pop();
    }

    res.steps.push({ 
      prev: maze.prev, 
      prevNeighs: maze.prev ? maze.getNeighbors(maze.prev!) : null, 
      current,
      currentNeighs: maze.getNeighbors(current),
      firstVisit: !current.neighborData.ready,
    });
    
    maze.prev = current;
    current = maze.getNext(current);
  }

  // NOTE yield last change
  res.steps.push({ 
    prev: maze.prev, 
    prevNeighs: maze.prev!.neighborData, 
    current,
    currentNeighs: maze.getNeighbors(current!),
    firstVisit: true,
  });
  
  return res;
}
