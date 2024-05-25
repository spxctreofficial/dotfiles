#!/bin/sh
FILE_PATH=~/Pictures/maim
FILE=$(date +"%m-%d-%Y-%T.png")

mkdir -p $FILE_PATH
echo > $FILE_PATH/$FILE
maim -s $FILE_PATH/$FILE -m 9 -f png && xclip -selection clipboard -t image/png $FILE_PATH/$FILE
