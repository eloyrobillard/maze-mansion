import React, { useState, useEffect } from 'react';
import Settings from './SettingsComp/Settings';
import AScApi from './AScApi';
import Maze from './MazeComp/Maze';
import Asc from './RBT/asc/index';
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

  const [dashboard, setDashboard] = useState(<></>)

  useEffect(() => {
    (async () => {
      const ascMod = await Asc();
      console.log(ascMod);
      const Api = AScApi.formatApi(ascMod);
      setDashboard(
        <div id="dashboard">
          <SettingsContext.Provider value={{
              mazeWidth,
              setWidth,
              mazeHeight,
              setHeight,
              fps, 
              setFps,
            }}>
            <Maze Api={Api} />  
            <Settings />
          </SettingsContext.Provider>
      </div>
    );
    })();
  });

  return (dashboard)
}