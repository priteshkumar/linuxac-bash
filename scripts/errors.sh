#!/bin/bash

echo "enter directory name.."
read directory

echo "try switching to path $directory"

#set -x
cd $directory 2>/dev/null

if [ "$?" = "0" ]; then
	echo "`ls -al`"
	echo	
	echo "$(ls -al)"
else
	echo "cannot change to $directory , exiting with error"
	exit 199
fi

#set +x

