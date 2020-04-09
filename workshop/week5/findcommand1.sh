#!/bin/bash

# Search for all files in CSP2101 directory and all of its sub-directories
# File name or part thereof to be provided by user
# Where matching files are found AND which are NOT empty, backup to /backups directory
# Each backed up file MUST have a unique name by pretending existing name with unique identifiers
# Tell user how much backups performed / not performed

source calcrand.sh 

rtdir=~/CSP2101 budir=~/CSP2101/backups bufile="" tmstamp='date +%s'
sepchar="_" pathsep="/" succount=0 failcount=0

read - p 'Enter the name or part name of the file(s) you wish to backup: ' reqfile
for i in $(find $rtdir -name $reqfile\*); do

    if [ -s "$i" ]; then
        calc_rand 1 99
        origpath=${i%/*}
        origfile=${i##*/}
        bufile="$tmstamp$sepchar$rand_num$sepchar$origfile"
        cp $origpath$pathsep$origfile $origpath$pathsep$bufile
        mv $origpath$pathsep$bufile $budir
        (( succount++ ))
    else
        echo "The $1 file is empty and was not backed up."
        (( failcount++ ))
    fi


done

echo "$succount files were backed up successfully to the $budir"
echo "$failcount file(s) were not backed up."