import React, { useContext } from 'react';
import SpeedToggle from './SpeedSetting';
import { SettingsContext } from '../App';
import './Settings.css';

// export const FpsContext = React.createContext({fps: 5, setFps: (_: number) => {return}});

export default function Settings() {
  const { 
    mazeWidth, 
    setWidth,
    mazeHeight,
    setHeight } = useContext(SettingsContext);

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
      <h1>設定</h1>
      <div id="settings-content">
        <form id="dimensions">
          <div id="dimension-inputs">
            <label htmlFor="width">幅</label>
            <label htmlFor="height">高さ</label>
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
        </form>
        <SpeedToggle />
      </div>
    </div>
  )
}