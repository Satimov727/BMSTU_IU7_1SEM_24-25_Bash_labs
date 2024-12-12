#!/bin/bash

if [[ $# != 2 ]]; then
    echo "Требуется два файла для сравнения."
    exit 1
fi

file1="$1"
file2="$2"

floats1=$(echo -e "$file1" | grep -woE "^-?[0-9][0-9]*(\.[0-9][0-9]*)?$")
floats2=$(echo -e "$file2" | grep -woE "^-?[0-9][0-9]*(\.[0-9][0-9]*)?$")

if [[ "$floats1" == "$floats2" ]]; then
    if [[ $3 == "-v" ]]; then
        echo "Файлы совпадают."
    fi
    exit 0
else
    if [[ $3 == "-v" ]]; then
        echo "Файлы различаются."
    fi
    exit 1
fi