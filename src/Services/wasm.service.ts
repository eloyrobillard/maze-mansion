import { MazeDescriptor, WASMApi } from "Types";

let mod: WebAssembly.Module;
let mem: WebAssembly.Memory;
let instance: WebAssembly.Instance;

const wasmImports = {
	memoryBase: 0,
	tableBase: 0,
	memory: new WebAssembly.Memory({ initial: 256 }),
	table: new WebAssembly.Table({ initial: 0, element: 'anyfunc' })
};

export const getApi = async (): Promise<WASMApi> => {
	fetch('rs')
		.then(response => response.arrayBuffer())
		.then(bytes => WebAssembly.instantiate(bytes, { env: wasmImports }))
		.then(results => {
			return results.instance.exports;
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

			updateClasses: (cls: string[][], change: number, dir: number) => {
				// Passing array to WebAssembly
				// LINK https://github.com/AssemblyScript/examples/blob/main/loader/tests/offset.js
				// return maze.update_classes(cls, change, dir);
				return [['']];
			}
		}
	})();
}