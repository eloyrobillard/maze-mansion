import React, {
	useState,
	useEffect,
	useCallback,
	useContext,
	useRef,
} from 'react';
import { Api } from 'Types';
import { SettingsContext } from 'Dashboard';
import Commands from './Commands/Commands';
import { handleUpdate, resizeMazeElements } from './MazeUtils';

type Props = {
	api: Api;
}

export const FIRST_STATE = -1;

export default function Grid({ api }: Props) {
	const { mazeWidth, mazeHeight, fps } = useContext(SettingsContext);

	const [cellWidth, setCellWidth] = useState(50);
	const [cellHeight, setCellHeight] = useState(50);

	const [stepCount, setStepCount] = useState(FIRST_STATE);
	const [updateDir, setUpdateDir] = useState(1);

	const [LAST_STATE, setLastState] = useState(0);
	const [classLists, setClassLists] = useState([['']]);

	function handleReset() {
		api.newMazeDescriptor(mazeWidth, mazeHeight);
		setLastState(api.getStepsLen());
	}

	// NOTE update last state index
	useEffect(
		() => {
			setLastState(api.getStepsLen());
		},
		[api, mazeHeight, mazeWidth]
	);

	// LINK https://rios-studio.com/tech/react-hook%E3%81%AB%E3%81%8A%E3%81%91%E3%82%8Btimeout%E3%81%A8timeinterval%E3%80%90%E6%AD%A2%E3%81%BE%E3%82%89%E3%81%AA%E3%81%84%E3%83%BB%E9%87%8D%E8%A4%87%E3%81%99%E3%82%8B%E3%80%91
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
					dir: updateDir > 0 ? 'next' : 'previous',
					setStepCount,
					setUpdateDir,
					updateDir,
					LAST_STATE
				});
			}, Math.floor(1000 / fps));
		},
		[updateDir, fps, LAST_STATE]
	);

	const pause = useCallback(() => {
		if (intervalRef.current === null) {
			return;
		}
		clearInterval(intervalRef.current);
		intervalRef.current = null;
	}, []);

	// NOTE play/pause on push play button AND 手動的に toggle した時
	useEffect(
		() => {
			if (isPlaying) {
				return play();
			}
			return pause();
		},
		[isPlaying, play, pause]
	);

	// NOTE pause automatically when at the end
	useEffect(
		() => {
			if (stepCount === LAST_STATE || stepCount === FIRST_STATE) {
				setIsPlaying(false);
			}
		},
		[stepCount, LAST_STATE]
	);

	function togglePlay() {
		if (!isPlaying) {
			return setIsPlaying(true);
		}
		return setIsPlaying(false);
	}

	// NOTE update dir on reaching either end
	useEffect(
		() => {
			if (stepCount > FIRST_STATE && stepCount < LAST_STATE) {
				return;
			} else if (stepCount === FIRST_STATE) {
				setUpdateDir(1);
			} else {
				setUpdateDir(-1);
			}
		},
		[stepCount, LAST_STATE]
	);

	useEffect(
		() => {
			resizeMazeElements({
				mazeWidth,
				mazeHeight,
				setCellWidth,
				setCellHeight
			});
		},
		[mazeWidth, mazeHeight]
	);

	useEffect(
		() => {
			let grid;
			return (() => {
				if (!grid) {
					grid = document.getElementById('grid') as HTMLDivElement;
				}
				grid.style.width = `${cellWidth * mazeWidth}px`;
				grid.style.height = `${cellHeight * mazeHeight}px`;
			})();
		},
		[cellWidth, cellHeight, mazeWidth, mazeHeight]
	);

	// NOTE handle maze update (front AND back)
	useEffect(
		() => {
			if (stepCount === FIRST_STATE) {
				setClassLists(Array.from({ length: mazeHeight }, () => Array(mazeWidth).fill('cell')));
			} else if (stepCount === LAST_STATE) {
				setClassLists(api.generateFinal());
			} else {
				setClassLists((cls: string[][]) =>
					api.updateClasses(
						cls,
						stepCount,
						updateDir
					)
				);
			}
		},
		[mazeHeight, mazeWidth, stepCount, updateDir, LAST_STATE, api]
	);

	return (
		<>
			<Commands
				handleUpdate={(e) => {
					e.preventDefault();
					handleUpdate({
						dir: e.currentTarget.id.split('-')[0],
						setStepCount,
						setUpdateDir,
						updateDir,
						LAST_STATE
					});
				}}
				handleReset={() => {
					setStepCount(FIRST_STATE);
					handleReset();
				}}
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
		</>
	);
}
