#!/bin/bash

if [[ -z "${VAR1}" ]]; then
    read -p "" VAR1
fi

SQUARE=$((VAR1 * VAR1))
echo $SQUARE