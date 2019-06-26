#!/bin/bash

for orgfile in `find . -name "*.md" -type f`; do
sed -i -e "s/categories:/tags:/g" $orgfile
echo $orgfile
done
