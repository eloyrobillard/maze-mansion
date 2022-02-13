import { Dispatch, SetStateAction } from 'react';
import { FIRST_STEP } from './Grid';
import { Api } from 'Types';

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

export function emptyMaze(width: number, height: number): string[][] {
  return Array.from({ length: height }, () => Array(width).fill('cell'));
}

type EdgeArgs = {
  mazeHeight: number;
  mazeWidth: number;
  api: Api;
  setDirection: (direction: number) => void;
  setIsPlaying: (isPlaying: boolean) => void;
  setClassLists: (classLists: string[][]) => void;
}

export function foundEdge(toFirst: boolean, { api, mazeHeight, mazeWidth, setDirection, setIsPlaying, setClassLists }: EdgeArgs) {
  if (toFirst) {
    setDirection(1);
    setClassLists(emptyMaze(mazeHeight, mazeWidth));
  } else {
    setDirection(-1);
    setClassLists(api.generateFinal());
  }
  setIsPlaying(false);
}

type UpdateArgs = {
  direction: string;
  setStepCount: Dispatch<SetStateAction<number>>;
  setDirection: Dispatch<SetStateAction<number>>;
  currentDirection: number;
  LAST_STEP: number;
}

export function handleUpdate({ direction, setStepCount, setDirection, currentDirection, LAST_STEP }: UpdateArgs) {
  switch (direction) {
    case 'next': {
      if (currentDirection > 0) {
        // NOTE prev + 2 test to synch stepCount back
        setStepCount((prev) => Math.min(prev + 1, LAST_STEP));
      } else {
        setDirection(1);
      }
      break;
    }

    case 'previous': {
      if (currentDirection < 0) {
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