#!/bin/bash

echo -e "Type the word: \c"
read word
echo "The word entered is $word"
echo -e "Can you enter two words? "
read word1 word2
echo "Here's your input: $word1 $word2"

echo -e "How do you feel about bash scripting? "

# read command now stores a reply into the default build-in var $REPLY
read
echo "You said '$REPLY', I'm glad to hear that! "
echo -e "What are you favorite colors?"

# -a makes read command to read int an array
read -a colors
echo "My favorite colors are also ${colors[0]}, ${colors[1]}, and ${colors[2]}"
