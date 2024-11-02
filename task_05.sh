#!/bin/bash

read A
read B

sum=$((A + B))
sum2=$((A + B * B))
sum3=$((A * A - B * B))

echo "$sum $sum2 $sum3"