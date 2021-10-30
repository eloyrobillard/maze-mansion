import React, { useState } from 'react';
import './App.css';
// import ApiClient from './ApiService';
import Settings from './SettingsComp/Settings';


function Maze() {
  // const [context, setContext]: any = useState();
  
  // useEffect(() => {
    //     const canvas = document.getElementById('canvas') as HTMLCanvasElement;
    //     const canvasContext = canvas!.getContext('2d');
    //     setContext(ApiClient.mazeToScreen(canvasContext!, 20, 20));
    // },[])
    
  return (
    <div id="maze">
      <canvas id='canvas'></canvas>
    </div>
  );
}

export const SettingsContext = React.createContext({
  mazeWidth: 10,
  setWidth: (_: number) => {return},
  mazeHeight: 10,
  setHeight: (_: number) => {return},
  fps: 5, 
  setFps: (_: number) => {return}
});

function Dashboard() {
  const [mazeWidth, setWidth] = useState(10);
  const [mazeHeight, setHeight] = useState(10);

  const [fps, setFps] = useState(5);


  return (
    <div id="dashboard">
      <SettingsContext.Provider value={{
          mazeWidth,
          setWidth,
          mazeHeight,
          setHeight,
          fps, 
          setFps
        }}>
        <Maze />  
        <Settings />
      </SettingsContext.Provider>
      
    </div>
  )
}

function App() {
  return (
    <div className="App">
      <Dashboard />
    </div>
  );
}

export default App;
