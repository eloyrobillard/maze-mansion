// import { Console } from 'as-wasi';
import { NULL, getNext, setVisited, initGrid } from './mazeFn';
import { getRand } from './utilsFn' ;

export default function RecursiveBacktracker(width: i32, height: i32): StaticArray<i32[][]> {
  
  const grid = initGrid(width, height);
  const cellStack: i32[] = [];
  const steps: i32[][] = [];
  let prev = NULL;
  let current = NULL;
  
  const descriptor: StaticArray<i32[][]> = [ 
    initGrid(width, height), 
    steps, 
    grid
  ];
  // Console.log(descriptor.initial.toString());
  
  const x = getRand(width);
  const y = getRand(height);
  current = setVisited(grid, x, y);
  let numVisited = 1;
  // Console.log(`${x} ${y} current: ${current.toString(2)}`);

  cellStack.push(current);

  const toVisit = width * height;
  while (numVisited < toVisit && cellStack.length) {
    if (current === NULL) {
      current = cellStack.pop();
    }
    // Console.log('prev')
    // Console.log(maze.prev ? maze.prev!.toString() : 'null')
    // Console.log('current')
    // Console.log(current ? current.toString() : 'null');
    // Console.log('cell stack')
    // Console.log(maze.cellStack.length.toString());
    // Console.log('---')

    // Console.log(printMaze(grid));

    steps.push([
      prev, 
      current,
      (current & 1) ? 0 : 1,
    ]);
    
    prev = current;
    current = getNext(grid, current);
    if (current !== NULL) {
      numVisited += 1;
      cellStack.push(current);
    }
    // Console.log(`current: ${current}, numVis: ${numVisited}`);
  }

  // Console.log(`${numVisited.toString()} ${cellStack}`);

  // NOTE yield last change
  steps.push([ 
    prev, 
    current,
    1,
  ]);

  // Console.log(`initial grid: ${descriptor[0].toString()}`);
  // Console.log(`final grid: ${descriptor[2].toString()}`);
  
  return descriptor;
}
