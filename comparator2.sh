#!/bin/bash

if [[ $# != 2 ]]; then
    echo "Требуется два файла для сравнения."
    exit 1
fi

file1="$1"
file2="$2"

content1=$(grep -A1 'string:' "$file1" | tail -n 1)
content2=$(grep -A1 'string:' "$file2" | tail -n 1)

if [[ "$content1" == "$content2" ]]; then
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