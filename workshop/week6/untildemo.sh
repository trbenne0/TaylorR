#!/bin/bash

# INSIDE A LOOP STRUCTURE:
    # Generate two random numbers, each between 1 and 10 invlusive
    # Add the two random numbers together and call them #result
    # Have user enter a nuber between 2 and 20 and assign to #usrval
    # Iterate until $result and $usrval match
    # Keep track of and report number of loops that occurred until match was achieved

source functions.sh 
source ccodes.sh 
result=0
counter=0

# Get the user's input

read -p 'Enter a number between 2 and 20 inclusive: ' usrval

# Create a loop that continues until $result matches #usrval

until [[ $result -eq $usrval ]]; do
    (( counter++ ))
    gen_rn 1 10
    rnum1=$rand_num
    gen_rn 1 10
    rnum2=$rand_num
    result=$(($rnum1 + $rnum2))
    if ! [[ $usrval -eq $result ]]; then
        echo -e "The entered value $usrval does ${RED}not match${NCOL} the randomly generated value $result"
        echo "The loop is being repeated"
    else
        echo -e "The entered value $usrval ${BLUE}does match${NCOL} the randomly generated value $result"
        echo "The loop is being exited"
    fi
done

# Report how loops were need to get the match
echo -e "The loop has been exited after ${YELLOW}$counter${NCOL} attempts to find a match"


exit 0