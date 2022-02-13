import { Dashboard } from 'Components';
import { LangProvider } from 'Contexts';
import { getLang } from 'Services';
import { langMock } from 'Mocks';
import { Lang } from 'Types';
import './App.css';
import { useEffect, useState } from 'react';

function App() {
  const [lang, setLang] = useState<Lang>(langMock);

  useEffect(() => {
    (async () => {
      setLang(await getLang('jp'));
    })();
  }, [])


  return (
    <div className="App">
      <div id="top-bar">
        <h1>{lang.title}</h1>
      </div>
      <LangProvider value={lang}>
        <Dashboard />
      </LangProvider>
    </div>
  );
}

export default App;
