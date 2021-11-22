use crate::utils::*;

use super::utils;

pub fn recursive_backtracker(width: usize, height: usize) -> Vec<Vec<i32>> {
    let null = -1;

    let mut y = -1;
    let mut x = -1;
    let mut grid: Vec<Vec<i32>> = Vec::with_capacity(height)
        .into_iter()
        .map(|_: Vec<i32>| {
            y += 1;
            Vec::with_capacity(width)
                .into_iter()
                .map(|_: i32| {
                    x += 1;
                    utils::init_cell(x, y)
                })
                .collect()
        })
        .collect();

    let mut cell_stack: Vec<i32> = Vec::new();

    let rng = fastrand::Rng::new();
    let x = rng.usize(0..width);
    let y = rng.usize(0..height);
    let mut prev = null;
    let mut current = grid[y][x] + get_neighbors(&mut grid, x, y);

    cell_stack.push(current);
    let mut visited = 1;

    let mut steps: Vec<Vec<i32>> = Vec::new();

    let toVisit = width * height;

    while visited < toVisit {
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

    grid
}
