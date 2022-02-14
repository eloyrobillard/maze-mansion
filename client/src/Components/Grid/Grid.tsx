import { foundEdge, handleUpdate, resizeMazeElements, emptyMaze } from './GridUtils';
import { useState, useEffect, useCallback, useContext, useRef } from 'react';
import { SettingsContext } from 'Contexts';
import Commands from './Commands/Commands';
import { Api } from 'Types';
import './Grid.css';

// -1: empty grid, 0: first cell
export const FIRST_STEP = -1;

export default function Grid({ api }: { api: Api }) {
	const { mazeWidth, mazeHeight, fps } = useContext(SettingsContext);

	const [cellWidth, setCellWidth] = useState(50);
	const [cellHeight, setCellHeight] = useState(50);

	const [stepCount, setStepCount] = useState(FIRST_STEP);
	const [direction, setDirection] = useState(1);

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
				clearInterval(intervalRef.current);
			}
			intervalRef.current = setInterval(() => {
				handleUpdate({
					direction: direction > 0 ? 'next' : 'previous',
					setStepCount,
					setDirection,
					currentDirection: direction,
					LAST_STEP
				});
			}, Math.floor(1000 / fps));
		},
		[direction, fps, LAST_STEP]
	);

	const pause = useCallback(() => {
		if (intervalRef.current === null) {
			return;
		}
		clearInterval(intervalRef.current);
		intervalRef.current = null;
	}, []);

	const togglePlay = () => {
		if (!isPlaying) {
			play();
			return setIsPlaying(true);
		}
		pause();
		return setIsPlaying(false);
	};

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
					api.updateClasses(cls, stepCount, direction)
				);
			}
		},
		[mazeHeight, mazeWidth, stepCount, direction, LAST_STEP, api]
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
						currentDirection: direction,
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
