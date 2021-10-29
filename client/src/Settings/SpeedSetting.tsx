import React, {useState, useContext} from 'react';
import { FpsContext } from './Settings';
import './SpeedSettings.css';

function SpeedSetting() {
  const {fps, setFps} = useContext(FpsContext);

  function handleFps(e: React.ChangeEvent<HTMLInputElement>) {
    e.preventDefault();

    setFps(Number(e.target.value));
  }

  return (
    <form>
      <label htmlFor="fps">Choose FPS</label>
      <input type="number"
        min="1"
        max="10"
        name="fps" 
        value={fps} 
        onChange={handleFps}/>
      <button></button>
    </form>
  )
}

export default function SpeedToggle() {
  const [fpsElement, setFpsElement] = useState(
    <form>
      <label>Maze rendering speed</label>
      <div id="speed-choice">
        <button onClick={handleSpeedInstant}>Instantaneous?</button>
        <button onClick={handleSpeedSetting}>Choose speed?</button>
      </div>
    </form>
  );

  function handleSpeedInstant(e: React.MouseEvent<HTMLButtonElement, MouseEvent>) {
    e.preventDefault();
    setFpsElement(
      <div>
        <label>Maze rendering speed</label>
        <h2>Instantaneous</h2>
      </div>
    );
  }

  function handleSpeedSetting(e: React.MouseEvent<HTMLButtonElement, MouseEvent>) {
    e.preventDefault();
    setFpsElement(<SpeedSetting />)
  }

  return fpsElement;
}