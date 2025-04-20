#!/bin/bash

cd ./app || exit 1

BUILD_DIR="./dist"

if [ ! -d "$BUILD_DIR" ]; then
	echo "Build directory not found please check again what folder your built react/angular project falls into"
	exit 1
fi


echo "[+] Deploying"

sudo  cp -r "$BUILD_DIR"/* /var/www/html/

echo "[+] Deployed to nginx"



#	sudo		Run the command with administrator privileges (you’ll need this to write to /var/www/html/)
#	cp		The copy command in Linux
#	-r		Means recursive — it's required when copying directories and their contents
#	*		A wildcard that means “everything in the current directory” (files and folders)
#	/var/www/html/	The destination directory (where you want to copy everything to)


echo "[+] deployed to nginx, you can visit the web page by hitting: http://localhost:5000"

