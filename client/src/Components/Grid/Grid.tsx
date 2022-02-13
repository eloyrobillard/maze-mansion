import { useState, useEffect, useCallback, useContext, useRef } from 'react';
import './Grid.css';
import { Api } from 'Types';
import { SettingsContext } from 'Contexts';
import Commands from './Commands/Commands';
import { foundEdge, handleUpdate, resizeMazeElements, emptyMaze } from './GridUtils';

// -1: empty grid, 0: first cell
export const FIRST_STEP = -1;

type Props = {
	api: Api;
};

export default function Grid({ api }: Props) {
	const { mazeWidth, mazeHeight, fps } = useContext(SettingsContext);

	const [cellWidth, setCellWidth] = useState(50);
	const [cellHeight, setCellHeight] = useState(50);

	const [stepCount, setStepCount] = useState(FIRST_STEP);
	const [updateDir, setDirection] = useState(1);

	const [LAST_STEP, setLastStep] = useState(0);
	const [classLists, setClassLists] = useState(
		emptyMaze(mazeWidth, mazeHeight)
	);

	/////////////////////////////////////
	// grid setup
	/////////////////////////////////////

	const handleReset = () => {
		resizeMazeElements({
			mazeWidth,
			mazeHeight,
			setCellWidth,
			setCellHeight
		});
		setStepCount(FIRST_STEP);
		api.newMazeDescriptor(mazeWidth, mazeHeight);
		setLastStep(api.getStepsLen());
	};

	// NOTE setup first maze
	useEffect(
		() => {
			handleReset();
		},
		[api]
	);

	/////////////////////////////////////

	/////////////////////////////////////
	// setup auto-step interval
	/////////////////////////////////////

	const intervalRef = useRef<NodeJS.Timeout | null>(null);
	const [isPlaying, setIsPlaying] = useState(false);

	const play = useCallback(
		() => {
			if (intervalRef.current !== null) {
				// NOTE fps change = interval speed change
				clearInterval(intervalRef.current);
			}
			intervalRef.current = setInterval(() => {
				handleUpdate({
					direction: updateDir > 0 ? 'next' : 'previous',
					setStepCount,
					setDirection,
					updateDir,
					LAST_STEP
				});
			}, Math.floor(1000 / fps));
		},
		[updateDir, fps, LAST_STEP]
	);

	const pause = useCallback(() => {
		if (intervalRef.current === null) {
			return;
		}
		clearInterval(intervalRef.current);
		intervalRef.current = null;
	}, []);

	/////////////////////////////////////

	/////////////////////////////////////
	// update auto-step play/pause
	/////////////////////////////////////

	const togglePlay = () => {
		if (!isPlaying) {
			return setIsPlaying(true);
		}
		return setIsPlaying(false);
	};

	// NOTE play/pause on push play button
	useEffect(
		() => {
			if (isPlaying) {
				return play();
			}
			return pause();
		},
		[isPlaying, play, pause]
	);

	/////////////////////////////////////

	// NOTE step through maze, forward and backward
	useEffect(
		() => {
			if (stepCount === FIRST_STEP || stepCount === LAST_STEP) {
				foundEdge(stepCount === FIRST_STEP, {
					api,
					mazeHeight,
					mazeWidth,
					setDirection,
					setClassLists,
					setIsPlaying
				});
			} else {
				setClassLists((cls: string[][]) =>
					api.updateClasses(cls, stepCount, updateDir)
				);
			}
		},
		[mazeHeight, mazeWidth, stepCount, updateDir, LAST_STEP, api]
	);

	return (
		<div id='maze'>
			<Commands
				handleUpdate={(e) => {
					e.preventDefault();
					handleUpdate({
						// NOTE name of button is direction
						direction: e.currentTarget.id.split('-')[0],
						setStepCount,
						setDirection,
						updateDir,
						LAST_STEP
					});
				}}
				handleReset={handleReset}
				togglePlay={togglePlay}
			/>
			<div id='grid-container'>
				<div id='grid'>
					{classLists
						.reduce((acc, row) => acc.concat(row), [])
						.map((list, i) => {
							return (
								<div
									key={i}
									style={{ width: cellWidth + 'px', height: cellHeight + 'px' }}
									title={`x: ${i % mazeWidth}\ny: ${Math.floor(i / mazeWidth)}`}
									className={list}
								/>
							);
						})}
				</div>
			</div>
		</div>
	);
}
