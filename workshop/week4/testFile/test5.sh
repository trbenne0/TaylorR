#!/bin/bash

var1=10
var2=5

# Using the LET command
let sum=$var1+$var2
echo "The sum of these variables is $sum"

# Using the EXPR method
exprdiff=$( expr $var1 - $var2 )
echo "The difference between these variables is $exprdiff"

# Using the double brackets method
dbdiv=$(( var1 / var2 ))
echo "The dividend of these two variables is $dbdiv"