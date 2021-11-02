import React, { useState } from 'react';
import Settings from './SettingsComp/Settings';
import Maze from './MazeComp/Maze';
import './App.css';

export const FPS_INSTANT = 0;

export const SettingsContext = React.createContext({
  mazeWidth: 10,
  setWidth: (_: number) => {return},
  mazeHeight: 10,
  setHeight: (_: number) => {return},
  fps: 5, 
  setFps: (_: number) => {return},
});

export default function Dashboard() {
  const [mazeWidth, setWidth] = useState(10);
  const [mazeHeight, setHeight] = useState(10);

  const [fps, setFps] = useState(10);

  return (
    <div id="dashboard">
      <SettingsContext.Provider value={{
          mazeWidth,
          setWidth,
          mazeHeight,
          setHeight,
          fps, 
          setFps,
        }}>
        <Maze />  
        <Settings />
      </SettingsContext.Provider>
      
    </div>
  )
}