use crate::utils::*;

// use super::utils;

pub fn recursive_backtracker(width: usize, height: usize) -> Vec<Vec<Vec<i32>>> {
    let null = -1;
    let mut res: Vec<Vec<Vec<i32>>> = vec![init_grid(width, height)];
    
    let mut grid: Vec<Vec<i32>> = init_grid(width, height);

    let mut cell_stack: Vec<i32> = Vec::new();

    let rng = fastrand::Rng::new();
    let x = rng.usize(0..width);
    let y = rng.usize(0..height);
    let mut prev = null;
    let mut current = grid[y][x] + get_neighbors(&mut grid, x, y);

    cell_stack.push(current);
    let mut visited = 1;

    let mut steps: Vec<Vec<i32>> = Vec::new();

    let to_visit = width * height;

    while visited < to_visit {
        if current == null {
            current = cell_stack.pop().unwrap();
        }

        steps.push(vec![prev, current]);

        prev = current;
        current = get_next(current, &mut grid);
        prev = grid[get_y(prev) as usize][get_x(prev) as usize];
        if current != null {
            visited += 1;
        }
    }

    steps.push(vec![prev, current]);
    res.push(steps);
    res.push(grid);
    res
}
