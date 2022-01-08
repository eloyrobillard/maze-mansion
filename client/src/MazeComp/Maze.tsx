import React, {
	useState,
	useEffect,
	useContext,
	Dispatch,
	SetStateAction
} from 'react';
import { SettingsContext } from 'Dashboard';

import Grid from './Grid';
import { MazeDescriptor } from 'rs';
import './Maze.css';

export { FIRST_STATE } from './Grid';

export default function Maze () {
	const { mazeWidth, mazeHeight } = useContext(SettingsContext);
	const [ descriptor, setDescriptor ]: [
		MazeDescriptor,
		Dispatch<SetStateAction<MazeDescriptor>>
	] = useState(MazeDescriptor.new(mazeWidth, mazeHeight));

	function handleReset () {
		setDescriptor(MazeDescriptor.new(mazeWidth, mazeHeight));
	}

	// NOTE fetch descriptor and set to initial
	useEffect(
		() => {
			setDescriptor(MazeDescriptor.new(mazeWidth, mazeHeight));
		},
		[ mazeWidth, mazeHeight ]
	);

	return (
		<div id='maze'>
			
			<Grid descriptor={descriptor} handleReset={handleReset}/>
		</div>
	);
}
