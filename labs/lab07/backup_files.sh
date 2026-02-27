#!/bin/bash
#By arisercubick - Aris John Apolinario - 2532450

BACKUP_FILE="labs_$(date +"%Y-%m-%d_%H:%M:%S")"
BACK_LINK="~/my_backup/$BACKUP_FILE"
mkdir -p $BACK_LINK
myBack="~/my_backup"
touch $myBack/a > $myBack/error_log.txt 
touch $myBack/b > $myBack/output_log.txt
rm -r $myBack/b $myBack/a
error="$myBack/error_log.txt"
out="$myBack/output_log.txt"
cp -r ../* $BACK_LINK

cd $BACK_LINK 
echo "The current working directory is: $(pwd)" 2>> $error 

echo "The of files and directories in $BACKUP_FILE: $(ls -al | cat | wc -l)" 2>> $error

mkdir ~/my_backup_links 2>> $error
ln -s ~/my_backup_links link.to.$BACKUP_FILE 2>> $error
ls -l link.to.$BACKUP_FILE 2>> $error
