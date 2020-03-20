#!/bin/bash
read -p 'Provide a name for the new directory: ' foldername
# echo "$foldername" - this was to test if it worked
mkdir $foldername
echo "The $foldername directory has been created."
cp foldermaker.sh $foldername
echo "the file foldermaker.sh has been copied to the $foldername directory."

