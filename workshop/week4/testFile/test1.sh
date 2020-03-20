#!/bin/bash

currtemp=24
read -p 'Guess the current temperature: ' guesstemp

#test "$guesstemp" = "$currtemp" && echo "Correct! The current temperature is $currtemp" && exit 0
[ "$guesstemp" = "$currtemp" ] && echo "Correct! The current temperature is $currtemp" && exit 0
echo "Incorrect! The current temperature is $currtemp, not $guesstemp"; exit 1


# [ ] can be used instead of test to test