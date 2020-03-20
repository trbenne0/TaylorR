#!/bin/bash

# script that calculates a casual employee's gross pay for the week then two values are provided
# value 1 is the pay scale applicable to the employee;
    # 1 is junior employee (who gets $12 per hour)
    # 2 is standard employee (who gets $16 per hour)
    # 3 is senior employee (who gets $21 per hour)
# value 2 is number of hours worked in that week (no less than 1, no more than 20)

while true; do
read -p "Enter the employee's pay scale: " payscale
    if [[ $payscale =~ ^[1-3] ]]; then
        echo "The employee's pay scale is $payscale."
        break

    else
        echo "Invalid pay code entered. Please try again."
    fi
done

while true; do
read -p "Enter the employee's work hours: " workhours
    if [[ $workhours =~ ^[0-9] ]] && [[ "$workhours" -ge 1 ]] && [[ "$workhours" -le 20 ]]; then
        echo "You have entered $workhours work hours."
        break

    else
        echo "Invalid pay code entered. Please try again."
    fi
done

case $payscale in   
    1) hourrate=12;;
    2) hourrate=16;;
    3) hourrate=21;;
esac


echo "This employee's hourly rate is \$$hourrate per hour."
grosspay=$(( workhours*hourrate ))
echo "The employee's grosspay is \$$grosspay"

exit 0