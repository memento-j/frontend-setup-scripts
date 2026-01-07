#!/bin/bash

cd "$1"

#install tailwind
echo "

***Installing Tailwind***

"
npm install tailwindcss @tailwindcss/vite

#update main css file
echo "@import \"tailwindcss\";" > src/index.css

#update tsconfig.json
echo  "{
  \"files\": [],
  \"references\": [
    {
      \"path\": \"./tsconfig.app.json\"
    },
    {
      \"path\": \"./tsconfig.node.json\"
    }
  ],
  \"compilerOptions\": {
    \"baseUrl\": \".\",
    \"paths\": {
      \"@/*\": [\"./src/*\"]
    }
  }
}" > tsconfig.json

#install type definitions for node
echo "

***Installing Type Definitions**

"
npm install -D @types/node

##update vite.config.ts
echo "import path from \"path\"
import tailwindcss from \"@tailwindcss/vite\"
import react from \"@vitejs/plugin-react\"
import { defineConfig } from \"vite\"

// https://vite.dev/config/
export default defineConfig({
  plugins: [react(), tailwindcss()],
  resolve: {
    alias: {
      \"@\": path.resolve(__dirname, \"./src\"),
    },
  },
})" > vite.config.ts

#run the shadcn cli
npx shadcn@latest init