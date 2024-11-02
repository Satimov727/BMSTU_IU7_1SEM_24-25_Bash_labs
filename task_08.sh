#!/bin/bash

read A

if [[ $A =~ ^[0-9]+$ ]]; then
    SQUARE=$((A * A))
    echo $SQUARE
else
    CONCATENATED="$A$A"
    echo $CONCATENATED
fi