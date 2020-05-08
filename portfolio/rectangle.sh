# Student Name & Number: Taylor Bennett - 10449489
#!/bin/bash

if ! [ -f rectangle.txt ] ; then   # Searching to see if the text file "rectangle.txt" exists
    echo "No file to process."     # If not, an error message will occur and the script will exit.
    exit 0
                                                    # However, if the script does exist, this part of the code will excecute
else                                                # Using the sed command to strip the first line from rectangle.txt and>
    sed '1d' rectangle.txt > rectangle_holder.txt   # put it in a placeholder 'rectangle_holder.txt' file.
    awk 'BEGIN {FS=","}                            
    { printf "%-13s %-12s %-12s %-12s %-15s\n",
     "Name: " $1, "Height: " $2, "Width: " $3, "Area: " $4, "Colour: "  $5 }' rectangle_holder.txt > rectangle_f.txt
fi
    # Line 10: FS="," is used to seperate the words from the , in the rectangle_holder.txt file
    # Line 11: Using the printf commant to format the final product propery, the %-13s and others are used>
    # to evenly space out the file so there is no overlapping of numbers.
    # Line 12: Simply adding the required text needed to be put in front of the allocated numbers $1, $2, ect.
    # Also the final part of the program where we use the awk process to change the rectangle_holder.txt
    # informaation and place it in a new txt file called rectangle_f.txt