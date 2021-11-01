import { Dispatch, SetStateAction } from 'react';
import { MazeDescriptor } from '../ApiTypes';
import ApiClient from '../ApiService';

export function getCellDimensions() {
  let cellWidth, cellHeight;
  return (() => {
    if (!(cellWidth && cellHeight)) {
      const grid = document.getElementById('grid') as HTMLDivElement;
      const cell = document.createElement('div');
      cell.className = 'cell';
      
      // NOTE force style instantiation
      grid.appendChild(cell);
      cellWidth = cell.getBoundingClientRect().width;
      cellHeight = cell.getBoundingClientRect().height;
      grid.removeChild(cell);
    }

    return { cellWidth, cellHeight };
  })()
}

type ResetArgs = {
  e: React.MouseEvent<HTMLButtonElement, MouseEvent>;
  setStepCount: Dispatch<SetStateAction<number>>;
  setDescriptor: Dispatch<SetStateAction<MazeDescriptor>>;
  firstStep: number;
  width: number;
  height: number;
}

export function handleReset ({e, setStepCount, setDescriptor, firstStep, width, height}: ResetArgs) {
  e.preventDefault();

  setStepCount(firstStep);
  setDescriptor(ApiClient.getMazeDescriptor(width, height));
}

type UpdateArgs = {
  e: React.MouseEvent<HTMLButtonElement, MouseEvent>;
  setStepCount: Dispatch<SetStateAction<number>>;
  descriptor: MazeDescriptor;
  firstStep: number;
}

export function handleUpdate ({e, setStepCount, descriptor, firstStep}: UpdateArgs) {
  e.preventDefault();

  // LINK currentTarget => https://stackoverflow.com/questions/42634373/react-event-target-is-not-the-element-i-set-event-listener-on
  switch (e.currentTarget.id.split('-')[0]) {
    case 'next':
      setStepCount((prev) => Math.min(prev + 1, descriptor.steps.length));
      break;

    case 'previous': 
      setStepCount((prev) => Math.max(firstStep, prev - 1));
      break;

    case 'last':
      setStepCount(descriptor.steps.length);
      break;

    case 'first':
      setStepCount(firstStep);
      break;

    default: break;
  }
}