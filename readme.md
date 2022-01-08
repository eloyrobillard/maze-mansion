# Maze Mansion

A visualizer for maze generator algorithms. \
Currently supports the [recursive backtracker] algorithm, written in [Rust].  \
Serves as a follow-up to [this project](https://github.com/eloyrobillard/Legum-s-Halls) featuring a 3D explorable maze created with Unity.

[recursive backtracker]: https://www.wikiwand.com/en/Maze_generation_algorithm#/Randomized_depth-first_search

***

## Getting Started

1. Do the traditional `npm i` in `client/`.
2. Go to `wasm/` and run `wasm-pack build`.
3. From `client/` run `npm start`.

***

## Tech stack

- TypeScript
- React
- WebAssembly with [Rust]
