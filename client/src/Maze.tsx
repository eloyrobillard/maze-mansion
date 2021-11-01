import React, { useState, useEffect } from 'react';
import ApiClient from './ApiService';
import { MazeDescriptor }  from './ApiTypes';
import { FPS_INSTANT } from './Dashboard';
import * as M from './recursive_backtracker/maze';
import './Maze.css';

type CommandProps = { 
  // handleUpdate: (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) => void;
  handleReset: (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) => void;
  setStepCount: React.Dispatch<React.SetStateAction<number>>;
  maxSteps: number;
}

function Commands({handleReset, setStepCount, maxSteps}: CommandProps) {
  return (
    <div id="commands">
      <div id="player-commands">
        <button id="previous-state" onClick={() => setStepCount(0)} title="最初へ移動">⏮️</button>
        <button id="first-state" onClick={() => setStepCount((prev) => Math.max(0, prev - 1))} title="前へ移動">⏪</button>
        <button id="toggle-play" title="再生">⏯️</button>
        <button id="last-state" onClick={() => setStepCount((prev) => Math.min(prev + 1, maxSteps - 1))} title="次へ移動">⏩</button>
        <button id="next-state" onClick={() => setStepCount(maxSteps - 1)} title="最後へ移動">⏭️</button>
      </div>
      <button type="submit" onClick={handleReset} title="新しい迷路">Reset</button>
    </div>
  )
}

export default function Maze({width, height, fps}: {width: number, height: number, fps: number}) {
  const [classLists, setClassLists]: [string[][], any] = useState([['']]);
  const [descriptor, setDescriptor]: [MazeDescriptor, any] = useState({
    initial: new M.Maze(0, 0),
    steps: [{ prev: null, prevNeighs: null, current: null, currentNeighs: null }],
    final: new M.Maze(0, 0)
  });

  // TODO implement maze steps
  const [stepCount, setStepCount]: [number, React.Dispatch<React.SetStateAction<number>>] = useState(0);

  function getCellDimensions() {
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

  // function handleUpdate (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) {
  //   e.preventDefault();
    
  //   try { 
  //     setClassLists(ApiClient.mazeToClassLists(descriptor!.final));
  //       if (fps === FPS_INSTANT) {
  //         // NOTE properly set step count to last otherwise can't use player commands
  //         setStepCount(descriptor!.steps.length - 1);
  //       } else {
  //         setClassLists(ApiClient.mazeToClassListsStep(classLists, descriptor!.steps[stepCount]));
  //       }
  //   } catch (e) {
  //     console.log(e);
  //   }
  // }

  // TODO implement reset functionality
  function handleReset (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) {
    e.preventDefault();

    // setDescriptor(ApiClient.getMazeDescriptor(width, height));
  }

  // NOTE fetch descriptor
  useEffect(() => {
    setDescriptor(ApiClient.getMazeDescriptor(width, height));
  }, [width, height]);

  // NOTE update state of maze
  useEffect(() => {
    console.log(stepCount)
    if (stepCount === 0) {
      setClassLists(ApiClient.mazeToClassLists(descriptor!.initial));
    } else if (stepCount === descriptor!.steps.length - 1) {
      setClassLists(ApiClient.mazeToClassLists(descriptor!.final));
    } else {
      setClassLists((cls: string[][]) => ApiClient.updateMaze(descriptor!.initial, cls, descriptor!.steps[stepCount]));
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
      <Commands  
        handleReset={handleReset} 
        setStepCount={setStepCount} 
        maxSteps={descriptor.steps.length}/>
    </div>
  );
}