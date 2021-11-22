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

    grid[y][x] += neighbors;
    neighbors
}
