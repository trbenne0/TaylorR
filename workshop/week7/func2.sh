#!/bin/bash
source ccodes.sh 

# The purpose of this unction is to convert kilometres to miles
# The user enters the desired KM ot be converted to miles
# The Function converts the user value to miles and echos to the screen

ktm() {
    toMiles=1.60934
    echo "You want $1 km converted to miles..."
    miles=$(echo "scale=2; $1/$toMiles" | bc)
    echo -e "${YELLOW}$1${NCOL} km is equivalent to ${GREEN}$miles${NCOL} miles."
}

read -p 'Enter kilometres to convert to miles: ' kvar
ktm $kvar