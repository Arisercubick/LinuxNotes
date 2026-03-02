#!/bin/bash
# Aris John Apolinario - 2532450

THEPATH="$HOME/skel/web"
mkdir testing
cd testing
cp -rvi $THEPATH/assets ./assets
cp -rvi $THEPATH/assets/lib ./assets/lib
cp -rvi $THEPATH/assets/img ./assets/img
cp -rvi $THEPATH/index.html ./index.html
cp -rvi $THEPATH/js ./js
