#!/bin/bash

if [ -z "$1" ]; then

	echo "Commit message is empty, please enter a commit message to execute the script"
	echo "Use the command like this :./github-commit.sh \"Your commit message\""
	exit 1
fi

branch=$(git branch --show-current)

git add .
git commit -m "$1"
git push origin "$branch"

echo "Changes have been pushed to your current github working branch!!"

#this is a copy , the real file is located in /usr/bin folder as name "github-commit", it can be used as a command now
