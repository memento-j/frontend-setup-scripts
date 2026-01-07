#!/bin/bash

cd "$1"

#install tailwind
npm install tailwindcss @tailwindcss/vite

#update ts config
echo "import { defineConfig } from 'vite'
import tailwindcss from '@tailwindcss/vite'

// https://vite.dev/config/
export default defineConfig({
  plugins: [
    tailwindcss(),
  ],
})" > vite.config.ts

#update main css file
echo "@import \"tailwindcss\";" > src/index.css