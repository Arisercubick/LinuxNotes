#!/bin/bash

for i in {0..9999}; do
	var=$(bash port_check.sh $i)
	if [[ $var =~ *(open) ]]; then
		echo "The value is $i"
		exit 1
	fi
done

echo "There is no port open"
