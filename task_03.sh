#!/bin/bash

if [[ -z "$VAR1" ]]; then
    echo "ERROR"
else
    if [[ $VAR1 =~ ^[0-9]+$ ]]; then
        echo "$((VAR1 * VAR1))"
    else
        echo "${VAR1}mama${VAR1}"
    fi
fi
        