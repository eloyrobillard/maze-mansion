import React, { useState, useEffect } from 'react';
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

export default function Maze({width, height, fps}: {width: number, height: number, fps: number}) {
  const [classLists, setClassLists]: [string[][], React.Dispatch<React.SetStateAction<string[][]>>] = useState([['']]);
  const [descriptor, setDescriptor]: [MazeDescriptor, React.Dispatch<React.SetStateAction<MazeDescriptor>>] = useState(mockDescriptor);

  // TODO implement backwards maze steps
  const [stepCount, setStepCount]: [number, React.Dispatch<React.SetStateAction<number>>] = useState(FIRST_STATE); 
  const [updateDir, setUpdateDir]: [number, React.Dispatch<React.SetStateAction<number>>] = useState(1);
  
  useEffect(() => resizeMazeElements(width, height), [width, height]);

  // NOTE fetch descriptor
  useEffect(() => {
    setStepCount(FIRST_STATE);
    setDescriptor(ApiClient.getMazeDescriptor(width, height));
  }, [width, height]);
  
  useEffect(() => {
    if (stepCount === FIRST_STATE) {
      setClassLists(ApiClient.mazeToClassLists(descriptor!.initial));
    } else if (stepCount === descriptor.steps.length) {
      setClassLists(ApiClient.mazeToClassLists(descriptor!.final));
    } else {
      setClassLists((cls: string[][]) => ApiClient.updateMaze(descriptor.initial, cls, descriptor.steps[stepCount], updateDir));
    }
  }, [stepCount, descriptor, updateDir])

  return (
    <div id="maze">
      <div id="grid-container">
        <div id="grid">
          {classLists.reduce((acc, row) => acc.concat(row), []).map((list, i) => <div key={i} 
            onClick={() => console.log(i % width, Math.floor(i / width))}
            className={list}></div>)}
        </div>
      </div>
      <Commands handleUpdate={(e) => handleUpdate({e, setStepCount, updateDir, setUpdateDir, descriptor, firstStep: FIRST_STATE})}
        handleReset={(e) => handleReset({e, setStepCount, setDescriptor, firstStep: FIRST_STATE, width, height})} 
        setStepCount={setStepCount} 
        maxSteps={descriptor.steps.length}/>
    </div>
  );
}