# Maze Mansion

A visualizer for maze generator algorithms. \
Currently supports the [recursive backtracker] algorithm, written in [AssemblyScript].  \
Serves as a follow-up to [another project](https://github.com/eloyrobillard/Legum-s-Halls) featuring a 3D maze created in Unity for the player to explore.

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

## Some more detail

``` mermaid
flowchart LR
A[Server] -->|WASM| B(Dashboard)
B --> C{Wasm API}
C -->|Grid| D[Commands]
C -->|Settings| E[SpeedSetting]
```

### Front End

The React front-end is split in 4 main components:

1. Dashboard
   2. Wasm API
3. Grid
   1. Commands
4. Settings

#### Dashboard

Loads the WebAssembly (WASM) API for maze construction, and passes it to Grid.

##### WASM API

The api sends the current CSS class lists (string[][]) with AssemblyScript's ＿pin method, which gives them an address in the WASM heap. The updated class lists are retrieved with ＿getArray and ＿getString.

#### Grid

Grid uses the WASM API to load CSS classes corresponding to the current maze instance (WASM side). These classes are applied to a grid of squares, and show:

- the current cell
- walls between cells
- unexplored cells

Grid also handles maze width/height changes by updating the maze instance (WASM side). Cells are resized accordingly.

##### Commands

The Commands sub-component contains:

- the ⏮️, ⏭️ buttons to jump to the initial or final state of the maze
- the ⏪, ⏩ buttons to step forward/backward one step
- the ⏯️️ to auto-step at the speed specified in Settings

#### Settings

Settings expose controls for:

- maze width/height resize
- maze update speed for auto-step mode

### Back End

#### Koa server

The Koa server delivers the WASM binary from `wasm/` over the `/maze` endpoint. This endpoint will be updated to `/maze/:mazeType` once I code other maze construction algorithms in.

#### wasm/

It's just a recursive backtracker implementation, but in AssemblyScript. It exports methods for:

- resetting the maze instance
- get CSS classes for the finished maze
- update current CSS classes with the next step

## AssemblyScript

AssemblyScript is built to look like TypeScript, but to use WASM types (i32, f64, etc). On the other hand, it is a young project, and the compiler [misses some features](https://www.assemblyscript.org/status.html#webassembly-features) that a JavaScript/TypeScript user would typically expect:

- no try-catch (throwing currently aborts the program)
- no closures (which makes .map or .reduce hard to use)
- no destructuring assignments
- etc...

Some other differences to know about:

- type `number` is the same as `f64`, which makes it incompatible with all integer types
- function return types must be specified
- ＿pin-ned resources must be ＿unpin-ned to allow garbage collection

## References

[Using setInterval in React (JP)](https://rios-studio.com/tech/react-hook%E3%81%AB%E3%81%8A%E3%81%91%E3%82%8Btimeout%E3%81%A8timeinterval%E3%80%90%E6%AD%A2%E3%81%BE%E3%82%89%E3%81%AA%E3%81%84%E3%83%BB%E9%87%8D%E8%A4%87%E3%81%99%E3%82%8B%E3%80%91)

[Getting the correct event target with .currentTarget](https://stackoverflow.com/questions/42634373/react-event-target-is-not-the-element-i-set-event-listener-on)
