#!/bin/bash

for orgfile in `find . -name "*.md-e" -type f`; do
echo $orgfile
rm $orgfile
done
