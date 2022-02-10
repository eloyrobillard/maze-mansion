import React, { useEffect, useContext } from 'react';
import { SettingsContext } from 'Dashboard';
import './SpeedSettings.css';

const maxFPS = 100;

export default function SpeedSetting() {
  const {fps, setFps} = useContext(SettingsContext);

  // NOTE update fps with new maxFPS
  useEffect(() => {
    if (fps > maxFPS) {
      setFps(maxFPS);
    }
  }, [fps, setFps]);

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
        <span>{maxFPS}</span>
      </div>
      <input type="range"
        min="1"
        max={maxFPS}
        name="fps-range" 
        value={fps} 
        onChange={handleFps}/>
    </form>
  )
}