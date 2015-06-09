#!/bin/bash
#: Description : Read two numbers and return the sum

echo "Please enter two numbers:"
read a b 
sum=$((a+b))
printf "The sum is %d\n" "$sum"
