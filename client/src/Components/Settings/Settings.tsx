import React, { useContext } from 'react';
import SpeedSetting from './SpeedSetting/SpeedSetting';
import { SettingsContext, LangContext } from 'Contexts';
import './Settings.css';

export default function Settings() {
  const {
    mazeWidth,
    setWidth,
    mazeHeight,
    setHeight } = useContext(SettingsContext);

  const { settings: { title, width, height } } = useContext(LangContext);

  function handleInput(e: React.ChangeEvent<HTMLInputElement>, target: string) {
    e.preventDefault();

    switch (target) {
      case 'w':
        setWidth(Math.max(1, Number(e.target.value)));
        break;

      case 'h':
        setHeight(Math.max(1, Number(e.target.value)));
        break;

      default:
        break;
    }
  }

  return (
    <div id="settings">
      <h1>{title}</h1>
      <div id="settings-content">
        <form id="dimensions">
          <div id="dimension-inputs">
            <div id="labels">
              <label htmlFor="width">{width}</label>
              <label htmlFor="height">{height}</label>
            </div>
            <div id="inputs">
              <input type="number"
                min="1"
                name="width"
                value={mazeWidth}
                onChange={(e) => handleInput(e, 'w')} />
              <input type="number"
                min="1"
                name="height"
                value={mazeHeight}
                onChange={(e) => handleInput(e, 'h')} />
            </div>
          </div>
        </form>
        <SpeedSetting />
      </div>
    </div>
  )
}