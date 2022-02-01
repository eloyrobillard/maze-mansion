import { MazeDescriptor, WASMApi } from "Types";

const wasmImports = {
	memoryBase: 0,
	memory: new WebAssembly.Memory({ initial: 1 }),
};

export const getApi = async (): Promise<WASMApi> => {
	const {module, instance, memory} = await loadWasm();
	let maze: MazeDescriptor;
	return (() => {
		return {
			newMaze: (width: number, height: number) => maze.new(10, 10),
			getStepsLen: () => maze.get_steps_len(),
			generateClasses: () => {
				// LINK https://stackoverflow.com/questions/47529643/how-to-return-a-string-or-similar-from-rust-in-webassembly
				// LINK https://stackoverflow.com/questions/49014610/passing-a-javascript-string-to-a-rust-function-compiled-to-webassembly/49020435#49020435
				const height = maze.get_height();
				const width = maze.get_width();
				const ptr = maze.get_final();
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

async function loadWasm() {
	let { module, instance } = await fetch('rs')
		.then(response => response.arrayBuffer())
		.then(bytes => WebAssembly.instantiate(bytes, { env: wasmImports }))
		.then(results => {
			console.log(results);
			return results;
		});
	const memory = instance.exports.memory as WebAssembly.Memory;
	return {
		module, 
		instance,
		memory
	}
}