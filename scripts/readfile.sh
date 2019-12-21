#!/bin/bash

echo "enter filename to read"
read filename

set -x

while read -r DEVOPSTOOL;do
echo "DEVOPS TOOL : $DEVOPSTOOL"
done < "${filename}"

set +x

exit
