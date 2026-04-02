#!/bin/bash
filename="test.txt"

echo "Nhap mot chuoi ky tu" 
read strInput
flag=0
while IFS= read -r line; do
    if [[ *"$line"* == *"$strInput"* ]]; then
        echo "Da tim thay"
        flag=1
        break;
    fi
done < "$filename"

if [ "$flag" == 0 ] 
then
    echo "Khong tim thay"
fi
exit 0