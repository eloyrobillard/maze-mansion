import React, { useState, useEffect } from 'react';
import Settings from './Components/Settings/Settings';
import Maze from './Components/Maze/Maze';
import { getApi } from 'Services';
import { WASMApi } from 'Types';
import './App.css';

export const FPS_INSTANT = 0;

export const SettingsContext = React.createContext({
  mazeWidth: 10,
  setWidth: (_: number) => { return },
  mazeHeight: 10,
  setHeight: (_: number) => { return },
  fps: 5,
  setFps: (_: number) => { return },
});

export default function Dashboard() {
  const [mazeWidth, setWidth] = useState(10);
  const [mazeHeight, setHeight] = useState(10);
  const [fps, setFps] = useState(10);
  const [api, setApi] = useState<WASMApi>({
    newMaze: (width: number, height: number) => { return; },
    getStepsLen: () => 0,
    generateClasses: () => [[ '' ]],
    updateClasses: (
      classLists: string[][],
      stepIndex: number,
      updateDir: number
    ) => [['']]
  });

  useEffect(() => {
    (async () => {
      setApi(getApi());
    })();
  }, [])

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
        <Maze api={api} />
        <Settings />
      </SettingsContext.Provider>
    </div>
  );
}