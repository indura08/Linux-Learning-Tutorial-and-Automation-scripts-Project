#!/bin/bash

echo "[+] Starting CI/CD automation process"
echo

echo "step 1 : cloning / pulling latest changes from the repo"
./clone-pull.sh

if [ $? -ne 0 ]; then 		#$? is a special variable in bash. It holds the exit status of the last command that was run.
	echo "Clone / pull process failed, stoping the pipeline"
	exit 1
fi
echo

echo "step 2: Building the application"
./build.sh

if [ $? -ne 0 ]; then
	echo "Error happende while building , pipeline failed!"
	exit 1
fi

echo 

echo "step 3 deploying to nginx web server at port 5000"
echo

./deploy.sh
if [ $? -ne 0 ]; then
	echo "Deploy failed , pipeline stopped!!"
	exit 1 
fi

echo "All the steps are completed , check the web site on: http://localhost:5000"


