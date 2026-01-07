#!/bin/bash

npm install tailwindcss @tailwindcss/vite

echo "import { defineConfig } from 'vite'
import tailwindcss from '@tailwindcss/vite'

// https://vite.dev/config/
export default defineConfig({
  plugins: [
    tailwindcss(),
  ],
})" > vite.config.ts

echo "@import \"tailwindcss\";" > src/index.css