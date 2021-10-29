import React, {useState, useContext} from 'react';
import './Settings.css';

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

function SpeedToggle(/* {fps, setFps}: {fps: number, setFps: (n: number) => void} */) {
  
  
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

const FpsContext = React.createContext({fps: 5, setFps: (_: number) => {return}});

export default function Settings() {
  const [mazeWidth, setWidth] = useState(10);
  const [mazeHeight, setHeight] = useState(10);

  const [fps, setFps] = useState(5);

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
      <h1>Settings</h1>
      <div id="settings-content">
        <form id="dimensions">
          <div id="dimension-inputs">
            <label htmlFor="width">Width</label>
            <label htmlFor="height">Height</label>
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
          <button type="submit">Submit dimensions</button>
        </form>
        <FpsContext.Provider value={{fps, setFps: (x) => setFps(x)}}>
          <SpeedToggle />
        </FpsContext.Provider>
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
    </div>
  )
}