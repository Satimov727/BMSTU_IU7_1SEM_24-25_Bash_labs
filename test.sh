#!/bin/bash

res=""
count=0
while [ $((count*2)) -lt $(ls "tests" | wc -l) ]; do
	count=$((count+1))
	bash "comparator4.sh" "tests/file"$count".txt" "tests/file"$count".txt"
	res="$res$?"
done
echo $res > "result_of_test.txt"
if [ $(cat "result_of_test.txt") == $(cat "true_result_of_test.txt") ]; then
	echo "Тестирование пройдено"
	exit 0
else
	echo "Тестирование не пройдено"
	exit 1
fi