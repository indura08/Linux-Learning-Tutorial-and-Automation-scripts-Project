#!/bin/bash

REPO_URL="https://github.com/indura08/ClothinX-project-frontend"
CLONE_DIR="./app"

if [ ! -d "$CLONE_DIR" ]; then
	echo "[+] Cloning repository"
	git clone "$REPO_URL" "$CLONE_DIR"
else
	echo "[+] Repo has been cloned already; Pulling latest changes ..."
	cd "$CLONE_DIR"  && git pull origin master
	#this means that if first command succeseded then do the git pull command , this doesnt means the and opeartions
fi



