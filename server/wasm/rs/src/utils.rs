pub fn init_cell(x: i32, y: i32) -> i32 {
    x << 24 + y << 16
}

pub fn get_x(cell: i32) -> i32 {
    cell >> 24
}

pub fn get_y(cell: i32) -> i32 {
    (cell >> 16) & 0xFF
}

fn is_visited(cell: i32) -> bool {
    cell & (1 << 4) == 1
}

pub fn get_neighbors(grid: &mut Vec<Vec<i32>>, x: usize, y: usize) -> i32 {
    let cell = grid[y][x];
    if cell & (4 << 1) == 1 {
        return (cell >> 4) & 0xFF;
    }

    let width = grid[0].len();
    let height = grid.len();
    let mut neighbors = 0;

    // top
    if y - 1 >= 0 && !is_visited(grid[y - 1][x]) {
        neighbors += 1 << 3;
    }
    // right
    if x + 1 < width && !is_visited(grid[y][x + 1]) {
        neighbors += 1 << 2;
    }
    // bottom
    if y + 1 < height && !is_visited(grid[y + 1][x]) {
        neighbors += 1 << 1;
    }
    // left
    if x - 1 >= 0 && !is_visited(grid[y][x - 1]) {
        neighbors += 1;
    }

    grid[y][x] += neighbors + (1 << 4);
    neighbors
}

fn get_visitables(cell: i32, grid: Vec<Vec<i32>>) -> Vec<i32> {
  let mut res: Vec<i32> = Vec::new();
  let neighbors = cell & 0xFF;

  let x = get_x(cell) as usize;
  let y = get_y(cell) as usize;

  for i in 0..4 as usize {
    if neighbors & (1 << i) == 1 {
      let visited = match i {
        0 => is_visited(grid[y][x-1]),
        1 => is_visited(grid[y+1][x]),
        2 => is_visited(grid[y][x+1]),
        3 => is_visited(grid[y-1][x]),
      };
      if !visited {
        res.push(i as i32);
      }
    }
  }
  
  res
}

pub fn get_next(cell: i32, grid: Vec<Vec<i32>>) -> i32 {
  let visitables = get_visitables(cell, grid);

  let rand_visitable = 
}