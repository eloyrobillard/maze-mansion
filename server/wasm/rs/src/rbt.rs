use crate::maze_utils::*;

use wasm_bindgen::prelude::*;
#[wasm_bindgen]
pub struct Maze {
    init: Vec<Vec<i32>>,
    steps: Vec<Vec<i32>>,
    fin: Vec<Vec<i32>>,
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
        let grid = self.fin.clone();
        let mut res = format!("{}*", "*---".repeat(grid[0].len()));

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

                /* if (grid.current && x === grid.current.x && y === grid.current.y) {
                          newRight = `${newRight.substr(0, 1)}o${newRight.substr(2)}`;
                      } else if (grid.grid[y][x].visited) {
                  newRight = `${newRight.substr(0, 1)}-${newRight.substr(2)}`;
                } */
                mid = format!("{}{}", mid, new_right);
            }
            res = format!("{}{}|\n{}", res, mid, bot);
        }
        res = format!("{}{}", res, "---*".repeat(grid[0].len()));
        // console.log(res);
        println!("{}", res);
        res
    }
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
