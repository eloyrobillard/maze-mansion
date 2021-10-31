import React, { useState, useEffect } from 'react';
import ApiClient, { MazeDescriptor, Step } from './ApiService';
import { FPS_INSTANT } from './SettingsComp/SpeedSetting';
import * as M from './recursive_backtracker/maze';
import './App.css';

function Commands() {
  // TODO change return when fps = instant vs not
  return (
    <div id="commands">
      <button id="previous-state">⏮️</button>
      <button id="first-state">⏪</button>
      <button id="toggle-play">⏯️</button>
      <button id="last-state">⏩</button>
      <button id="next-state">⏭️</button>
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

    const grid = document.getElementById('grid') as HTMLDivElement;
    // NOTE use gridContainer rect -> coherent with maze size
    // const gridContainer = document.getElementById('grid-container') as HTMLDivElement;
    // LINK https://javascript.programmer-reference.com/js-width-height/
    // const gridWidth = Math.floor(gridContainer.getBoundingClientRect().width);
    // const gridHeight = Math.floor(gridContainer.getBoundingClientRect().height);

    // if (cellWidth * width < (gridWidth - cellWidth)) {
    // TODO fix grid size limit issues
    grid.style.width = `${cellWidth * width}px`;
    // }
    // if (cellHeight * height < (gridHeight - cellHeight)) {
    grid.style.height = `${cellHeight * height}px`;
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
      <Commands />
      <button type="submit" onClick={handleReset}>Reset</button>
    </div>
  );
}