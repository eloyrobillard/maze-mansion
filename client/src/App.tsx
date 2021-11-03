import Dashboard from './Dashboard';
import { useState, useEffect } from 'react';
import './App.css';

const { getMaze } = require('./recursive_backtracker/asc/index');

// TODO set up server for language option
// TODO pass language text through context
function App() {
  const [resText, setRes] = useState('');

  useEffect(() => {
    setRes(getMaze(10, 10));
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
