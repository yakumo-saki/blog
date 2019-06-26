#!/bin/bash

for orgfile in `find . -name "*.md" -type f`; do
	basename=`basename $orgfile`
	NEWFILE=`dirname $orgfile`/`echo ${basename:0:8}`__`echo ${basename:9}`
	mv $orgfile $NEWFILE
	echo $NEWFILE
done
