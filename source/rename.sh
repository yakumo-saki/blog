#!/bin/bash

for orgfile in `find . -name "*.md" -type f`; do
	NEWFILE=`echo ${orgfile} | sed 's/\([0-9]\{4,4\}\)-\([0-9][0-9]\)-\([0-9][0-9]\)-/\1\2\3_/g'`
	mv $orgfile $NEWFILE
	echo $NEWFILE
done
