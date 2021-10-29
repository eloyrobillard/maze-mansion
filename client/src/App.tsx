// import React, {useState, useEffect} from 'react';
import './App.css';
// import ApiClient from './ApiService';
import Settings from './Settings/Settings';

function Maze() {
  // const [maze, setMaze] = useState('');
  
  // const [context, setContext]: any = useState();

  // useEffect(() => {
  //     const canvas = document.getElementById('canvas') as HTMLCanvasElement;
  //     const canvasContext = canvas!.getContext('2d');
  //     setContext(ApiClient.mazeToScreen(canvasContext!, 20, 20));
  // },[])

  // useEffect(() => {
  //   const maze = ApiClient.mazeToText(20, 20);
  //   console.log(maze);
  //   setMaze(maze);
  // }, []);
  
  return (
    <div id="maze">
      <canvas id='canvas'></canvas>
    </div>
  );
}

function Dashboard() {

  return (
    <div id="dashboard">
      <Maze />
      <Settings />
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
