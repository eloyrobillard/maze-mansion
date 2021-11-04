import { useState, useEffect } from 'react';
import Dashboard from './Dashboard';
// import { mazeToText } from './AsmApi';
import Asc from './recursive_backtracker/asc/index';
import './App.css';

// TODO set up server for language option
// TODO pass language text through context
function App() {
  const [resText, setRes] = useState('');

  useEffect(() => {
    (async () => {
      const { getMaze, __getString } = await Asc();
      // @ts-ignore: Object- is of type 'unknown'
      setRes(__getString(getMaze(10, 10)));
    })();
  }, [])

  return (
    <div className="App">
      <div id="top-bar">
        <h1>迷路屋敷</h1>
        {resText}
      </div>
      <Dashboard />
    </div>
  );
}

export default App;
