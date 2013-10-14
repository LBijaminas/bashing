#!/bin/bash

echo $1 $2 $3 ' -> echo $1 $2 $3'

args=("$@") # special array of command line arguments

echo ${args[0]} ${args[1]} ${args[2]} ' -> args=($"@"); echo ${args[0]} ${args[1]} ${args[2]}'

# use $@ to print out all the arguments at once
echo $@ ' -> echo $@'

# use $# variable to print out the number of arguments passed to the bash script

echo "Number of arguments passed: " $#
