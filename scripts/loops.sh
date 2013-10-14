#!/bin/bash

for f in $( ls /var/ ); do
	echo $f
done

COUNT=6

while [ $COUNT -gt 0 ]; do
	echo "Valued of count is ${COUNT}"
	let COUNT-=1
done

until [ $COUNT -gt 5 ]; do
	echo "Valued of count is ${COUNT}"
	let COUNT+=1
done

# This bash script will locate and replace spaces in the filenames
DIR="."

# Controlling a loop with bash read command by redirecting STDOUT as
# a STDIN to while loop
#find will not truncate filenames containing spaces

find $DIR -type f | while read file; do
	# using POSIX class [:space:] to find space in the filename
	if [[ "$file" = *[[:space:]]* ]]; then
		# substitute space with "_" and consequently rename the file
		mv "$file" `echo $file | tr ' ' '_'`
	fi;
done
