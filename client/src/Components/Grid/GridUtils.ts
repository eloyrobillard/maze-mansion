import { Dispatch, SetStateAction } from 'react';
import { FIRST_STEP } from './Grid';

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
  direction: string;
  setStepCount: Dispatch<SetStateAction<number>>;
  setDirection: Dispatch<SetStateAction<number>>;
  updateDir: number;
  LAST_STEP: number;
}

export function emptyMaze(width: number, height: number): string[][] {
  return Array.from({ length: height }, () => Array(width).fill('cell'));
}

export function handleUpdate({ direction, setStepCount, setDirection, updateDir, LAST_STEP }: UpdateArgs) {
  switch (direction) {
    case 'next': {
      if (updateDir > 0) {
        // NOTE prev + 2 test to synch stepCount back
        setStepCount((prev) => Math.min(prev + 1, LAST_STEP));
      } else {
        setDirection(1);
      }
      break;
    }

    case 'previous': {
      if (updateDir < 0) {
        // NOTE prev - 2 test to synch stepCount back
        setStepCount((prev) => prev - 2 <= FIRST_STEP ? FIRST_STEP : prev - 1);
      } else {
        setDirection(-1);
      }
      break;
    }

    case 'last':
      setStepCount(LAST_STEP);
      break;

    case 'first':
      setStepCount(FIRST_STEP);
      break;

    default: break;
  }
}