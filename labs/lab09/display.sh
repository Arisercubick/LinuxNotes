#!/bin/bash
# Driver Aris John Apolinario
# Navigator: Aris John Apolinario
# This script just display the stats of information
# Date: 2026-03-27

# this function is to identify the OS type

osType() {
	if [[ "$(uname -s)" == "Linux" ]]; then
		echo "GNU/Linux"
	else 
		echo "$OSTYPE"
	fi
}

dir=$(basename $0)
echo "$dir: The logged-n username is $(whoami)"
echo "$dir: The current working dir is $SHELL"
echo "$dir: The name of the shell is $0"

OS=$(osType)
echo "$dir: The operating system is $OS"
echo "$dir: The kernal is $(uname -s)"
echo "Total files: $(find . -name *.conf | wc -l)"
