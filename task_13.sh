#!/bin/bash

if [[ $# != 2 ]]; then
    echo "Необходимо передать два аргумента"
    exit 1
fi

arg1=$1
arg2=$2

echo "$arg1$arg2"