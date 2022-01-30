import { MazeDescriptor, WASMApi } from "Types";

let mod: WebAssembly.Module;
let mem: WebAssembly.Memory;
let instance: WebAssembly.Instance;

// @ts-ignore
export const getApi = (): WASMApi => {
	fetch('maze-mansion-rbt-rs/rs_bg.wasm')
		.then(response => response.arrayBuffer())
		.then(bytes => {
			mod = new WebAssembly.Module(bytes);
			mem = new WebAssembly.Memory({ initial: 1, maximum: 10 });
			instance = new WebAssembly.Instance(mod);
			console.log(mod, mem, instance);
		});
	let curMaze: MazeDescriptor/*  = maze.new(10, 10) */;
	return (() => {
		return {
			newMaze: (width: number, height: number) => curMaze/*  = maze.new(width, height) */,
			getStepsLen: () => curMaze.get_steps_len(),
			generateClasses: () => {
				// LINK https://stackoverflow.com/questions/47529643/how-to-return-a-string-or-similar-from-rust-in-webassembly
				// LINK https://stackoverflow.com/questions/49014610/passing-a-javascript-string-to-a-rust-function-compiled-to-webassembly/49020435#49020435
				const height = curMaze.get_height();
				const width = curMaze.get_width();
				const ptr = curMaze.get_final();
				console.log('class lists generated');
				const classPtrs = Array.from(new Uint32Array(mem.buffer, ptr, height));
				return classPtrs.map((p) =>
					Array.from(new Uint32Array(mem.buffer, p, width)).map((s) => s + '')
				);
			},

			updateClasses: (cls, change, dir) => {
				// Passing array to WebAssembly
				// LINK https://github.com/AssemblyScript/examples/blob/main/loader/tests/offset.js
				// return maze.update_classes(cls, change, dir);
				return [['']];
			}
		}
	})();
}

// // LINK_TO https://maffydub.wordpress.com/2017/12/02/getting-started-with-rust-webassembly/
// const wasmReadStrFromMemory = (ptr, length) => {
//   const buf = new Uint8Array(WASM_ASTAR.wasmModule.memory.buffer, ptr, length);
//   return new TextDecoder('utf8').decode(buf);
// };