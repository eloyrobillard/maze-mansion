import { Dispatch, SetStateAction } from 'react';
import { FIRST_STATE } from './Maze';

type ResizeArgs = {
  mazeWidth: number,
  mazeHeight: number,
  setCellWidth: Dispatch<SetStateAction<number>>,
  setCellHeight: Dispatch<SetStateAction<number>>
}

export function resizeMazeElements({ mazeWidth, mazeHeight, setCellWidth, setCellHeight }: ResizeArgs) {
  const gridContainer = document.getElementById('grid-container') as HTMLDivElement;
  // LINK https://javascript.programmer-reference.com/js-mazeWidth-mazeHeight/
  const gridConWidth = Math.floor(gridContainer.getBoundingClientRect().width);
  const gridConHeight = Math.floor(gridContainer.getBoundingClientRect().height)

  const min = Math.min(50, Math.floor(gridConWidth / mazeWidth), Math.floor(gridConHeight / mazeHeight));
  setCellWidth(min);
  setCellHeight(min);

  const grid = document.getElementById('grid') as HTMLDivElement;
  grid.style.width = `${min * mazeWidth}px`;
  grid.style.height = `${min * mazeHeight}px`;
}

type UpdateArgs = {
  dir: string;
  setStepCount: Dispatch<SetStateAction<number>>;
  setUpdateDir: Dispatch<SetStateAction<number>>;
  updateDir: number;
  LAST_STATE: number;
}

export function emptyMaze(width: number, height: number): string[][] {
  return Array.from({ length: height }, () => Array(width).fill('cell'));
}

export function handleUpdate({ dir, setStepCount, setUpdateDir, updateDir, LAST_STATE }: UpdateArgs) {
  // LINK currentTarget => https://stackoverflow.com/questions/42634373/react-event-target-is-not-the-element-i-set-event-listener-on
  switch (dir) {
    case 'next': {
      if (updateDir > 0) {
        // NOTE prev + 2 test to synch stepCount back
        setStepCount((prev) => Math.min(prev + 1, LAST_STATE));
      } else {
        setUpdateDir(1);
      }
      break;
    }

    case 'previous': {
      if (updateDir < 0) {
        // NOTE prev - 2 test to synch stepCount back
        setStepCount((prev) => prev - 2 <= FIRST_STATE ? FIRST_STATE : prev - 1);
      } else {
        setUpdateDir(-1);
      }
      break;
    }

    case 'last':
      setStepCount(LAST_STATE);
      break;

    case 'first':
      setStepCount(FIRST_STATE);
      break;

    default: break;
  }
}