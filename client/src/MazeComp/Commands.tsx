type CommandProps = { 
  handleUpdate: (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) => void;
  handleReset: (e: React.MouseEvent<HTMLButtonElement, MouseEvent>) => void;
  setStepCount: React.Dispatch<React.SetStateAction<number>>;
  maxSteps: number;
}

export default function Commands({handleUpdate, handleReset, setStepCount, maxSteps}: CommandProps) {
  // TODO implement auto-play
  return (
    <div id="commands">
      <div id="player-commands">
        <button id="first-state" onClick={handleUpdate} title="最初へ移動">⏮️</button>
        <button id="previous-state" onClick={handleUpdate} title="前へ移動">⏪</button>
        <button id="toggle-play" title="再生">⏯️</button>
        <button id="next-state" onClick={handleUpdate} title="次へ移動">⏩</button>
        <button id="last-state" onClick={handleUpdate} title="最後へ移動">⏭️</button>
      </div>
      <button type="submit" onClick={handleReset} title="新しい迷路">新しい迷路</button>
    </div>
  )
}