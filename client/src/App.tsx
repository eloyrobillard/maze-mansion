import { Dashboard } from 'Components';
import { LangProvider } from 'Contexts';
import { getLang } from 'Services';
import { langMock } from 'Mocks';
import { Lang } from 'Types';
import './App.css';
import { useEffect, useState } from 'react';

function App() {
  const [lang, setLang] = useState<Lang>(langMock);

  const handleClick = async (e: React.MouseEvent<HTMLSelectElement, MouseEvent>) => {
    e.preventDefault();
    setLang(await getLang(e.currentTarget.value as string));
  }

  return (
    <div className="App">
      <div id="top-bar">
        <h1>{lang.title}</h1>
        <select onClick={handleClick}>
          <option value="en">English</option>
          <option value="jp">日本語</option>
        </select>
      </div>
      <LangProvider value={lang}>
        <Dashboard />
      </LangProvider>
    </div>
  );
}

export default App;
