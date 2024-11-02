#!/bin/bash

is_number() {
    re='^[0-9]+$'
    if ! [[ $1 =~ $re ]]; then
        return 1
    else
        return 0
    fi
}

if [ $# -eq 0 ]; then
    echo "Не переданы аргументы. Передайте числа для сложения."
    exit 1
fi

sum=0

for num in "$@"; do
    if is_number "$num"; then
        sum=$((sum + num))
    else
        echo "ERROR"
        exit 1
    fi
done

echo "$sum"