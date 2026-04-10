#!/bin/bash
# By Aris John Apolinario
# This will list the values in descending order
arr=("$@") 
n=${#arr[@]} 

for ((i = 0; i < n - 1; i++)); do
	for ((j = 0; j < n - i - 1; j++)); do
		if [[ ${arr[j]} -gt ${arr[j + 1]} ]]; then
			temp=${arr[j]}
			arr[j]=${arr[j + 1]}
			arr[j + 1]=$temp
		fi
	done
done

for ((i = 0; i < n; i++)); do
	echo ${arr[i]}
done
