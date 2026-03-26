#!/bin/sh

# findString.sh
# This script will find in current directory
# all files contain 'main()'
# Then print the content of that file to terminal

for file in *; do
    if grep -l 'main()' $file; then 
        more $file
    fi
done
exit 0