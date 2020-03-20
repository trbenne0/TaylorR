#!/bin/bash

# Using -a for AND and -o for OR in a logical test if a user can see directory's contents

rtdir=~/CSP2101/
acclevel=delta

echo "SELECT A DIRECTORY FROM THE LIST BELOW TO VIEW ITS CONTENTS:"
ls $rtdir 

read -p 'Folder required: ' selfol
echo "You have selected the $selfol directory."

[ -d "$rtdir$selfol" -a "$acclevel" = 'delta' -o $USER = 'student' ] && ls "$rtdir$selfol" && exit 0 # -o $USER = 'student' (= me)
echo "Sorry, that folder does not exist, or you do not have access rights to it."; exit 1