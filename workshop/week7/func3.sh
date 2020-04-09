#!/bin/bash

# The purpose of this function is to calculate the area of a circle when the radius is provided
# The function first verifies that the value passed to it is an integer OR a float
# If yes, then the function calculates the area and echos the result to the screen
# If not, then the function echos an error message to the screen


source ccodes.sh 

ccarea() {
    pi_val=$(echo 3.14159)
    
    if [[ "$1" =~ ^[0-9]+$ ]] || [[ "$1" =~ ^[-+]?[0-9]+\.?[0-9]+$ ]]; then
        area=$(echo "scale=2; $pi_val*$1*$1" | bc) #bc is the bash calculator
        echo -n "The area of a circle with a radius of $1 units is "
        printf "%0.2f" $area
        echo "Units squared."
    else
        echo "Invalid value entered. Calculation failed."
        exit 1
    fi
}

read -p 'Enter a radius value: ' rval
ccarea $rval