import React, {
	useState,
	useEffect,
	useContext,
	Dispatch,
	SetStateAction
} from 'react';
import { SettingsContext } from '../Dashboard';

import Grid from './GridWasm';
import { MazeDescriptor, Api } from '../AScApi';
import './Maze.css';

export { FIRST_STATE } from './GridWasm';

export default function Maze ({ api }: { api: Api }) {
	const { mazeWidth, mazeHeight } = useContext(SettingsContext);

	const [ descriptor, setDescriptor ]: [
		MazeDescriptor,
		Dispatch<SetStateAction<MazeDescriptor>>
	] = useState(api.getMazeDescriptor(mazeWidth, mazeHeight));

	function handleReset () {
		setDescriptor(api.getMazeDescriptor(mazeWidth, mazeHeight));
	}

	// NOTE fetch descriptor and set to initial
	useEffect(
		() => {
			setDescriptor(api.getMazeDescriptor(mazeWidth, mazeHeight));
		},
		[ mazeWidth, mazeHeight, api ]
	);

	return (
		<div id='maze'>
			
			<Grid api={api} descriptor={descriptor} handleReset={handleReset}/>
		</div>
	);
}
