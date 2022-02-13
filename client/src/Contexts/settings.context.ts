import React from 'react';

export const SettingsContext = React.createContext({
  mazeWidth: 10,
  setWidth: (_: number) => { return },
  mazeHeight: 10,
  setHeight: (_: number) => { return },
  fps: 0,
  setFps: (_: number) => { return },
});

export const SettingsProvider = SettingsContext.Provider;