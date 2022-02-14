import React from 'react';
import { langMock } from 'Mocks';

export const LangContext = React.createContext(langMock);
export const LangProvider = LangContext.Provider;