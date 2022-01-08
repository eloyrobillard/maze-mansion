mod maze_utils;

use crate::maze_utils::*;
use rand::{thread_rng, Rng};
use wasm_bindgen::prelude::*;
// When the `wee_alloc` feature is enabled, use `wee_alloc` as the global
// allocator.
#[cfg(feature = "wee_alloc")]
#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

#[wasm_bindgen]
pub struct Maze {
    init: Vec<Vec<i32>>,
    steps: Vec<Vec<i32>>,
    fin: Vec<Vec<i32>>,
}

#[wasm_bindgen]
impl Maze {
    pub fn new(width: usize, height: usize) -> Maze {
        let invalid = -1;

        let mut grid: Vec<Vec<i32>> = init_grid(width, height);

        let mut cell_stack: Vec<i32> = Vec::new();

        let mut rng = thread_rng();
        let x: usize = rng.gen_range(0..width);
        let y: usize = rng.gen_range(0..height);

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
        Maze {
            init: init_grid(width, height),
            steps,
            fin: grid,
        }
    }

    pub fn render(&self) -> String {
        self.to_string()
    }
}

use std::fmt;

impl fmt::Display for Maze {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let grid = self.fin.clone();
        let mut res = write!(f, "{}*", "*---".repeat(grid[0].len()))?;

        for y in 0..grid.len() {
            let mut mid = String::from("\n|");
            let mut bot = String::from("*");

            for x in 0..grid[0].len() {
                let mut new_right = String::from("    ");
                let mut new_bot = String::from("   *");
                let neighbors = read_neighbors(grid[y][x]);
                if has_neighbor("bottom", neighbors) {
                    new_bot = String::from("---*");
                }
                if has_neighbor("right", neighbors) {
                    new_right = String::from("   |");
                }

                if y + 1 < grid.len() {
                    let neighs_bot = read_neighbors(grid[y + 1][x]);
                    if has_neighbor("top", neighs_bot) {
                        new_bot = String::from("---*");
                    }

                    bot = format!("{}{}", bot, new_bot);
                }
                if x + 1 < grid[0].len() {
                    let neighs_right = read_neighbors(grid[y][x + 1]);
                    if has_neighbor("left", neighs_right) {
                        new_right = String::from("   |");
                    }
                } else {
                    new_right = String::from("   ");
                }

                mid = format!("{}{}", mid, new_right);
            }
            write!(f, "{}|\n{}", mid, bot)?;
        }
        write!(f, "{}", "---*".repeat(grid[0].len()))?;
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use crate::Maze;
    #[test]
    fn it_works() {
        let maze = Maze::new(10, 10);
        println!("{}", maze);
        assert!(maze.to_string().len() == 10)
    }
}
