#!/bin/bash

source ccodes.sh

# This function is designed to take two arguments 1) a search string, and 2) a webpage adress_
# having been called and receiving these arguments, the function downloads the page's html code to file named 'wpage.txt'
# the fucktion then searches the wpage.txt file using grep to find and count all matches with the search string_
# the function then echos the result to the screen

gwtc() {
    curl -s $2 > wpage.txt
    wcnt="`grep -c -i $1 wpage.txt`"
    echo -e "This web page has ${YELLOW}$wcnt${NCOL} instances of the term ${GREEN}$1${NCOL}"
}

read -p 'Enter search term: ' sterm
echo -e "The search term will be conducted for ${YELLOW}$sterm${NCOL}"
read -s -p 'Enter a web page address: ' url
echo -e "${RED} Scanning webpage now...${NCOL}"
gwtc $sterm $url