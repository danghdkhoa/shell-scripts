#!/bin/sh

salutation="Hello"
echo $salutation
echo "The program $0 is now running"
echo "The second parameter was $2"
echo "The first parameter was $1"
echo "The parameter list as a single string $*"
echo "The parameter list as a seperate words $@"

exit 0