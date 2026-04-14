#!/bin/bash
# By Aris John Apolinario

summer() {
	sum=$(( $1 + $2 ))
	echo $sum
	return 0
}

summer 4 5

validate_phone() {
	if [[ "$1" =~ ^\(?[0-9]{3,3}\)?.?\-?[0-9]{3,3}.?\-?[0-9]{4,4}$ ]]; then
		echo "true"
		return 0
	else 
		echo "false"
		return 1
	fi
}

echo $(validate_phone "(438)-432-4323")
echo $(validate_phone "4384324323")
