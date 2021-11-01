import React, { useState } from 'react';
import Settings from './SettingsComp/Settings';
import Maze from './Maze';
import './App.css';

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


  // NOTE
  const [fps, setFps] = useState(0);

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