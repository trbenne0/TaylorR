#!/bin/bash

# Logical test with IF/ELSE structure to see if a user can see directory's contents
rtdir=~/CSP2101/
acclevel=delta

echo "SELECT A DIRECTORY FROM THE LIST BELOW TO VIEW ITS CONTENTS:"
ls $rtdir 
read -p 'Folder required: ' selfol

    if [[ -d "$rtdir$selfol" ]] && ( [[ "$acclevel" = 'delta' ]] || [[ $USER = 'student' ]] );  then
        echo "You have selected the $selfol directory"
        ls $rtdir$selfol
    else
        echo "You have entered an invalid directory."
    fi