#!/bin/bash

read STR1

read STR2

CONCATENATED="${STR1}${STR2}"

export VAR3="$CONCATENATED"

echo "$VAR3"