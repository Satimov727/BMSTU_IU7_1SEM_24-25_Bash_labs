#!/bin/bash

read A
read B

if [[ $B =~ ^[0-9]+$ ]]; then
    
    for ((i=0; i<B; i++)); do
        echo "$A"
    done
else
    echo "B должно быть целым неотрицательным числом"
fi