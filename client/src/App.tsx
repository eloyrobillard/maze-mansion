import React, { useState } from 'react';
import ApiClient from './ApiService';
import Settings from './SettingsComp/Settings';
import './App.css';


function Maze({width, height, fps}: {width: number, height: number, fps: number}) {
  const [classLists, setClassLists]: [string[][], React.Dispatch<React.SetStateAction<string[][]>>] = useState([['']]);

  function getCellDimensions() {
    const grid = document.getElementById('grid') as HTMLDivElement;
    const cell = document.createElement('div');
    cell.className = 'cell';
    
    // NOTE force style instantiation
    grid.appendChild(cell);
    const cellWidth = cell.getBoundingClientRect().width;
    const cellHeight = cell.getBoundingClientRect().height;
    grid.removeChild(cell);

    return { cellWidth, cellHeight };
  }
  
  function setGridElUp() {
    const { cellWidth, cellHeight } = getCellDimensions();

    const grid = document.getElementById('grid') as HTMLDivElement;
    // NOTE use gridContainer rect -> coherent with maze size
    const gridContainer = document.getElementById('grid-container') as HTMLDivElement;
    // LINK https://javascript.programmer-reference.com/js-width-height/
    const gridWidth = Math.floor(gridContainer.getBoundingClientRect().width);
    const gridHeight = Math.floor(gridContainer.getBoundingClientRect().height);

    if (cellWidth * width < (gridWidth - cellWidth)) {
      grid.style.width = `${cellWidth * width}px`;
    }
    if (cellHeight * height < (gridHeight - cellHeight)) {
      grid.style.height = `${cellHeight * height}px`;
    }
    return grid;
  }

  function handleClick (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) {
    e.preventDefault();
    
    try { 
      setGridElUp();
      setClassLists(ApiClient.mazeToClassLists(width, height));
    } catch (e) {
      console.log(e);
    }
  }
    
  return (
    <div id="maze">
      <div id="grid-container">
        <div id="grid">
          {classLists.reduce((acc, row) => acc.concat(row)).map((list, i) => <div key={i} 
            onClick={() => console.log(i % width, Math.floor(i / width))}
            className={list}></div>)}
        </div>
      </div>
      <button type="submit" onClick={handleClick}>Create</button>
    </div>
  );
}

export const SettingsContext = React.createContext({
  mazeWidth: 10,
  setWidth: (_: number) => {return},
  mazeHeight: 10,
  setHeight: (_: number) => {return},
  fps: 5, 
  setFps: (_: number) => {return},
});

function Dashboard() {
  const [mazeWidth, setWidth] = useState(10);
  const [mazeHeight, setHeight] = useState(10);

  const [fps, setFps] = useState(5);

  return (
    <div id="dashboard">
      <Maze width={mazeWidth} height={mazeHeight} fps={fps} />  
      <SettingsContext.Provider value={{
          mazeWidth,
          setWidth,
          mazeHeight,
          setHeight,
          fps, 
          setFps,
        }}>
        <Settings />
      </SettingsContext.Provider>
      
    </div>
  )
}

function App() {
  return (
    <div className="App">
      <div id="top-bar">
        <h1>迷路屋敷</h1>
      </div>
      <Dashboard />
    </div>
  );
}

export default App;
