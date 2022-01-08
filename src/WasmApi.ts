import { MazeDescriptor } from 'rs_bg';

type WASMApi = {
	generateClasses: (maze: MazeDescriptor) => string[][];
	updateClasses: (
		maze: MazeDescriptor,
		classLists: string[][],
		stepIndex: number,
		updateDir: number
	) => string[][];
};

const WASM: WASMApi = {
	generateClasses: (maze) => {
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

	updateClasses: (maze, cls, change, dir) => {
		// Passing array to WebAssembly
		// LINK https://github.com/AssemblyScript/examples/blob/main/loader/tests/offset.js
		// return maze.update_classes(cls, change, dir);
		return [['']];
	}
};

export default WASM;