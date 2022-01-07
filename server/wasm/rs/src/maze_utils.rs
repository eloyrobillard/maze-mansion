pub fn get_x(cell: i32) -> usize {
    (cell >> 24) as usize
}

pub fn get_y(cell: i32) -> usize {
    ((cell >> 16) & 0xFF) as usize
}

fn is_visited(cell: i32) -> bool {
    cell & (1 << 4) > 0
}

pub fn has_neighbor(neighbor: &str, cell: i32) -> bool {
    match neighbor {
        "top" => cell & (1 << 3) > 0,
        "right" => cell & (1 << 2) > 0,
        "bottom" => cell & (1 << 1) > 0,
        "left" => cell & (1 << 0) > 0,
        _ => panic!("Invalid neighbor query"),
    }
}

pub fn read_neighbors(cell: i32) -> i32 {
    cell & 0xFF
}

pub fn get_neighbors(grid: &mut Vec<Vec<i32>>, x: usize, y: usize) -> i32 {
    let cell = grid[y][x];
    if cell & (1 << 4) > 0 {
        return cell & 0xFF;
    }

    let width = grid[0].len();
    let height = grid.len();
    let mut neighbors = 0;

    // top
    if y > 0 && !is_visited(grid[y - 1][x]) {
        neighbors |= 1 << 3;
    }
    // right
    if x + 1 < width && !is_visited(grid[y][x + 1]) {
        neighbors |= 1 << 2;
    }
    // bottom
    if y + 1 < height && !is_visited(grid[y + 1][x]) {
        neighbors |= 1 << 1;
    }
    // left
    if x > 0 && !is_visited(grid[y][x - 1]) {
        neighbors |= 1;
    }
    grid[y][x] |= neighbors | (1 << 4);
    neighbors
}

fn get_visitables(cell: i32, grid: &mut Vec<Vec<i32>>) -> Vec<usize> {
    let mut res: Vec<usize> = Vec::new();
    
    let x = get_x(cell) as usize;
    let y = get_y(cell) as usize;
    let neighbors = get_neighbors(grid, x, y);

    for i in 0..4 as usize {
        if (neighbors & (1 << i)) > 0 {
            let visited = match i {
                0 => is_visited(grid[y][x - 1]),
                1 => is_visited(grid[y + 1][x]),
                2 => is_visited(grid[y][x + 1]),
                3 => is_visited(grid[y - 1][x]),
                _ => panic!("Wrong visitable direction."),
            };
            if !visited {
                res.push(i);
            }
        }
    }

    res
}

fn destroy_wall(x: usize, y: usize, dir: usize, grid: &mut Vec<Vec<i32>>) -> i32 {
    grid[y][x] &= match dir {
        0 => 0x7FFFFFFE,
        1 => 0x7FFFFFFD,
        2 => 0x7FFFFFFB,
        3 => 0x7FFFFFF7,
        _ => panic!("Wrong wall direction."),
    };

    grid[y][x]
}

fn set_visited(grid: &mut Vec<Vec<i32>>, y: usize, x: usize) -> i32 {
    grid[y][x] |= 1 << 8;

    grid[y][x]
}

pub fn get_next(cell: i32, grid: &mut Vec<Vec<i32>>) -> i32 {
    let visitables = get_visitables(cell, grid);
    let rand_visitable = match visitables.len() {
        0 => usize::MAX,
        x => fastrand::usize(0..x),
    };
    if rand_visitable == usize::MAX {
        return -1;
    }

    let x = get_x(cell);
    let y = get_y(cell);
    let dir = visitables[rand_visitable];
    destroy_wall(x, y, dir, grid);

    let next = match dir {
        0 => set_visited(grid, y, x - 1),
        1 => set_visited(grid, y + 1, x),
        2 => set_visited(grid, y, x + 1),
        3 => set_visited(grid, y - 1, x),
        _ => panic!("Wrong neighbor direction."),
    };

    next
}

pub fn init_grid(width: usize, height: usize) -> Vec<Vec<i32>> {
    vec![vec![0; width]; height]
        .into_iter()
        .enumerate()
        .map(|(y, row)| {
            row.into_iter()
                .enumerate()
                .map(|(x, _)| ((x << 24) + (y << 16)) as i32)
                .collect()
        })
        .collect()
}
