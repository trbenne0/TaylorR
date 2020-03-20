#!/bin/bash

rtDir=~/CSP2101/

# ask the user to select a directoy in CSP2101 directory
while true; do

    echo "AVAILABLE DIRECTORIES:"
    ls $rtDir
    read -p 'Select a directory from the list above: ' seldir

        if ! [ -d "${rtDir}${seldir}" ]; then # ~/CSP2101/workshop
            echo "That directory does not exist. Please try again."

        else
            echo "You have selected $seldir directory."
            break
        fi
done

#request a new password for the user
while true; do

    read -s -p 'Enter a new password for future use: ' selpw
        if ! [ -z "$selpw" ]; then
            echo "Thank you. Password accepted."
            break
        else
            echo "no password provided - Please try again."
        fi

done

#Write psasword to text file in nominated directory
if ! [ -f "${rtDir}${seldir}/secret.txt" ]; then
    echo "The fire secret.txt does not exist. creating it now.."
    touch ${rtDir}${seldir}/secret.txt
    echo "Password now being written to file.."
    echo "$selpw" > "${rtDir}${seldir}/secret.txt"
    echo "Password has been written to ${rtDir}${seldir}/secret.txt"
    cat "${rtDir}${seldir}/secret.txt"
else
    echo "The file secret.txt already exists. Password being written now.."
    echo "$selpw" > "${rtDir}${seldir}/secret.txt"
    echo "Password has been written to ${rtDir}${seldir}/secret.txt"
    cat "${rtDir}${seldir}/secret.txt"
fi

exit 0