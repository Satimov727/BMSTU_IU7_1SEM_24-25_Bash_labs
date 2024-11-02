#!/bin/bash

read A

if [[ $A =~ ^[0-9]+$ ]]; then
    for ((i=0; i<=A/2; i++)); do
        echo $i
    done
else
    echo "A должно быть целым неотрицательным числом."
fi