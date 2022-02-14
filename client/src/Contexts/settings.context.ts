import React from 'react';
import { settingsMock } from 'Mocks';

export const SettingsContext = React.createContext(settingsMock);
export const SettingsProvider = SettingsContext.Provider;