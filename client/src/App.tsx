import { Dashboard, NavBar } from 'Components';
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
      <LangProvider value={lang}>
        <NavBar handleClick={handleClick} />
        <Dashboard />
      </LangProvider>
    </div>
  );
}

export default App;
