#!/bin/bash
# bash trap command

trap bashtrap INT
clear;

# interrupt handler
bashtrap() {
	echo "CTRL+C Detected ! Bash trap"
}

for a in `seq 1 10`; do # look from 1 to 10
	echo "$a/10 to Exit."
	sleep 1;
done

echo "Exit bash trap example!"
