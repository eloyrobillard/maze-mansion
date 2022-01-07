# Maze Mansion

A visualizer for maze generator algorithms. \
Currently supports the [recursive backtracker] algorithm, written in [AssemblyScript].  \
Serves as a follow-up to [this project](https://github.com/eloyrobillard/Legum-s-Halls) featuring a 3D explorable maze created with Unity.

[recursive backtracker]: https://www.wikiwand.com/en/Maze_generation_algorithm#/Randomized_depth-first_search
[AssemblyScript]: https://www.assemblyscript.org/

***

## Getting Started

1. Do the traditional `npm i` in `client/` and `server/`.
2. Go to `server/wasm/asc` and run `npm run asbuild`.
3. From `client/` or `server/`, run `npm run dev`.
   > if you do not have [nodemon] installed globally, make sure to `npm i --save-dev nodemon` from `server/`.

[nodemon]: https://nodemon.io/

***

## Tech stack

### _Front End_

- React
- WebAssembly through [AssemblyScript]

### _Back End_

- mongoose
- koa
