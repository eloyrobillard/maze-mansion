import React, { useState, useEffect } from 'react';
import { Settings, Maze } from 'Components';
import { formatApi } from 'Services';
import { Api } from 'Types';
import Wasm from 'RBT/asc';
import 'App.css';

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

  const [api, setApi] = useState<Api>({
    getTextMaze: (width: number, height: number) => '',
    generateClasses: (maze: number[][]) => [['']],
    updateClasses: (maze: number[][], classLists: string[][], change: number[], updateDir: number) => [['']],
    getMazeDescriptor: (width: number, height: number) => {
      return {
        initial: [[1]],
        steps: [[0]],
        final: [[0]]
      }
    }
  });

  useEffect(() => {
    (async () => {
      const ascModule = await Wasm();
      const api = formatApi(ascModule);
      setApi(api);
    })();
  }, []);

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