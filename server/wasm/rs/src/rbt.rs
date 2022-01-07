use crate::maze_utils::*;
use crate::utils::*;

use wasm_bindgen::prelude::*;
#[wasm_bindgen]
pub struct Maze {
    init: Vec<Vec<i32>>,
    steps: Vec<Vec<i32>>,
    fin: Vec<Vec<i32>>
}

#[wasm_bindgen]
impl Maze {
    pub fn new(width: usize, height: usize) -> Maze {
        let maze = recursive_backtracker(width, height);
        Maze {
            init: maze[0].clone(),
            steps: maze[1].clone(),
            fin: maze[2].clone(),
        }
    }

    pub fn to_str(&self) -> String {
        print_maze(&self.fin)
    }
}


pub fn rb_str(width: usize, height: usize) -> String {
    let maze = recursive_backtracker(width, height);
    print_maze(&maze[2])
}

pub fn recursive_backtracker(width: usize, height: usize) -> Vec<Vec<Vec<i32>>> {
    let invalid = -1;
    let mut res: Vec<Vec<Vec<i32>>> = vec![init_grid(width, height)];
    
    let mut grid: Vec<Vec<i32>> = init_grid(width, height);

    let mut cell_stack: Vec<i32> = Vec::new();

    let rng = fastrand::Rng::new();
    let x = rng.usize(0..width);
    let y = rng.usize(0..height);

    let mut prev = invalid;
    let mut current = grid[y][x] + get_neighbors(&mut grid, x, y);

    cell_stack.push(current);
    let mut visited = 1;

    let mut steps: Vec<Vec<i32>> = Vec::new();

    let to_visit = width * height;

    while visited < to_visit {
        if current == invalid {
            current = cell_stack.pop().unwrap();
        }

        steps.push(vec![prev, current]);

        prev = current;
        current = get_next(current, &mut grid);
        prev = grid[get_y(prev) as usize][get_x(prev) as usize];
        if current != invalid {
            visited += 1;
            current |= get_neighbors(&mut grid, get_x(current), get_y(current));
            cell_stack.push(current)
        }
    }

    steps.push(vec![prev, current]);
    res.push(steps);
    res.push(grid);
    res
}
