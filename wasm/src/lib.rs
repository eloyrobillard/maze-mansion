#[macro_use]
extern crate lazy_static;

mod maze_descriptor;
mod maze_utils;
mod rand;

use maze_descriptor::MazeDescriptor;
use maze_utils::*;
use std::sync::Mutex;

lazy_static! {
    static ref MAZE_DESCRIPTOR: Mutex<MazeDescriptor> = Mutex::new(MazeDescriptor::new(10, 10));
}

#[no_mangle]
pub extern "C" fn new_maze(width: usize, height: usize) {
    let maze = &mut MAZE_DESCRIPTOR.lock().unwrap();
    maze.reset(width, height);
}

#[no_mangle]
pub extern "C" fn get_height() -> usize {
    let maze = &mut MAZE_DESCRIPTOR.lock().unwrap();
    maze.height
}

#[no_mangle]
pub extern "C" fn get_width() -> usize {
    let maze = &mut MAZE_DESCRIPTOR.lock().unwrap();
    maze.width
}

#[no_mangle]
pub extern "C" fn get_steps_len() -> usize {
    let maze = &mut MAZE_DESCRIPTOR.lock().unwrap();
    maze.steps.len()
}

#[no_mangle]
pub extern "C" fn get_final() -> *const *const String {
    let maze = &mut MAZE_DESCRIPTOR.lock().unwrap();
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
    _classes: *const *const String,
    _step: usize,
    _update_direction: i32,
) -> *const *const u8 {
    let maze = &mut MAZE_DESCRIPTOR.lock().unwrap();
    &String::from("JFK").as_ptr()
}

#[no_mangle]
pub extern "C" fn render() -> String {
    let maze = &mut MAZE_DESCRIPTOR.lock().unwrap();
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

#[cfg(test)]
mod tests {
    use crate::{MAZE_DESCRIPTOR, get_width, get_height, new_maze, get_steps_len};
    #[test]
    fn it_works() {
        assert!(get_width() == 10);
        new_maze(20, 20);
        assert!(get_width() == 20);
        assert!(get_width() == get_height());
        assert!(get_steps_len() > 0);
        let maze = &mut MAZE_DESCRIPTOR.lock().unwrap();
        println!("{}\n{} steps", maze, maze.steps.len());
        assert!(maze.steps.len() == 100);
    }
}
