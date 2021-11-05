import { getRand } from './utilsFn';
import { Console } from 'as-wasi';

export const NULL = 0;

// MazeDescriptor -> i32[][][] (len: 3)
// initial: grid -> i32[][]
// steps: Array<[i32, i32, i32]> -> i32[][]
// final: grid -> i32[][]

// Step
// i32 (prev/Neighs) i32 (current/Neighs) i32 (firstVisit -> bool)
// [i32, i32, i32]

// Cell
// XX YY VV NR (neighbors, ready?)
function createCell(grid: i32[][], x: i32, y: i32): i32 {
  return grid[y][x] = (x << 24) + (y << 16); 
}

export function getX(cell: i32): i32 {
  return cell >> 24;
}

export function getY(cell: i32): i32 {
  return (cell >> 16) & 0xFF;
}

export function isVisited(grid: i32[][], x: i32, y: i32): bool {
  // Console.log(`${x} ${y} is visited? ${!!(grid[y][x] & (1 << 8)) ? 'true' : 'false'}`);
  return !!(grid[y][x] & (1 << 8));
}

export function setVisited(grid: i32[][], x: i32, y: i32): i32 {
  grid[y][x] |= 1 << 8;
  return grid[y][x];
}

// Neighbors
// top right bottom left
export function getNeighbors(grid: i32[][], x: i32, y: i32): i32 {
  if (!isVisited(grid, x, y)) {
    return NULL;
  }
  const cell = grid[y][x];
  if (cell & 1) {
    // Console.log(`${x} ${y} ret neighs: ${((cell & 0xF0) >> 4).toString(2)}`);
    return (cell & 0xF0) >> 4;
  }

  let neighs = 0;
  // top
  if (y > 0 && !isVisited(grid, x, y-1)) {
    neighs |= 1 << 3;
  }
  // right
  if (x + 1 < grid[0].length && !isVisited(grid, x+1, y)) {
    neighs |= 1 << 2;
  }
  // bottom
  if (y + 1 < grid.length && !isVisited(grid, x, y+1)) {
    neighs |= 1 << 1;
  }
  // left
  if (x > 0 && !isVisited(grid, x-1, y)) {
    neighs |= 1;
  }

  // set neighbors, set neighbors ready
  grid[y][x] |= (neighs << 4) + 1;
  // Console.log(`${x} ${y} get neighs: ${neighs.toString(2)}`);
  return neighs;
}

function neighborsToStrings(neighbors: i32): string[] {
  const maybeNeighbors = ['top', 'right', 'bottom', 'left'];
  const res: string [] = [];
  for (let i = 0; i < 4; i++) {
    if (neighbors & (1 << (3 - i))) {
      res.push(maybeNeighbors[i]);
    }
  }
  
  return res;
}

function getVisitables(grid: i32[][], x: i32, y: i32, neighbors: i32): i32 {
  let visitables = 0;
  for (let i = 0; i < 4; i++) {
    if (neighbors & (1 << (3 - i))) {
      switch (i) {
        // top
        case 0: {
          const visited = isVisited(grid, x, y - 1);
          if (!visited) {
            visitables |= 1 << 3;
          }
          break;
        }
        // right
        case 1: {
          const visited = isVisited(grid, x + 1, y);
          if (!visited) {
            visitables |= 1 << 2;
          }
          break;
        }
        // bottom
        case 2: {
          const visited = isVisited(grid, x, y + 1);
          if (!visited) {
            visitables |= 1 << 1;
          }
          break;
        }
        // left
        case 3: {
          const visited = isVisited(grid, x - 1, y);
          if (!visited) {
            visitables |= 1;
          }
          break;
        }
        
        default:
          break;
      }
      // Console.log(`3 - i: ${3 - i}`);
    }
  }
    
  return visitables;
}

function getNumVisitables(grid: i32[][], neighbors: i32, x: i32, y: i32): i32 {
  // Console.log(`${x} ${y} neighbors: ${neighbors.toString(2)}`);
  // Console.log(`${x} ${y}: ${grid[y][x].toString(2)}`);
  let numNeighs = 0;
  for (let i = 0; i < 4; i++) {
    if (neighbors & i) {
      numNeighs += 1;
    }
  }
    
  return numNeighs;
}

function removeNeighbor(grid: i32[][], x: i32, y: i32, neighbor: i32): i32 {
  switch (neighbor) {
    // top
    case 0: {
      grid[y][x] &= 0xFFFFFF7F;
      break;
    }
    // right
    case 1: {
      grid[y][x] &= 0xFFFFFFBF;
      break;
    }
    // bottom
    case 2: {
      grid[y][x] &= 0xFFFFFFDF;
      break;
    }
    // left
    case 3: {
      grid[y][x] &= 0xFFFFFFEF;
      break;
    }

    default:
      return NULL;
  }
  return grid[y][x];
}

export function getNext(grid: i32[][], cell: i32): i32 {
  const x = getX(cell);
  const y = getY(cell);
  const neighbors = getNeighbors(grid, x, y);
  const visitables = getVisitables(grid, x, y, neighbors);
  let numVis = getNumVisitables(grid, neighbors, x, y);

  const rand = getRand(numVis) + 1;
  let count = 0;
  let i = 0;
  // find neigh corresponding to n = rand
  for (; i < 4; i++) {
    if (visitables & (1 << (3 - i))) {
      count += 1;
      if (count === rand) {
        break;
      }
    }
  }

  // Cell
  // XX YY VV NR (neighbors, ready?)
  // Console.log(`${x} ${y} neighbors: ${neighbors.toString(2)} numNeighs: ${numNeighs.toString()} rand: ${rand.toString()} i: ${i.toString()}`);
  switch (i) {
    // top
    case 0: {
      setVisited(grid, x, y-1);
      removeNeighbor(grid, x, y, 0);
      // Console.log(`${x} ${y} neighs after: ${getNeighbors(grid, x, y).toString(2)}`);
      return grid[y-1][x];
    }
    // right
    case 1: {
      setVisited(grid, x+1, y);
      removeNeighbor(grid, x, y, 1);
      // Console.log(`${x} ${y} neighs after: ${getNeighbors(grid, x, y).toString(2)}`);
      return grid[y][x+1];
    }
    // bottom
    case 2: {
      setVisited(grid, x, y+1);
      removeNeighbor(grid, x, y, 2);
      // Console.log(`${x} ${y} neighs after: ${getNeighbors(grid, x, y).toString(2)}`);
      return grid[y+1][x];
    }
    // left
    case 3: {
      setVisited(grid, x-1, y);
      removeNeighbor(grid, x, y, 3);
      // Console.log(`${x} ${y} neighs after: ${getNeighbors(grid, x, y).toString(2)}`);
      return grid[y][x-1];
    }

    default:
      return NULL;
  }
}

// Maze
// grid: i32[][]
// cellStack: i32[]
// visited: i32
// prev: i32
export function initGrid(width: i32, height: i32): i32[][] {
  const neighs = new Array<i32[]>(height);
  for (let y = 0; y < height; y++) {
    neighs[y] = new Array<i32>(width);
    for (let x = 0; x < width; x++) {
      createCell(neighs, x, y);
    }
  }

  return neighs;
}