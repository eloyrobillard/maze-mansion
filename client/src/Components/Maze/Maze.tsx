import {
	useEffect,
	useContext,
} from 'react';
import { SettingsContext } from 'Dashboard';

import Grid from './Grid';
import { Api } from 'Types';
import './Maze.css';

export { FIRST_STATE } from './Grid';

export default function Maze({ api }: { api: Api }) {
	return (
		<div id='maze'>
			<Grid api={api} />
		</div>
	);
}
