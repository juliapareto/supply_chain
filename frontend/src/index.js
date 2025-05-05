import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import { PackagesContextProvider } from './context/PackageContext';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <PackagesContextProvider>
      <App/>
    </PackagesContextProvider>
  </React.StrictMode>
);

