import { useState, useEffect } from 'react';
import { Settings, Grid } from 'Components';
import { SettingsProvider } from 'Contexts';
import { formatApi } from 'Services';
import { apiMock } from 'Mocks';
import { Api } from 'Types';
import Wasm from 'wasm';
import './Dashboard.css';

export const FPS_INSTANT = 0;

export default function Dashboard() {
  const [mazeWidth, setWidth] = useState(10);
  const [mazeHeight, setHeight] = useState(10);
  const [fps, setFps] = useState(25);

  const [api, setApi] = useState<Api>(apiMock);

  useEffect(() => {
    (async () => {
      const ascModule = await Wasm();
      const api = formatApi(ascModule);
      setApi(api);
    })();
  }, []);

  return (
    <div id="dashboard">
      <SettingsProvider value={{
        mazeWidth,
        setWidth,
        mazeHeight,
        setHeight,
        fps,
        setFps,
      }}>
        <Grid api={api} />
        <Settings />
      </SettingsProvider>
    </div>
  );
}