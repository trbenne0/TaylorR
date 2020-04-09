#!/bin/bash
# Grab assignment results from grades.txt and echo them to the screen in tabulated format_
 # calculating and displaying score and final result
 # Make sure that results below 50 are highlighted red

 #IFS stands for Input Field Separator

 source functions.sh

 echo -e "Student\tGrade1\tGrade2\tGrade3\tScore\tResult" 
 while IFS=", " read sname status grade1 grade2 grade3 
 do
    if [[ "$status" == 'VET' ]]; then
        continue
    fi
    score=$(( grade1 + grade2 + grade3 ))
    calcresult $score
    echo -e "$sname\t$grade1\t$grade2\t$grade3\t$score\t$result"
 done < grades.txt

 exit 0