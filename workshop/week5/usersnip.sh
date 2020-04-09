#!/bin/bash

case var in
{testitems} )
# code if match
;;
{testitems} )
# code if match
;;
{testitems} )
# code if match
;;
*) # default case
# code if default case
;;
esac

read - p 'Prompt text: ' var

if [[ {andtest} ]] && ( [[ {oroption1} ]] || [[ {oroption1} ]] ); then
# code if true
else
# code if false
fi