use super::maze_utils::{read_neighbors, has_neighbor};

pub fn print_maze(grid: &Vec<Vec<i32>>) -> String {
    let mut res = format!("{}*", "*---".repeat(grid[0].len()));
    let grid = grid;

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
    return res;
}
