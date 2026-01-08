#!/bin/bash

cd "$1"

#install react router
echo "

***Installing React Router***

"

npm install react-router-dom

#Updates main tsx to include a browser router
echo "import React from 'react';
import ReactDOM from 'react-dom/client';
import { BrowserRouter } from 'react-router-dom'; // or 'react-router'
import App from './App';
import './index.css';

ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <BrowserRouter>
      <App />
    </BrowserRouter>
  </React.StrictMode>
);" > src/main.tsx
