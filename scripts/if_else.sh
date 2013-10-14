#!/bin/bash

directory="./BashScripting"

# bash check if dir exists
if [ -d $directory ]; then
	echo "Directory exists"
else
	echo "Directory doesn't exist"
fi

choice=4

# print choices
echo "1. Bash"
echo "2. Scripting"
echo "3. Tutorial"
echo -n "Please choose a word [1,2,3]?"

# while the variable choice is equal to 4
# spaces after and before [] matter!
while [ $choice -eq 4 ]; do

	read choice
	if [ $choice -eq 1 ]; then #first choice
		echo "You have chosen word: Bash"
	elif [ $choice -eq 2 ]; then
		echo "You have chosen word: Scripting"
	elif [ $choice -eq 3 ]; then
		echo "You have chosen word: Tutorial"
	else
		echo "Please make a choice between 1-3!"
		echo "1. Bash"
		echo "2. Scripting"
		echo "3. Tutorial"
		echo -n "Please choose a word [1,2,3]?"
		choice=4
	fi
done
