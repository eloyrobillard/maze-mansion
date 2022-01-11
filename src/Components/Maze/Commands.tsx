import './Commands.css';

type CommandProps = { 
  handleUpdate: (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) => void;
  handleReset: (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) => void;
  togglePlay: () => void;
}

export default function Commands({handleUpdate, handleReset, togglePlay}: CommandProps) {
  return (
    <div id="commands">
      <div id="player-commands">
        <button id="first-state" onClick={handleUpdate} title="最初へ移動">⏮️</button>
        <button id="previous-state" onClick={handleUpdate} title="前へ移動">⏪</button>
        <button id="toggle-play" onClick={togglePlay} title="再生">⏯️</button>
        <button id="next-state" onClick={handleUpdate} title="次へ移動">⏩</button>
        <button id="last-state" onClick={handleUpdate} title="最後へ移動">⏭️</button>
      </div>
      <button id="reset" type="submit" onClick={handleReset} title="新しい迷路">新しい迷路</button>
    </div>
  )
}