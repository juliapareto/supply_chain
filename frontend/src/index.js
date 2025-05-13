import React from 'react';
import ReactDOM from 'react-dom/client';
import 'leaflet/dist/leaflet.css';
import './index.css';
import App from './App';
import { PackagesContextProvider } from './context/PackageContext'
import { AuthContextProvider } from './context/AuthContext'

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <AuthContextProvider>
      <PackagesContextProvider>
        <App />
      </PackagesContextProvider>
    </AuthContextProvider>
  </React.StrictMode>
);