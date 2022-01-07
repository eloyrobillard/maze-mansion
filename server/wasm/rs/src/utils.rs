use super::rbt;

pub fn recursive_backtracker(width: usize, height: usize) -> String {
    let maze = rbt::recursive_backtracker(width, height);
    print_maze(maze[2])
}

fn print_maze(grid: Vec<Vec<i32>>) -> String {
    let res = format!("{}*", "*---".repeat(grid[0].len()));
    let grid = grid;

    for y in 0..grid.len() {
        let mut mid = String::from("\n|");
        let mut bot = String::from("*");

        for x in 0..grid[0].len() {
            let mut new_right = String::from("    ");
            let mut new_bot = String::from("   *");
            let neighbors = grid[y][x].neighborData.neighbors;
            if neighbors.has("bottom") {
                new_bot = String::from("---*");
            }
            if neighbors.has("right") {
                new_right = String::from("   |");
            }

            if y + 1 < grid.len() {
                let neighs_bot = grid[y + 1][x].neighborData.neighbors;
                if neighs_bot.has("top") {
                    new_bot = String::from("---*");
                }

                bot = format!("{}{}", bot, new_bot);
            }
            if x + 1 < grid[0].len() {
                let neighborsRight = grid[y][x + 1].neighborData.neighbors;
                if neighborsRight.has("left") {
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
