import { Dashboard } from 'Components';
import { LangProvider } from 'Contexts';
import { getLang } from 'Services';
import { langMock } from 'Mocks';
import { Lang } from 'Types';
import './App.css';
import { useState } from 'react';

function App() {
  const [lang, setLang] = useState<Lang>(langMock);
  const [langAttribute, setLangAttribute] = useState('en');

  const handleClick = async (e: React.MouseEvent<HTMLSelectElement, MouseEvent>) => {
    e.preventDefault();
    const langAttribute = e.currentTarget.value;
    setLang(await getLang(langAttribute));
    setLangAttribute(langAttribute);
  }

  return (
    <div className="App" lang={langAttribute}>
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
