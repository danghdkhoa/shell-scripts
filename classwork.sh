#!/bin/bash

name="Dang Khoa"
sid="24520809"




for ((i = 0; i <= 5; i++))
do
    echo Enter name:
    read inputName
    echo Student ID: 
    read inputSID
    if [ "$inputName" = "$name" -a "$inputSID" = "$sid" ] 
    then
        echo "Xin chao $inputName"
        exit 0
    else 
        echo "Access denied"
    fi
done

exit 0

