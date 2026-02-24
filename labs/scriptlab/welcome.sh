#!/bin/bash
#Aris John Apolinario
#February 24, 2026
#Purpose: the script is to practice command substitution and different ways to run a script

echo "Welcome $(whoami)"

my_use=$(whoami)
echo "Welcome again $my_user"

echo Bye $(whoami) the date is $(date +%F) #This command has two command substitutions


