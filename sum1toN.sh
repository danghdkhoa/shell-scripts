#!/bin/bash

echo "Nhap so a ( a > 10): "
read number
while [ "$number" -lt 10 ]
do
    echo "Khong thoa man dieu kien, nhap lai a:"
    read number
done 

sum=0
a=1
while [ "$a" -le "$number" ]
do
    (( sum+=a ))
    a=$(($a+1))
done
echo "$sum"
exit 0