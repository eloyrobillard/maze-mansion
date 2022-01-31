mod maze_utils;

use crate::maze_utils::*;
use rand::{thread_rng, Rng};

#[repr(C)]
pub struct MazeDescriptor {
    height: usize,
    width: usize,
    steps: Vec<Vec<i32>>,
    fin: Vec<Vec<i32>>,
}

impl MazeDescriptor {
    pub fn new(width: usize, height: usize) -> MazeDescriptor {
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
        MazeDescriptor {
            height,
            width,
            steps,
            fin: grid,
        }
    }
}

#[no_mangle]
pub extern "C" fn get_height(maze: &MazeDescriptor) -> usize {
    maze.height
}

#[no_mangle]
pub extern "C" fn get_width(maze: &MazeDescriptor) -> usize {
    maze.width
}

#[no_mangle]
pub extern "C" fn get_steps_len(maze: &MazeDescriptor) -> usize {
    maze.steps.len()
}

#[no_mangle]
pub extern "C" fn get_final(maze: &MazeDescriptor) -> *const *const String {
    let grid = &maze.fin;
    let height = grid.len();
    let width = grid[0].len();

    // NOTE checks if grid state is initial or final

    let mut res: Vec<Vec<String>> = vec![vec![String::from("cell"); width]; height];

    let base = "cell visited";

    for y in 0..height {
        for x in 0..width {
            let mut class_list = String::from(base);

            if y == 0 {
                class_list.push_str(" wall-top");
            }
            if y + 1 >= height {
                class_list.push_str(" wall-bottom");
            }
            if x == 0 {
                class_list.push_str(" wall-left");
            }
            if x + 1 >= width {
                class_list.push_str(" wall-right");
            }

            let neighbors = read_neighbors(grid[y][x]);
            if neighbors == 0 {
                res[y][x] = String::from(class_list);
                continue;
            }

            //* if has bottom
            if neighbors & (1 << 1) != 0 {
                class_list.push_str(" wall-bottom");
            }
            //* if has right
            if neighbors & (1 << 2) != 0 {
                class_list.push_str(" wall-right");
            }
            // NOTE keep all walls to bot/right to avoid breaks in wall lines
            if y + 1 < height {
                let neighs_bot = read_neighbors(grid[y + 1][x]);
                //* if has top
                if neighs_bot & (1 << 3) != 0 {
                    class_list.push_str(" wall-bottom");
                }
            }
            if x + 1 < width {
                let neighs_right = read_neighbors(grid[y][x + 1]);
                //* if has left
                if (neighs_right & 1) != 0 {
                    class_list.push_str(" wall-right");
                }
            }
            res[y][x] = String::from(class_list);
        }
    }
    res.into_iter()
        .map(|vec| vec.as_ptr())
        .collect::<Vec<*const String>>()
        .as_ptr()
}

#[no_mangle]
pub extern "C" fn update_classes(
    maze: &MazeDescriptor,
    _classes: *const *const String,
    _step: usize,
    _update_direction: i32,
) -> *const *const u8 {
    &String::from("JFK").as_ptr()
}

#[no_mangle]
pub extern "C" fn render(maze: &MazeDescriptor) -> String {
    maze.to_string()
}

use std::fmt;

impl fmt::Display for MazeDescriptor {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let grid = self.fin.clone();
        write!(f, "{}*", "*---".repeat(grid[0].len()))?;

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

// #[cfg(test)]
// mod tests {
//     use crate::MazeDescriptor;
//     #[test]
//     fn it_works() {
//         let maze = MazeDescriptor::new(10, 10);
//         println!("{}", maze);
//         assert!(maze.to_string().len() == 10)
//     }
// }
