#!/bin/bash
#By arisercubick - Aris John Apolinario - 2532450

BACKUP_FILE="labs_$(date +"%Y-%m-%d_%H:%M:%S")"
mkdir -p ~/my_backup/$BACKUP_FILE
touch ~/my_backup/a > ~/my_backup/error_log.txt 
touch ~/my_backup/b > ~/my_backup/output_log.txt
rm -r ~/my_backup/b ~/my_backup/a
error="$HOME/my_backup/error_log.txt"
out="$HOME/my_backup/output_log.txt"
cp -r ../* ~/my_backup/$BACKUP_FILE

cd ~/my_backup/ 
echo "The current working directory is: $(pwd)" 2>> $error >> $out

echo "The of files and directories in $BACKUP_FILE: $(ls -al | cat | wc -l)" 2>> $error >> $out

mkdir ~/my_backup_links 2>> $error >> $out
ln -s ~/my_backup_links link.to.$BACKUP_FILE 2>> $error >> $out
ls -al link.to.$BACKUP_FILE 2>> $error >> $out
