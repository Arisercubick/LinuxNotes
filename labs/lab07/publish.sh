#!/bin/bash
# arisercubick - Aris John Apolinario - 2532450

source_path=$(pwd)
dirname=$(basename $source_path)
destination="$HOME/public_html"
rm -rf "$destination/*"

find $destination -type d -exec chmod -v a+x {} \;

cp -rv testing/* "$destination/"
