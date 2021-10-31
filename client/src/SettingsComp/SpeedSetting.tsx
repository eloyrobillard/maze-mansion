import React, {useState, useContext} from 'react';
import { SettingsContext } from '../App';
import './SpeedSettings.css';

function SpeedSetting() {
  const {fps, setFps} = useContext(SettingsContext);

  function handleFps(e: React.ChangeEvent<HTMLInputElement>) {
    e.preventDefault();

    setFps(Number(e.target.value));
  }

  return (
    <form>
      <label htmlFor="fps">FPS設定</label>
      <input type="number"
        min="1"
        max="10"
        name="fps" 
        value={fps} 
        onChange={handleFps}/>
    </form>
  )
}

export default function SpeedToggle() {
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
    setFpsElement(
      <div>
        <label>レンダー速度</label>
        <h2>完了。</h2>
      </div>
    );
  }

  function handleSpeedSetting(e: React.MouseEvent<HTMLButtonElement, MouseEvent>) {
    e.preventDefault();
    setFpsElement(<SpeedSetting />)
  }

  return fpsElement;
}