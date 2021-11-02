import React, { useState, useEffect, useCallback, useRef, Dispatch, SetStateAction } from 'react';
import ApiClient from '../MazeService';
import { MazeDescriptor }  from '../ApiTypes';
import { handleReset, handleUpdate, resizeMazeElements } from './MazeUtils';
import * as M from '../recursive_backtracker/ts/maze';
import Commands from './Commands';
import './Maze.css';

const FIRST_STATE = -1;
const mockDescriptor: MazeDescriptor = {
  initial: new M.Maze(0, 0),
  steps: [{ prev: null, prevNeighs: null, current: null, firstVisit: false, currentNeighs: null }],
  final: new M.Maze(0, 0)
}

type MazeProps = {
  width: number, 
  height: number, 
  fps: number
};

export default function Maze({width, height, fps}: MazeProps) {
  const [cellWidth, setCellWidth]: [number, Dispatch<SetStateAction<number>>] = useState(50); 
  const [cellHeight, setCellHeight]: [number, Dispatch<SetStateAction<number>>] = useState(50);

  const [classLists, setClassLists]: [string[][], Dispatch<SetStateAction<string[][]>>] = useState([['']]);
  const [descriptor, setDescriptor]: [MazeDescriptor, Dispatch<SetStateAction<MazeDescriptor>>] = useState(mockDescriptor);

  const [stepCount, setStepCount]: [number, Dispatch<SetStateAction<number>>] = useState(FIRST_STATE); 
  const [updateDir, setUpdateDir]: [number, Dispatch<SetStateAction<number>>] = useState(1);

  const [LAST_STATE, setLastState] = useState(Infinity);
  // NOTE update last state index
  useEffect(() => {
    setLastState(descriptor.steps.length);
  }, [descriptor])

  // LINK https://rios-studio.com/tech/react-hook%E3%81%AB%E3%81%8A%E3%81%91%E3%82%8Btimeout%E3%81%A8timeinterval%E3%80%90%E6%AD%A2%E3%81%BE%E3%82%89%E3%81%AA%E3%81%84%E3%83%BB%E9%87%8D%E8%A4%87%E3%81%99%E3%82%8B%E3%80%91
  const intervalRef: React.MutableRefObject<NodeJS.Timeout | null> = useRef(null);
  const [isPlaying, setIsPlaying] = useState(false);
  const play = useCallback(() => {
    if (intervalRef.current !== null) {
      // NOTE fps change = interval speed change
      clearInterval(intervalRef.current);
    }
    intervalRef.current = setInterval(() => {
      setStepCount(c => {
        console.log('interval');
        if (updateDir > 0) {
          return Math.min(LAST_STATE, c + 1);
        }
        return Math.max(FIRST_STATE, c - 1);
      });
    }, Math.floor(1000 / fps));
  }, [updateDir, fps, LAST_STATE]);

  const pause = useCallback(() => {
    if (intervalRef.current === null) {
      return;
    }
    clearInterval(intervalRef.current);
    intervalRef.current = null;
  }, []);

  // NOTE play/pause on push play button AND 手動的に toggle した時
  useEffect(() => {
    if (isPlaying) {
      return play();
    }
    return pause();
  }, [isPlaying, play, pause, stepCount, descriptor]);

  // NOTE pause automatically when at the end
  useEffect(() => {
    if (stepCount === LAST_STATE || stepCount === FIRST_STATE) {
      setIsPlaying(false);
    }
  }, [stepCount, LAST_STATE]);

  function togglePlay() {
    if (!isPlaying && stepCount > FIRST_STATE && stepCount < LAST_STATE) {
      return setIsPlaying(true);
    }
    return setIsPlaying(false);
  }

  useEffect(() => {
    resizeMazeElements({width, height, setCellWidth, setCellHeight})
  }, [width, height]);

  useEffect(() => {
    let grid; 
    return (() => {
      if (!grid) {
        grid = document.getElementById('grid') as HTMLDivElement;
      }
      grid.style.width = `${cellWidth * width}px`;
      grid.style.height = `${cellHeight * height}px`;
    })();
  }, [cellWidth, cellHeight, width, height]);

  // NOTE fetch descriptor
  useEffect(() => {
    setStepCount(FIRST_STATE);
    setDescriptor(ApiClient.getMazeDescriptor(width, height));
  }, [width, height]);
  
  // NOTE handle maze update (front AND back)
  useEffect(() => {
    if (stepCount === FIRST_STATE) {
      setClassLists(ApiClient.mazeToClassLists(descriptor!.initial));
    } else if (stepCount === LAST_STATE) {
      setClassLists(ApiClient.mazeToClassLists(descriptor!.final));
    } else {
      setClassLists((cls: string[][]) => ApiClient.updateMaze(descriptor.initial, cls, descriptor.steps[stepCount], updateDir));
    }
  }, [stepCount, descriptor, updateDir, LAST_STATE]);

  return (
    <div id="maze">
      <Commands handleUpdate={(e) => handleUpdate({e, setStepCount, updateDir, setUpdateDir, FIRST_STATE, LAST_STATE})}
        handleReset={(e) => handleReset({e, setStepCount, setDescriptor, FIRST_STATE, width, height})}
        togglePlay={togglePlay}/>
      <div id="grid-container">
        <div id="grid">
          {
            classLists.reduce((acc, row) => acc.concat(row), []).map((list, i) => {
              return (
                <div key={i}
                  style={{width: cellWidth + 'px', height: cellHeight + 'px'}}
                  title={`x: ${i % width}\ny: ${Math.floor(i / width)}`}
                  className={list}>  
                </div>
            )})
          }
        </div>
      </div>
    </div>
  );
}