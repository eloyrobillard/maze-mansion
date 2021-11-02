import { Dispatch, SetStateAction } from 'react';
import { MazeDescriptor } from '../ApiTypes';
import ApiClient from '../MazeService';

type ResizeArgs = { 
  width: number, 
  height: number, 
  setCellWidth: Dispatch<SetStateAction<number>>, 
  setCellHeight: Dispatch<SetStateAction<number>>
}

export function resizeMazeElements({width, height, setCellWidth, setCellHeight}: ResizeArgs) {
  let gridContainer;

  return (() => {
    if (!gridContainer) {
      gridContainer = document.getElementById('grid-container') as HTMLDivElement;
    }
    // LINK https://javascript.programmer-reference.com/js-width-height/
    const gridConWidth = Math.floor(gridContainer.getBoundingClientRect().width);
    const gridConHeight = Math.floor(gridContainer.getBoundingClientRect().height)

    const min = Math.min(50, Math.floor(gridConWidth / width), Math.floor(gridConHeight / height));
    setCellWidth(min);
    setCellHeight(min);
  })();
}

type ResetArgs = {
  e: React.MouseEvent<HTMLButtonElement, MouseEvent>;
  setStepCount: Dispatch<SetStateAction<number>>;
  setDescriptor: Dispatch<SetStateAction<MazeDescriptor>>;
  FIRST_STATE: number;
  width: number;
  height: number;
}

export function handleReset ({e, setStepCount, setDescriptor, FIRST_STATE, width, height}: ResetArgs) {
  e.preventDefault();

  setStepCount(FIRST_STATE);
  setDescriptor(ApiClient.getMazeDescriptor(width, height));
}

type UpdateArgs = {
  e: React.MouseEvent<HTMLButtonElement, MouseEvent>;
  setStepCount: Dispatch<SetStateAction<number>>;
  updateDir: number;
  setUpdateDir: Dispatch<SetStateAction<number>>;
  FIRST_STATE: number;
  LAST_STATE: number;
}

export function handleUpdate ({e, setStepCount, updateDir, setUpdateDir, FIRST_STATE, LAST_STATE}: UpdateArgs) {
  e.preventDefault();

  // LINK currentTarget => https://stackoverflow.com/questions/42634373/react-event-target-is-not-the-element-i-set-event-listener-on
  switch (e.currentTarget.id.split('-')[0]) {
    case 'next': {
      // NOTE doubling setUpdateDir cause may or may not update before if is evaluated
      if (updateDir > 0) {
        setUpdateDir(1);
        setStepCount((prev) => Math.min(prev + 1, LAST_STATE));
      } else {
        // NOTE if switching updateDir, stay in place once to undo previous change
        setUpdateDir(1);
      }
      break;
    }

    case 'previous': {
      // NOTE doubling setUpdateDir cause may or may not update before if is evaluated
      if (updateDir < 0) {
        setUpdateDir(-1);
        setStepCount((prev) => Math.max(FIRST_STATE, prev - 1));
      } else {
        // NOTE if switching updateDir, stay in place once to undo previous change
        setUpdateDir(-1);
      }
      break;
    }

    case 'last':
      setUpdateDir(-1);
      setStepCount(LAST_STATE);
      break;

    case 'first':
      setUpdateDir(1);
      setStepCount(FIRST_STATE);
      break;

    default: break;
  }
}