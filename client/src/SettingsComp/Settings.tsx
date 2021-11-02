import React, { useContext } from 'react';
import SpeedSetting from './SpeedSetting';
import { SettingsContext } from '../Dashboard';
import './Settings.css';

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
        setWidth(Math.max(1, Number(e.target.value)));
        break;
      
      case 'h':
        setHeight(Math.max(1, Number(e.target.value)));
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
              min="1" 
              name="width" 
              value={mazeWidth} 
              onChange={(e) => handleInput(e, 'w')}/>
            <input type="number" 
              min="1"
              name="height" 
              value={mazeHeight} 
              onChange={(e) => handleInput(e, 'h')}/>
          </div>
        </form>
        <SpeedSetting />
      </div>
    </div>
  )
}