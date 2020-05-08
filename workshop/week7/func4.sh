#!/bin/bash

# The purpose of this function is to calculate the cubic volume of rooms in a house
# Here I demonstrate two key concepts from the lecture:
    # 1. Localising a function variable
    # 2. Command substitution

ccsp() {
    local volume
    volume=$(($1*$2*$3))
    echo $volume
}

room1=$(ccsp 4 3 2)
room2=$(ccsp 5 4 2)
room3=$(ccsp 6 5 2)

echo "Room 1 is $room1 cubic metres"
echo "Room 2 is $room2 cubic metres"
echo "Room 3 is $room3 cubic metres"

exit 0