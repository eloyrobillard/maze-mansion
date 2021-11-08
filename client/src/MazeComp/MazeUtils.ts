import { Dispatch, SetStateAction } from 'react';
import { MazeDescriptor } from '../ApiTypes';
import { FIRST_STATE } from './Maze';
import ApiClient from '../JsApi';

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
  setStepCount: Dispatch<SetStateAction<number>>;
  setDescriptor: Dispatch<SetStateAction<MazeDescriptor>>;
  mazeWidth: number;
  mazeHeight: number;
}

export function handleReset({setStepCount, setDescriptor, mazeWidth, mazeHeight}: ResetArgs) {
  setStepCount(FIRST_STATE);
  setDescriptor(ApiClient.getMazeDescriptor(mazeWidth, mazeHeight));
}

type UpdateArgs = {
  dir: string;
  setStepCount: Dispatch<SetStateAction<number>>;
  setUpdateDir: Dispatch<SetStateAction<number>>;
  updateDir: number;
  LAST_STATE: number;
}

export function handleUpdate ({dir, setStepCount, setUpdateDir, updateDir, LAST_STATE}: UpdateArgs) {
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