import React, {
	useState,
	useEffect,
	useContext,
} from 'react';
import { SettingsContext } from 'Dashboard';

import Grid from './Grid';
import { WASMApi } from 'Types';
import './Maze.css';

export { FIRST_STATE } from './Grid';

export default function Maze({ api }: { api: WASMApi }) {
	const { mazeWidth, mazeHeight } = useContext(SettingsContext);
	const [classes, setClasses] = useState(Array(mazeHeight).map(() => Array(mazeWidth).fill('cell')));

	function handleReset() {
		setClasses(Array(mazeHeight).map(() => Array(mazeWidth).fill('cell')));
	}

	// NOTE fetch descriptor and set to initial
	useEffect(
		() => {
			api.newMaze(mazeWidth, mazeHeight);
		},
		[mazeWidth, mazeHeight, api]
	);

	return (
		<div id='maze'>

			<Grid api={api} classes={classes} handleReset={handleReset} />
		</div>
	);
}
