import React, { useState, useEffect, useContext } from 'react';
import { SettingsContext } from '../Dashboard';
import './SpeedSettings.css';

export default function SpeedSetting() {
  const {mazeWidth, mazeHeight, fps, setFps} = useContext(SettingsContext);
  const [max, setMax] = useState(100);

  useEffect(() => {
    // NOTE 100 <= max <= 1000
    setMax(Math.max(100, Math.min(mazeWidth * mazeHeight, 1000)));
  }, [mazeWidth, mazeHeight]);

  // NOTE update fps with new max
  useEffect(() => {
    if (fps > max) {
      setFps(max);
    }
  }, [max, fps, setFps]);

  function handleFps(e: React.ChangeEvent<HTMLInputElement>) {
    e.preventDefault();

    setFps(Number(e.target.value));
  }

  return (
    <form id="speed-choice">
      <label htmlFor="fps-range">FPS設定</label>
      <div id="indicators">
        <span>1</span>
        <span id="fps-span">{fps}</span>
        <span>{max === 1000 ? '1K' : max}</span>
      </div>
      <input type="range"
        min="1"
        max={max}
        name="fps-range" 
        value={fps} 
        onChange={handleFps}/>
    </form>
  )
}

/* function SpeedToggle() {
  const {setFps} = useContext(SettingsContext);
  const [fpsElement, setFpsElement] = useState(
    <form>
      <label>レンダー速度</label>
      <div id="speed-choice">
        <button onClick={handleSpeedInstant}>瞬間的？</button>
        <button onClick={handleSpeedSetting}>調整する？</button>
      </div>
    </form>
  );

  function handleSpeedInstant(e: React.MouseEvent<HTMLButtonElement, MouseEvent>) {
    e.preventDefault();
    setFps(FPS_INSTANT);
    setFpsElement(
      <div>
        <label>レンダー速度</label>
        <h2>瞬間的</h2>
      </div>
    );
  }

  function handleSpeedSetting(e: React.MouseEvent<HTMLButtonElement, MouseEvent>) {
    e.preventDefault();
    setFpsElement(<SpeedSetting />)
  }

  return fpsElement;
} */