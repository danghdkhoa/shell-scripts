#!/bin/bash

filename="monhoc.txt"

name="Dang Huynh Dang Khoa"

mkdir "$name"

while IFS= read -r  line; do
    mkdir "./$name/$line/"
done < "$filename"