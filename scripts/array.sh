#!/bin/bash

ARRAY=('Debian Linux' 'Redhat Linux' Ubuntu Linux)

#get number of elements in the array
ELEMENTS=${#ARRAY[@]}

#echo each element

for (( i=0; i<$ELEMENTS; i++)); do
	echo ${ARRAY[${i}]}
done

# declare an array
declare -a AR

# link filedesc 10 with stdin
exec 10<&0

# stdin replaced with a file supplied as a first arg

exec < $1

let count=0

while read LINE; do
	AR[$count]=$LINE
	((count++))
done

echo "Number of elements: " ${#AR[@]}

# echo all the elements of the array
echo ${AR[@]}

# restore stdin from filedesc 10 & close filedesc 10
exec 0<&10 10<&-
