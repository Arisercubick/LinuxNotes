#!/bin/bash

# Check for exactly ONE argument
if [[ $# -ne 1 ]]; then
	echo "There is more or less 1 argument, please input exactly one argument"
	exit 1
fi
# Execute the command silently (-q quiet) 

ss -tuln | grep -q ":1 " # <- Space after the arg
# Check the exit code explicitly

if [[ $? -eq 0 ]]; then
	echo "port is open"
else
	echo "port is down"
fi
