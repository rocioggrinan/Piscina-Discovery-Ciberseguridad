#!/bin/sh

# Check if argument was passed
if [ $# -eq 0 ]; then
    echo "Error: You need to provide an argument indicating the number of times the message will be displayed"
    exit 1
fi

# Assign the first argument to a variable
times=$1

# Verify that the parameter is a positive integer
if ! echo "$times" | grep -qE '^[0-9]+$'; then
    echo "Error: The parameter must be a positive integer"
    exit 1
fi

# Verify that the parameter is greater than zero
if [ "$times" -le 0 ]; then
    echo "Error: The parameter must be a positive integer greater than zero"
    exit 1
fi

i=0

while [ $i -lt $times ]
do
    echo "This looks good, @$1!"
    i=$((i + 1))
done
