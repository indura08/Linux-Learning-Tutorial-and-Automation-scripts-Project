#!/bin/bash

cd ./app || exit 1

echo "[+] building the project...."

npm install 
npm run build


