#!/bin/bash
# Global var
VAR="global variable"

function bash { #space before curly bracket matters!
	local VAR="local variable"
	echo $VAR
}

echo $VAR
bash
echo $VAR
