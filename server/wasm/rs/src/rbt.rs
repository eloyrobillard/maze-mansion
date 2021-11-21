use super::utils;

pub fn recursive_backtracker(width: usize, height: usize) -> Vec::<Vec::<i32>> {
  let mut y = -1;
  let mut x = -1;
  let grid: Vec<Vec<i32>> = Vec::with_capacity(height).into_iter()
                                                    .map(|_: Vec<i32>| { y += 1; Vec::with_capacity(width).into_iter()
                                                    .map(|_: i32| { x += 1; utils::init_cell(x, y) }).collect() }).collect();
  let steps: Vec<Vec<i32>>;
  
  let toVisit = width * height;
  
  
  let mut visited = 1;

  while visited < toVisit {

  }

  grid
}