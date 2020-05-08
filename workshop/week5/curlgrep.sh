#!/bin/bash

# This script tests to see if a website is likely to be built with Wordpress
# It does so by scanning the webpage code for keyworkds specific to Wordpress
# It asks the user to enter the home page address of a website to test
# curl downloads the page and pops it into a temporary text file
# grep scans the text file and counts each instance of a matching word
# The fnial result is calculated and a report 'Wordpress / not Wordpress' is made to the user


wpcount=0  # wordpress
wpccount=0 # wp-content
wpicount=0 # wp-include


read -s -p 'Please provide a full URL to test: ' URL

curl $url > wpage.txt

wpcount="`grep -c -i 'wordpress' wpage.txt`"
echo "The term wordpress appears $wpcount times in this website"

wpccount="`grep -c -i 'wp-content' wpage.txt`"
echo "The term wp-content appears $wpccount times in this website"

wpicount="`grep -c -i 'wp-includes' wpage.txt`"
echo "The term wp-includes appears $wpicount times in this website"

if [[ $wpcount > 0 ]] && [[ $wpccount > 0 ]] && [[ $wpicount > 0 ]]; then
    echo "This is definitely a Wordpress website"
else
    echo "This is unlikely to be a Wordpress website."
fi

exit 0