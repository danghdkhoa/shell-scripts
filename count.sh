#!/bin/bash

# check if an argument is provided

if [ -z "$1" ]; then 
    echo "Please provide a number as an argument."
    exit 1
fi 

# iterate from 0 to provided argument
for ((i = 0; i <= $1; i++)) 
do
    echo "Iteration: $i" >> result.txt
    sleep 1
done
