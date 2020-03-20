# Student Name & Number: Taylor Bennett - 10449489
#!/bin/bash

echo "Welcome to Taylor's Age Guessing Game"   # Welcome message.
(( answer = RANDOM % 50 + 20 ))                # Applying a randomly generated number between
                                               # 20 and 70 to the variable "answer".


while true; do

read -p 'Guess any age between 20 and 70 years old: ' guess # Asking user for input and storing it in
    if [ "$guess" -lt "$answer" ]; then                     # a variable called "guess".
        echo "Too Low"  
        # echo "$answer" - Testing phase code                # Inner code will determine if the $guess is
    elif [ "$guess" -gt "$answer" ]; then                    # either less than, greater than or equals to the $answer
        echo "Too High"
        # echo "$answer" - Testing phase code
    elif [ "$guess" -eq "$answer" ]; then
        echo "Contratulations! $answer is correct!"
        break                                               # Break out of the game once user has won.
    else
        echo "Invalid Entry - Pease Try Again"              # If user does not enter an integer,
    fi                                                      # a error message will occur.
    done

exit
    