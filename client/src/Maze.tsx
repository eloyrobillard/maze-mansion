import React, { useState, useEffect } from 'react';
import ApiClient from './ApiService';
import { MazeDescriptor }  from './ApiTypes';
import { FPS_INSTANT } from './Dashboard';
import * as M from './recursive_backtracker/maze';
import './App.css';

type CommandProps = { 
  handleUpdate: (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) => void;
  handleReset: (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) => void;
}

function Commands({handleUpdate, handleReset}: CommandProps) {
  // TODO change return when fps = instant vs not
  return (
    <div id="commands">
      <div id="player-commands">
        <button id="previous-state" title="前へ移動">⏮️</button>
        <button id="first-state" title="最初へ移動">⏪</button>
        <button id="toggle-play" onClick={handleUpdate} title="再生">⏯️</button>
        <button id="last-state" title="最後へ移動">⏩</button>
        <button id="next-state" title="次へ移動">⏭️</button>
      </div>
      <button type="submit" onClick={handleReset} title="新しい迷路">Reset</button>
    </div>
  )
}

export default function Maze({width, height, fps}: {width: number, height: number, fps: number}) {
  const [classLists, setClassLists]: [string[][], any] = useState([['']]);
  const [descriptor, setDescriptor]: [MazeDescriptor, any] = useState({
    initial: new M.Maze(0, 0),
    steps: [{ prev: null, current: null }],
    final: new M.Maze(0, 0)
  });

  // TODO implement maze steps
  const [stepCount, setStepCount]: [number, any] = useState(0);

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

  function handleUpdate (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) {
    e.preventDefault();
    
    try { 
      setClassLists(fps === FPS_INSTANT 
        ? ApiClient.mazeToClassListsInstant(descriptor!.final)
        : ApiClient.mazeToClassListsStep(classLists, descriptor!.steps[stepCount]));
    } catch (e) {
      console.log(e);
    }
  }

  function handleReset (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) {
    e.preventDefault();

    setClassLists(ApiClient.mazeToClassListsInstant(descriptor.initial));
  }

  useEffect(() => {
    if (descriptor) {
      setClassLists(ApiClient.mazeToClassListsInstant(descriptor.initial));
    }
  }, [descriptor]);

  useEffect(() => {
    setDescriptor(ApiClient.getMazeDescriptor(width, height));
  }, [width, height]);
    
  return (
    <div id="maze">
      <div id="grid-container">
        <div id="grid">
          {classLists.reduce((acc, row) => acc.concat(row), []).map((list, i) => <div key={i} 
            onClick={() => console.log(i % width, Math.floor(i / width))}
            className={list}></div>)}
        </div>
      </div>
      <Commands handleUpdate={handleUpdate} handleReset={handleReset}/>
    </div>
  );
}