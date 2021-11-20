import React, { useState, useEffect, Dispatch, SetStateAction } from 'react';
// import { createAsBindHook } from 'use-as-bind';
import Settings from './SettingsComp/Settings';
import { formatApi } from './AScApi';
import Maze from './MazeComp/Maze';
import { Api } from './AScApi';
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
  const [maze, setMaze] = useState(<></>);

  // const [api, setApi]: [Api, Dispatch<SetStateAction<Api>>] = useState({
  //   getTextMaze: (width: number, height: number) => '',
  //   generateClasses: (maze: number[][]) => [['']],
  //   updateClasses: (maze: number[][], classLists: string[][], change: number[], updateDir: number) => [['']],
  //   getMazeDescriptor: (width: number, height: number) => { 
  //     return {
  //       initial: [[1]],
  //       steps: [[0]],
  //       final: [[0]]
  //     }
  //   }
  // });

  useEffect(() => {
    (async () => {
      const ascMod = await Asc();
      // console.log('ascMod', ascMod);
      const api = formatApi(ascMod);
      setMaze(<Maze api={api} />);
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
        {maze} 
        <Settings />
      </SettingsContext.Provider>
    </div>
  );
}