import React, { useContext } from 'react';
import { SettingsContext, LangContext } from 'Contexts';
import './SpeedSettings.css';

const maxFPS = 100;

export default function SpeedSetting() {
  const { fps, setFps } = useContext(SettingsContext);
  const { settings: { fps: fpsLang } } = useContext(LangContext);

  const handleFps = (e: React.ChangeEvent<HTMLInputElement>) => {
    e.preventDefault();
    setFps(Number(e.target.value));
  };

  return (
    <form id="speed-choice">
      <label htmlFor="fps-range">{fpsLang}</label>
      <div id="indicators">
        <span>1</span>
        <span id="fps-span">{fps}</span>
        <span>{maxFPS}</span>
      </div>
      <input type="range"
        min="1"
        max={maxFPS}
        name="fps-range"
        value={fps}
        onChange={handleFps} />
    </form>
  );
}