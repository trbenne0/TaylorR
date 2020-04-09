#!/bin/bash

# Read a text file and echo out all the lines that contain a specific string (word)
# Highlight each match on each line found

counter=0

read -p 'Enter search term: ' searchterm

while read line; do
    if [[ $line =~ $searchterm ]]; then
        (( counter++ ))
        if [[ $counter -eq 1 ]]; then
            echo "$counter) $line" > temp.txt
        else
            echo "$counter) $line" >> temp.txt
        fi 
    fi

done < philosophy.txt 

# If not empty, echo out the temp.txt file with search term highlighted on each line
if [[ $counter -eq 1 ]]; then
    grep --color=always -e "^" -e "$searchterm" temp.txt
else
    echo "No matches found"
fi

exit 0