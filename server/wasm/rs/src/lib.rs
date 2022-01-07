mod rbt;
mod maze_utils;

use wasm_bindgen::prelude::*;

// When the `wee_alloc` feature is enabled, use `wee_alloc` as the global
// allocator.
// #[cfg(feature = "wee_alloc")]
// #[global_allocator]
// static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

#[wasm_bindgen]
extern {
    fn alert(s: &str);
}

#[wasm_bindgen]
pub fn greet() {
    alert("なんじゃこりゃあ!");
}

#[cfg(test)]
mod tests {
    use crate::rbt::Maze;
    #[test]
    fn it_works() {
        let maze = Maze::new(10, 10);
        assert!(maze.to_str().len() == 10)
    }
}
