#!/bin/bash
#
# Your configuration stuff should go here - replace these with whatever you want
SRC=/home/alasin/source
DEST=/home/alasin/source/converted
DEST_EXT=mp4
HANDBRAKE_CLI=HandBrakeCLI

#
# The meat of the script
for FILE in `ls $SRC`
do
        filename=$(basename $FILE)
        extension=${filename##*.}
        filename=${filename%.*}
#
        $HANDBRAKE_CLI -i $SRC/$FILE -o $DEST/$filename.$DEST_EXT -q 35 
done
