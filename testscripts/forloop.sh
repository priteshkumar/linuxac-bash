#!/bin/bash


shfiles=`ls *.sh`
for script in "$shfiles"; do
	echo "$script"
	cat $script
done
