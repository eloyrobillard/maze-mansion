import { Dispatch, SetStateAction } from 'react';
import { MazeDescriptor } from '../ApiTypes';
import ApiClient from '../MazeService';

type ResizeArgs = { 
  mazeWidth: number, 
  mazeHeight: number, 
  setCellWidth: Dispatch<SetStateAction<number>>, 
  setCellHeight: Dispatch<SetStateAction<number>>
}

export function resizeMazeElements({mazeWidth, mazeHeight, setCellWidth, setCellHeight}: ResizeArgs) {
  let gridContainer;

  return (() => {
    if (!gridContainer) {
      gridContainer = document.getElementById('grid-container') as HTMLDivElement;
    }
    // LINK https://javascript.programmer-reference.com/js-mazeWidth-mazeHeight/
    const gridConWidth = Math.floor(gridContainer.getBoundingClientRect().width);
    const gridConHeight = Math.floor(gridContainer.getBoundingClientRect().height)

    const min = Math.min(50, Math.floor(gridConWidth / mazeWidth), Math.floor(gridConHeight / mazeHeight));
    setCellWidth(min);
    setCellHeight(min);
  })();
}

type ResetArgs = {
  e: React.MouseEvent<HTMLButtonElement, MouseEvent>;
  setStepCount: Dispatch<SetStateAction<number>>;
  setDescriptor: Dispatch<SetStateAction<MazeDescriptor>>;
  FIRST_STATE: number;
  mazeWidth: number;
  mazeHeight: number;
}

export function handleReset ({e, setStepCount, setDescriptor, FIRST_STATE, mazeWidth, mazeHeight}: ResetArgs) {
  e.preventDefault();

  setStepCount(FIRST_STATE);
  setDescriptor(ApiClient.getMazeDescriptor(mazeWidth, mazeHeight));
}

type UpdateArgs = {
  e: React.MouseEvent<HTMLButtonElement, MouseEvent>;
  setStepCount: Dispatch<SetStateAction<number>>;
  FIRST_STATE: number;
  LAST_STATE: number;
}

export function handleUpdate ({e, setStepCount, FIRST_STATE, LAST_STATE}: UpdateArgs) {
  e.preventDefault();

  // LINK currentTarget => https://stackoverflow.com/questions/42634373/react-event-target-is-not-the-element-i-set-event-listener-on
  switch (e.currentTarget.id.split('-')[0]) {
    case 'next': {
      setStepCount((prev) => Math.min(prev + 1, LAST_STATE));
      break;
    }

    case 'previous': {
      setStepCount((prev) => Math.max(FIRST_STATE, prev - 1));
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