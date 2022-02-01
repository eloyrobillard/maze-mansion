import { MazeDescriptor, WASMApi } from "Types";

const wasmImports = {
	memoryBase: 0,
	memory: new WebAssembly.Memory({ initial: 1 }),
};

export const getApi = async (): Promise<WASMApi> => {
	const { module, exports, memory } = await loadWasm();
	return (() => {
		return {
			newMaze: (width: number, height: number) => exports.create_maze(10, 10),
			getStepsLen: () => exports.get_steps_len(),
			generateClasses: () => {
				const height = exports.get_height();
				const width = exports.get_width();
				const ptr = exports.get_final();
				console.log('class lists generated');
				const classPtrs = Array.from(new Uint32Array(memory.buffer, ptr, height));
				return classPtrs.map((p) =>
					Array.from(new Uint32Array(memory.buffer, p, width)).map((s) => s + '')
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

// LINK https://stackoverflow.com/questions/47529643/how-to-return-a-string-or-similar-from-rust-in-webassembly
// LINK https://stackoverflow.com/questions/49014610/passing-a-javascript-string-to-a-rust-function-compiled-to-webassembly/49020435#49020435
type WasmModule = {
	module: WebAssembly.Module;
	exports: MazeDescriptor;
	memory: WebAssembly.Memory;
}
async function loadWasm(): Promise<WasmModule> {
	let { module, instance: { exports } } = await fetch('rs')
		.then(response => response.arrayBuffer())
		.then(bytes => WebAssembly.instantiate(bytes, { env: wasmImports }))
		.then(results => {
			console.log(results);
			return results;
		});
	const memory = exports.memory as WebAssembly.Memory;
	const { create_maze, get_height, get_width, get_final, get_steps_len } = exports;
	return {
		module,
		exports: {
			create_maze: (width: number, height: number) => (create_maze as CallableFunction)(width, height),
			get_width: get_width as () => number,
			get_height: get_height as () => number,
			get_final: get_final as () => number,
			get_steps_len: get_steps_len as () => number,
		},
		memory
	}
}