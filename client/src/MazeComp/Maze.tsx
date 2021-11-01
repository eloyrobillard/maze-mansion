import React, { useState, useEffect } from 'react';
import ApiClient from '../ApiService';
import { MazeDescriptor }  from '../ApiTypes';
import { handleReset, handleUpdate, getCellDimensions } from './MazeUtils';
import * as M from '../recursive_backtracker/maze';
import './Maze.css';

type CommandProps = { 
  handleUpdate: (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) => void;
  handleReset: (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) => void;
  setStepCount: React.Dispatch<React.SetStateAction<number>>;
  maxSteps: number;
}


function Commands({handleUpdate, handleReset, setStepCount, maxSteps}: CommandProps) {
  // TODO implement auto-play
  return (
    <div id="commands">
      <div id="player-commands">
        <button id="first-state" onClick={handleUpdate} title="最初へ移動">⏮️</button>
        <button id="previous-state" onClick={handleUpdate} title="前へ移動">⏪</button>
        <button id="toggle-play" title="再生">⏯️</button>
        <button id="next-state" onClick={handleUpdate} title="次へ移動">⏩</button>
        <button id="last-state" onClick={handleUpdate} title="最後へ移動">⏭️</button>
      </div>
      <button type="submit" onClick={handleReset} title="新しい迷路">新しい迷路</button>
    </div>
  )
}

const FIRST_STATE = 0;
const mockDescriptor: MazeDescriptor = {
  initial: new M.Maze(0, 0),
  steps: [{ prev: null, prevNeighs: null, current: null, currentNeighs: null }],
  final: new M.Maze(0, 0)
}

export default function Maze({width, height, fps}: {width: number, height: number, fps: number}) {
  const [classLists, setClassLists]: [string[][], React.Dispatch<React.SetStateAction<string[][]>>] = useState([['']]);
  const [descriptor, setDescriptor]: [MazeDescriptor, React.Dispatch<React.SetStateAction<MazeDescriptor>>] = useState(mockDescriptor);

  // TODO implement backwards maze steps
  const [stepCount, setStepCount]: [number, React.Dispatch<React.SetStateAction<number>>] = useState(FIRST_STATE);  
  
  useEffect(() => {
    const { cellWidth, cellHeight } = getCellDimensions();

    let grid, 
        mazeDiv, 
        mazeWidth: number, 
        mazeHeight: number;
    return (() => {
      if (!grid || !mazeDiv) {
        grid = document.getElementById('grid') as HTMLDivElement;
        mazeDiv = document.getElementById('maze') as HTMLDivElement;
        // LINK https://javascript.programmer-reference.com/js-width-height/
        mazeWidth = Math.floor(mazeDiv.getBoundingClientRect().width);
        mazeHeight = Math.floor(mazeDiv.getBoundingClientRect().height);
      }

      // NOTE minWidth/Height to avoid pushing button commands out of div
      // TODO set commands/settings position: fixed when maze becomes too large
      if (cellWidth * width > (mazeWidth! - cellWidth)) {
        mazeDiv.style.minWidth = `${cellWidth * (width + 1)}px`;
      } else if (width <= 10) {
        mazeDiv.style.minWidth = `${cellWidth * 11}px`;
      }
      if (cellHeight * height > (mazeHeight! - cellHeight)) {
        mazeDiv.style.minHeight = `${cellHeight * (height + 1)}px`;
      } else if (height <= 10) {
        mazeDiv.style.minHeight = `${cellHeight * 11}px`;
      }

      // if (cellWidth * width < (gridWidth - cellWidth)) {
      grid.style.width = `${cellWidth * width}px`;
      // }
      // if (cellHeight * height < (gridHeight - cellHeight)) {
      grid.style.height = `${cellHeight * height}px`;
    })();
    // }
    // return grid;
  }, [width, height])

  

  // NOTE fetch descriptor
  useEffect(() => {
    setDescriptor(ApiClient.getMazeDescriptor(width, height));
  }, [width, height]);
  
  useEffect(() => {
    console.log(stepCount)
    if (stepCount === FIRST_STATE) {
      setClassLists(ApiClient.mazeToClassLists(descriptor!.initial));
    } else if (stepCount === descriptor.steps.length) {
      setClassLists(ApiClient.mazeToClassLists(descriptor!.final));
    } else {
      setClassLists((cls: string[][]) => ApiClient.updateMaze(descriptor.initial, cls, descriptor.steps[stepCount]));
    }
  }, [stepCount, descriptor])

  return (
    <div id="maze">
      <div id="grid-container">
        <div id="grid">
          {classLists.reduce((acc, row) => acc.concat(row), []).map((list, i) => <div key={i} 
            onClick={() => console.log(i % width, Math.floor(i / width))}
            className={list}></div>)}
        </div>
      </div>
      <Commands handleUpdate={(e) => handleUpdate({e, setStepCount, descriptor, firstStep: FIRST_STATE})}
        handleReset={(e) => handleReset({e, setStepCount, setDescriptor, firstStep: FIRST_STATE, width, height})} 
        setStepCount={setStepCount} 
        maxSteps={descriptor.steps.length}/>
    </div>
  );
}