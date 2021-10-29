import React, {useState, useEffect} from 'react';
import './App.css';
import ApiClient from './ApiService';

function Maze() {
  const [maze, setMaze] = useState('');
  
  const [context, setContext]: any = useState();

  useEffect(() => {
      const canvas = document.getElementById('canvas') as HTMLCanvasElement;
      const canvasContext = canvas!.getContext('2d');
      setContext(ApiClient.mazeToScreen(canvasContext!, 20, 20));
  },[])

  useEffect(() => {
    const maze = ApiClient.mazeToText(20, 20);
    console.log(maze);
    setMaze(maze);
  }, []);
  
  return (
    <>
      <canvas id='canvas'></canvas>
    </>
  );

  // return (
  //   <>
  //     <textarea id="maze" value={maze}></textarea>
  //   </>
  // );

}

function App() {
  return (
    <div className="App">
      <Maze />
    </div>
  );
}

export default App;
