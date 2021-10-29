import React, {useState} from 'react';
import './Settings.css';

function SpeedSetting({fps, setFps}: {fps: number, setFps: (n: number) => void}) {
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
    setFpsElement(
      <form>
        <label htmlFor="fps">Choose FPS (updates / sec = 1000 / FPS)</label>
        <input type="number"
          min="1"
          max="10"
          name="fps" 
          value={fps} 
          placeholder="Maze width..." 
          onChange={handleFps}/>
        <button></button>
      </form>
    )
  }

  function handleFps(e: React.ChangeEvent<HTMLInputElement>) {
    e.preventDefault();

    setFps(Number(e.target.value));
  }

  return fpsElement;
}

export default function Settings() {
  const [mazeWidth, setWidth] = useState(10);
  const [mazeHeight, setHeight] = useState(10);

  const [fps, setFps] = useState(5);

  function proxySetFps(n: number) {
    setFps(n);
  }

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
      <form>
        <label htmlFor="width height">Maze dimensions</label>
        <input type="number"
          min="2" 
          name="width" 
          value={mazeWidth} 
          placeholder="Maze width..." 
          onChange={(e) => handleInput(e, 'w')}/>
        <input type="number" 
          min="2"
          name="height" 
          value={mazeHeight} 
          placeholder="Maze height..." 
          onChange={(e) => handleInput(e, 'h')}/>
        <button type="submit">Submit dimensions</button>
      </form>
      <SpeedSetting fps={fps} setFps={proxySetFps}/>
      {/* <form>
        <label htmlFor="width height">Maze dimensions</label>
          <input type="number"
            min="1" 
            name="width" 
            value={mazeWidth} 
            placeholder="Maze width..." 
            onChange={(e) => handleInput(e, 'w')}/>
          <input type="number" name="height" value={mazeHeight} placeholder="Maze height..." />
          <button type="submit">Submit dimensions</button>
        </form> */}
    </div>
  )
}