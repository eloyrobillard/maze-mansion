export type MazeDescriptor = {
	new: (width: number, height: number) => MazeDescriptor;
	get_height: () => number;
	get_width: () => number;
	get_final: () => number;
	get_steps_len: () => number;
}

export type WASMApi = {
	newMaze: (width: number, height: number) => void;
	getStepsLen: () => number;
	generateClasses: () => string[][];
	updateClasses: (
		classLists: string[][],
		stepIndex: number,
		updateDir: number
	) => string[][];
};

// @ts-ignore
export const formatApi = (maze: MazeDescriptor): WASMApi => {
	let curMaze: MazeDescriptor = maze.new(10, 10);
	return (() => {
		return {
			newMaze: (width: number, height: number) => curMaze = maze.new(width, height),
			getStepsLen: () => curMaze.get_steps_len(),
			generateClasses: () => {
				// LINK https://stackoverflow.com/questions/47529643/how-to-return-a-string-or-similar-from-rust-in-webassembly
				// LINK https://stackoverflow.com/questions/49014610/passing-a-javascript-string-to-a-rust-function-compiled-to-webassembly/49020435#49020435
				const height = curMaze.get_height();
				const width = curMaze.get_width();
				const ptr = curMaze.get_final();
				console.log('class lists generated');
				const classPtrs = Array.from(new Uint32Array(memory.buffer, ptr, height));
				return classPtrs.map((p) =>
					Array.from(new Uint32Array(memory.buffer, p, width)).map((s) => s + '')
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
