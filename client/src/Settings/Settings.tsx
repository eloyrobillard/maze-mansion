import React, { useState } from 'react';
import SpeedToggle from './SpeedSetting';
import './Settings.css';

export const FpsContext = React.createContext({fps: 5, setFps: (_: number) => {return}});

export default function Settings() {
  const [mazeWidth, setWidth] = useState(10);
  const [mazeHeight, setHeight] = useState(10);

  const [fps, setFps] = useState(5);

  function handleInput(e: React.ChangeEvent<HTMLInputElement>, target: string) {
    e.preventDefault();

    switch (target) {
      case 'w':
        setWidth(Number(e.target.value));
        break;
      
      case 'h':
        setHeight(Number(e.target.value));
        break;

      default:
        break;
    }
  }

  return (
    <div id="settings">
      <h1>Settings</h1>
      <div id="settings-content">
        <form id="dimensions">
          <div id="dimension-inputs">
            <label htmlFor="width">Width</label>
            <label htmlFor="height">Height</label>
            <input type="number"
              min="2" 
              name="width" 
              value={mazeWidth} 
              onChange={(e) => handleInput(e, 'w')}/>
            <input type="number" 
              min="2"
              name="height" 
              value={mazeHeight} 
              onChange={(e) => handleInput(e, 'h')}/>
          </div>
          <button type="submit">Submit dimensions</button>
        </form>
        <FpsContext.Provider value={{fps, setFps: (x) => setFps(x)}}>
          <SpeedToggle />
        </FpsContext.Provider>
        {/* <form>
          <label htmlFor="width height">Maze dimensions</label>
            <input type="number"
              min="1" 
              name="width" 
              value={mazeWidth} 
              placeholder="Maze width..." 
              onChange={(e) => handleInput(e, 'w')}/>
            <input type="number" name="height" value={mazeHeight} placeholder="Maze height..." />
            <button type="submit">Submit dimensions</button>
          </form> */}
      </div>
    </div>
  )
}