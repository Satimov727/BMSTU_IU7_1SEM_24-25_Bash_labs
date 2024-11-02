#!/bin/bash

if [[ -z "$VAR1" || -z "$VAR2" ]]; then
    echo "ERROR"
else
    result=$((VAR1 + VAR2))
    echo $result
fi