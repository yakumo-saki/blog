#!/bin/bash

for orgfile in `find ./ -name "*.md" -type f`; do
    # TODO
	orgbasename=`basename $orgfile`
	NEWFILE=_posts/`echo ${orgbasename:0:6}`/`basename $orgfile`
	NEWDIR=_posts/`echo ${orgbasename:0:6}`
	echo $NEWFILE
	mkdir $NEWDIR
	mv $orgfile $NEWFILE
done
