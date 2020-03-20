#!/bin/bash

rtdir=~/CSP2101/

while true; do

echo "AVAILABLE DIRECTORIES IN $rtdir:"
ls $rtdir

read -p 'Select a directory from the list above: ' seldir

if [ -d "${rtdir}${seldir}" ]; then # ~/CSP2101/workshop
  # echo "The selected directory exists."
  echo "You have requested to see the contents of the $seldir directory:"

      if [ "$(ls -A ${rtdir}${seldir})" ]; then
         # echo "Yes, there are files in there."
         ls ${rtdir}${seldir}
      else
         echo "The $seldir directory is empty."
      fi
      break

else
  echo "The directory entered does NOT exist."
fi

done