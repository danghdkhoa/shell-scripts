#!/bin/bash

PNG="png"
JPG="jpg"
JPEG="jpeg" 

if [ -d "$PNG" ]; then
    echo "'$PNG' exists!"
else
    mkdir "$PNG"
    echo "'$PNG' was created"
fi

if [ -d "$JPG" ]; then
    echo "'$JPG' exists!"
else
    mkdir "$JPG"
    echo "'$JPG' was created"
fi

if [ -d "$JPEG" ]; then
    echo "'$JPEG' exists!"
else
    mkdir "$JPEG"
    echo "'$JPEG' was created"
fi

path="/home/dkhoa/Projects/School-projects/shell-scripts/OS_LAB2_IMG"


count_png=0
count_jpg=0
count_jpeg=0

for file in "$path"/*; do
    if [[ -f "$file" ]]; then
        case "$file" in 
            *.png)
                mv "$file" "/home/dkhoa/Projects/School-projects/shell-scripts/png"
                count_png=$(($count_png+1))
            ;;
            *.jpg)
                mv "$file" "/home/dkhoa/Projects/School-projects/shell-scripts/jpg"
                count_jpg=$(($count_jpg+1))
            ;;
            *.jpeg)
                mv "$file" "/home/dkhoa/Projects/School-projects/shell-scripts/jpeg"
                count_jpeg=$(($count_jpeg+1))
            ;;
        esac
    fi
done

echo "Number of *.png files: $count_png"
echo "Number of *.jpg files: $count_jpg"
echo "Number of *.jpeg files: $count_jpeg"
