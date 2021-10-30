import React, { useState } from 'react';
import ApiClient from './ApiService';
import Settings from './SettingsComp/Settings';
import './App.css';


function Maze({width, height, fps}: {width: number, height: number, fps: number}) {
  function handleClick (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) {
    e.preventDefault();

    const oldCanvas = document.getElementById('canvas') as HTMLCanvasElement;
    const maze = document.getElementById('maze');

    const canvas = document.createElement('canvas');
    canvas.id = 'canvas';
    const canvasContext = canvas!.getContext('2d');
    ApiClient.mazeToScreen(canvasContext!, width, height);

    maze!.replaceChild(canvas, oldCanvas);
  }
    
  return (
    <div id="maze">
      <canvas id='canvas'></canvas>
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
  createMaze: () => {return}
});

function Dashboard() {
  const [mazeWidth, setWidth] = useState(10);
  const [mazeHeight, setHeight] = useState(10);

  const [fps, setFps] = useState(5);

  function createMaze() {

  }

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
          createMaze
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
        <h2>迷路の屋敷</h2>
      </div>
      <Dashboard />
    </div>
  );
}

export default App;
