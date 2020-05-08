#!/bin/bash
source ccodes.sh 

# The purpose of this function is to return an hourly rate of pay when a pay level of 1,2 r 3 is entered
# It checks to see if 2. 2 or 3 has been entered.
# If yes, it returns the correct rate of pay, i.e. $25, $35, or $45
# If not, it notifies the user that the entered pay level ID is invalid

getpr() {
    local payrate=0
    if [[ $1 =~ ^[1-3] ]]; then
        case $1 in 
            1 ) payrate=25 ;;
            2 ) payrate=35 ;;
            3 ) payrate=45 ;;
        esac 
    fi 
    return $payrate
}

read -p 'Enter the employees pay scale ID: ' pscale
getpr $pscale
pph=$?
if [[ $pph -eq 0 ]]; then
    echo "Invalid Pay Rate ID entered"
else 
    echo -e "The employee's hourly rate is ${YELLOW}$pph${NCOL}"
fi