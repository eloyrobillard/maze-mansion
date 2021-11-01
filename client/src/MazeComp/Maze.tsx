import React, { useState, useEffect, useCallback, useRef } from 'react';
import ApiClient from '../ApiService';
import { MazeDescriptor }  from '../ApiTypes';
import { handleReset, handleUpdate, resizeMazeElements } from './MazeUtils';
import * as M from '../recursive_backtracker/maze';
import Commands from './Commands';
import './Maze.css';

const FIRST_STATE = -1;
const mockDescriptor: MazeDescriptor = {
  initial: new M.Maze(0, 0),
  steps: [{ prev: null, prevNeighs: null, current: null, currentNeighs: null }],
  final: new M.Maze(0, 0)
}

// TODO implement auto-step
export default function Maze({width, height, fps}: {width: number, height: number, fps: number}) {
  const [classLists, setClassLists]: [string[][], React.Dispatch<React.SetStateAction<string[][]>>] = useState([['']]);
  const [descriptor, setDescriptor]: [MazeDescriptor, React.Dispatch<React.SetStateAction<MazeDescriptor>>] = useState(mockDescriptor);

  // TODO implement backwards maze steps
  const [stepCount, setStepCount]: [number, React.Dispatch<React.SetStateAction<number>>] = useState(FIRST_STATE); 
  const [updateDir, setUpdateDir]: [number, React.Dispatch<React.SetStateAction<number>>] = useState(1);

  // LINK https://rios-studio.com/tech/react-hook%E3%81%AB%E3%81%8A%E3%81%91%E3%82%8Btimeout%E3%81%A8timeinterval%E3%80%90%E6%AD%A2%E3%81%BE%E3%82%89%E3%81%AA%E3%81%84%E3%83%BB%E9%87%8D%E8%A4%87%E3%81%99%E3%82%8B%E3%80%91
  const intervalRef: React.MutableRefObject<NodeJS.Timeout | null> = useRef(null);
  const [isPlaying, setIsPlaying] = useState(false);
  const play = useCallback(() => {
    if (intervalRef.current !== null) {
      return;
    }
    intervalRef.current = setInterval(() => {
      setStepCount(c => {
        if (updateDir > 0) {
          return Math.min(descriptor.steps.length, c + 1);
        }
        return Math.max(FIRST_STATE, c - 1);
      });
    }, Math.floor(1000 / fps));
  }, [updateDir, fps, descriptor]);

  const pause = useCallback(() => {
    if (intervalRef.current === null) {
      return;
    }
    clearInterval(intervalRef.current);
    intervalRef.current = null;
  }, []);

  useEffect(() => {
    if (isPlaying) {
      return play();
    }
    return pause();
  }, [isPlaying, play, pause]);

  // NOTE pause automatically when at the end
  useEffect(() => {
    if (stepCount === descriptor.steps.length) {
      setIsPlaying(false);
    }
  }, [stepCount, descriptor]);

  function togglePlay() {
    setIsPlaying(!isPlaying);
  }

  useEffect(() => resizeMazeElements(width, height), [width, height]);

  // NOTE fetch descriptor
  useEffect(() => {
    setStepCount(FIRST_STATE);
    setDescriptor(ApiClient.getMazeDescriptor(width, height));
  }, [width, height]);
  
  // NOTE handle maze update
  useEffect(() => {
    if (stepCount === FIRST_STATE) {
      setClassLists(ApiClient.mazeToClassLists(descriptor!.initial));
    } else if (stepCount === descriptor.steps.length) {
      setClassLists(ApiClient.mazeToClassLists(descriptor!.final));
    } else {
      setClassLists((cls: string[][]) => ApiClient.updateMaze(descriptor.initial, cls, descriptor.steps[stepCount], updateDir));
    }
  }, [stepCount, descriptor, updateDir]);

  return (
    <div id="maze">
      <div id="grid-container">
        <div id="grid">
          {
            classLists.reduce((acc, row) => acc.concat(row), []).map((list, i) => {
              if (list.includes('stuck')) console.log(i % width, Math.floor(i / width), list);
              return (
                <div key={i} 
                  onClick={() => console.log(i % width, Math.floor(i / width))}
                  className={list}>  
                </div>
            )})
          }
        </div>
      </div>
      <Commands handleUpdate={(e) => handleUpdate({e, setStepCount, updateDir, setUpdateDir, descriptor, firstStep: FIRST_STATE})}
        handleReset={(e) => handleReset({e, setStepCount, setDescriptor, firstStep: FIRST_STATE, width, height})}
        togglePlay={togglePlay}/>
    </div>
  );
}