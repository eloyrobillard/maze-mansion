import { Console } from 'as-wasi';
import { Cell, Maze, MazeDescriptor } from './maze';
import { getRand } from './utils' ;

export default function RecursiveBacktracker (width: i32, height: i32): MazeDescriptor {
  const maze = new Maze(width, height);
  
  const res: MazeDescriptor = { 
    initial: new Maze(width, height), 
    steps: [], 
    final: maze
  };
  // Console.log(res.initial.toString());

  let current: Cell | null = maze.grid[getRand(height)][getRand(width)];
  current!.visited = true;
  maze.cellStack.push(current!);
  maze.visited = 1;

  const toVisit = width * height;
  while (maze.visited < toVisit && maze.cellStack.length) {
    if (current === null) {
      current = maze.cellStack.pop();
    }
    // Console.log('prev')
    // Console.log(maze.prev ? maze.prev!.toString() : 'null')
    // Console.log('current')
    // Console.log(current ? current.toString() : 'null');
    // Console.log('cell stack')
    // Console.log(maze.cellStack.length.toString());
    // Console.log('---')

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

  // Console.log(res.final.toString());
  
  return res;
}
