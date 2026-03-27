#!/bin/bash
# Driver: Aris John Apolinario
# Navigator: Aris John Apolinario
# Date: 2026-03-27

if [[ $# -lt 2 ]]; then
	exit
fi

if [[ $1 -ge $2 ]]; then
	echo $1
else 
	echo $2
fi
