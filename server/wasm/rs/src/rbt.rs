use crate::utils::get_neighbors;

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

    let rng = fastrand::Rng::new();
    let x = rng.usize(0..width);
    let y = rng.usize(0..height);
    let mut current = grid[y][x] + get_neighbors(&mut grid, x, y);
    
    let mut visited = 1;

    let steps: Vec<Vec<i32>>;

    let toVisit = width * height;
    let cell_stack: Vec<i32>;


    while visited < toVisit {
        if current == null {

        }
    }

    grid
}
