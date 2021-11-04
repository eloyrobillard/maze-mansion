import Dashboard from './Dashboard';
import './App.css';

// TODO set up server for language option
// TODO pass language text through context
function App() {
  return (
    <div className="App">
      <div id="top-bar">
        <h1>迷路屋敷</h1>
      </div>
      <Dashboard />
    </div>
  );
}

export default App;
