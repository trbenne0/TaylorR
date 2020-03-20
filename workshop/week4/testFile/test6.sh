#!/bin/bash

# -eq is equal to if [ "$a" -eq "$b" ]
# -ne is not equal to if [ "$a" -ne "$b"]
# -gt is greater than if [ "$a" -gt "$b"]
# -ge is greater than or equal to if [ "$a" -ge "$b"]
# -lt is less than if [ "$a" -lt "$b"]
# -le is less than or equal to if [ "$a" -le "$b"]

val_a=25
val_b=27

# -eq demonstration
if [ "$val_a" -eq "$val_b" ]; then
    echo "These numbers are the same."
else
    echo "These numbers are NOT the same"
fi

# -ne demonstration
if [ "$val_a" -ne "$val_b" ]; then
    echo "These numbers are NOT the same."
else
    echo "These numbers are the same"
fi

# -gt demonstration
if [ "$val_a" -gt "$val_b" ]; then
    echo "$val_a is greater than $val_b."
else
    echo "$val_a is NOT greater than $val_b"
fi



# UV Index Recomendation Calculator
    # 0-2 Low (Minimal portoection required.)
    # 3-7 Moderate to high (standard protection required)
    # 8+ Very High to Extreme (Full protective measers required)

while true; do

read -p 'Enter a UV index value from 0 to 11: ' uvvalue

if [ "$uvvalue" -le 2 ]; then
    echo "UV level is Low. Minimal protection required."
    break
elif [[ "$uvvalue" -ge 3 ]] && [[ "$uvvalue" -le 7 ]]; then
    echo "UV level is Moderate to High. Standard protection required."
    break
elif [[ "$uvvalue" -ge 8 ]] && [[ "$uvvalue" -le 11 ]]; then
    echo "UV level is Very High to Extreme. Full protective measures required."
    break
else
    echo "Invalid UV index value entered - Please try again."
fi
done

exit



