import { Dispatch, SetStateAction } from 'react';
import { MazeDescriptor } from '../ApiTypes';
import ApiClient from '../MazeService';

// function getCellDimensions() {
//   let cellWidth, cellHeight;
//   return (() => {
//     if (!(cellWidth && cellHeight)) {
//       const grid = document.getElementById('grid') as HTMLDivElement;
//       const cell = document.createElement('div');
//       cell.className = 'cell';
      
//       // NOTE force style instantiation
//       grid.appendChild(cell);
//       cellWidth = cell.getBoundingClientRect().width;
//       cellHeight = cell.getBoundingClientRect().height;
//       grid.removeChild(cell);
//     }

//     return { cellWidth, cellHeight };
//   })();
// }

export function resizeMazeElements(width: number, height: number) {
  // const { cellWidth, cellHeight } = getCellDimensions();

  // let grid, 
  //     mazeDiv, 
  //     mazeWidth: number, 
  //     mazeHeight: number;
  return (() => {
    // if (!grid || !mazeDiv) {
    //   grid = document.getElementById('grid') as HTMLDivElement;
    //   mazeDiv = document.getElementById('maze') as HTMLDivElement;
    //   // LINK https://javascript.programmer-reference.com/js-width-height/
    //   mazeWidth = Math.floor(mazeDiv.getBoundingClientRect().width);
    //   mazeHeight = Math.floor(mazeDiv.getBoundingClientRect().height);
    // }

    // NOTE minWidth/Height to avoid pushing button commands out of div
    // TODO set cellSize down when too many
    // if (cellWidth * width > (mazeWidth! - cellWidth)) {
    //   mazeDiv.style.minWidth = `${cellWidth * (width + 1)}px`;
    // } else if (width <= 10) {
    //   mazeDiv.style.minWidth = `${cellWidth * 11}px`;
    // }
    // if (cellHeight * height > (mazeHeight! - cellHeight)) {
    //   mazeDiv.style.minHeight = `${cellHeight * (height + 1)}px`;
    // } else if (height <= 10) {
    //   mazeDiv.style.minHeight = `${cellHeight * 11}px`;
    // }

    // if (cellWidth * width < (gridWidth - cellWidth)) {
    // grid.style.width = `${cellWidth * width}px`;
    // }
    // if (cellHeight * height < (gridHeight - cellHeight)) {
    // grid.style.height = `${cellHeight * height}px`;
  })();
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
  updateDir: number;
  setUpdateDir: Dispatch<SetStateAction<number>>;
  descriptor: MazeDescriptor;
  firstStep: number;
}

export function handleUpdate ({e, setStepCount, updateDir, setUpdateDir, descriptor, firstStep}: UpdateArgs) {
  e.preventDefault();

  // LINK currentTarget => https://stackoverflow.com/questions/42634373/react-event-target-is-not-the-element-i-set-event-listener-on
  switch (e.currentTarget.id.split('-')[0]) {
    case 'next': {
      // NOTE doubling setUpdateDir cause may or may not update before if is evaluated
      if (updateDir > 0) {
        setUpdateDir(1);
        setStepCount((prev) => Math.min(prev + 1, descriptor.steps.length));
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
        setStepCount((prev) => Math.max(firstStep, prev - 1));
      } else {
        // NOTE if switching updateDir, stay in place once to undo previous change
        setUpdateDir(-1);
      }
      break;
    }

    case 'last':
      setStepCount(descriptor.steps.length);
      break;

    case 'first':
      setStepCount(firstStep);
      break;

    default: break;
  }
}