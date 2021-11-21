import * as console from './console';
import { NULL, getNext, setVisited, loadNeighbors, initGrid, getX, getY } from './mazeFn';
import { getRand } from './utilsFn' ;

export default function RecursiveBacktracker(width: i32, height: i32): StaticArray<Int32Array[]> {
  if (width <= 0 || height <= 0) {
    return [ 
      [new Int32Array(0)], 
      [new Int32Array(0)], 
      // [new Int32Array(0)]
    ];
  }

  const grid = initGrid(width, height);
  const cellStack: i32[] = [];
  /**
   * 0: previously occupied cell
   * 1: currently occupied cell
   * 2: were current's neighbors already fetched?
   */
  const steps: Int32Array[] = [];
  let prev = NULL;
  let current = NULL;
  
  const descriptor: StaticArray<Int32Array[]> = [ 
    initGrid(width, height), 
    steps, 
    grid
  ];
  // console.log(descriptor.initial.toString());
  
  const x = getRand(width);
  const y = getRand(height);
  current = setVisited(grid, x, y);
  current = loadNeighbors(grid, x, y);
  let numVisited = 1;

  cellStack.push(current);

  const toVisit = width * height;
  while (numVisited < toVisit && cellStack.length) {
    if (current === NULL) {
      current = cellStack.pop();
    }

    current = grid[getY(current)][getX(current)];

    const step = new Int32Array(3);
    step[0] = prev;
    step[1] = current;
    // step[2] = (current & 1) ? 0 : 1;
    // console.log(`${(prev & 0xFF).toString(2)} ${(current & 0xFF).toString(2)}`);
    steps.push(step);
    
    prev = current;
    current = getNext(grid, current);
    // NOTE load self back after wall update
    prev = grid[getY(prev)][getX(prev)]
    if (current !== NULL) {
      numVisited += 1;
      cellStack.push(current);
    }
    // console.log(`current: ${current}, numVis: ${numVisited}`);
  }

  // console.log(`${numVisited.toString()} ${cellStack}`);

  // NOTE yield last change
  const step = new Int32Array(3);
  step[0] = prev;
  step[1] = current;
  // step[2] = 1;
  steps.push(step);

  // console.log(`initial grid: ${descriptor[0].toString()}`);
  // console.log(`final grid: ${descriptor[2].toString()}`);
  
  return descriptor;
}
