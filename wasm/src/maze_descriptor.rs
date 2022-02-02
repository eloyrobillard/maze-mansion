use crate::maze_utils::*;
use crate::rand::{gen};

pub struct MazeDescriptor {
  pub height: usize,
  pub width: usize,
  pub steps: Vec<Vec<i32>>,
  pub fin: Vec<Vec<i32>>,
}

impl MazeDescriptor {
  pub fn new(width: usize, height: usize) -> MazeDescriptor {
      let mut md = MazeDescriptor {
          width: width,
          height: width,
          steps: Vec::new(),
          fin: Vec::new(),
      };
      md.reset(width, height);
      md
  }

  pub fn reset(&mut self, width: usize, height: usize) {
      if width * height == 0 {
        return;
      }

      let invalid = -1;

      let mut grid: Vec<Vec<i32>> = init_grid(width, height);

      let mut cell_stack: Vec<i32> = Vec::new();

      let x: usize = gen(width-1);
      let y: usize = gen(height-1);

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

      self.width = width;
      self.height = height;
      self.steps = steps;
      self.fin = grid;
  }
}