#!/bin/bash

if (( $# == 0)); then
    echo "Передано недостатчоно аргументов. Необходимо указать числа для сложения"
    exit 1
fi

sum=0

for arg in "$@"; do
    sum=$((sum + arg))
done

echo "$sum"