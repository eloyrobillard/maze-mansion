mod rbt;
mod utils;
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

#[wasm_bindgen]
pub fn recursive_backtracker(width: usize, height: usize) -> String {
    rbt::rb_str(width, height)
}

#[cfg(test)]
mod tests {
    #[test]
    fn it_works() {
        let grid = super::recursive_backtracker(10, 10);
        assert!(grid.len() == 10)
    }
}
