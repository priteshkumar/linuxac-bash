#!/bin/bash


echo "enter a number between 1-3"
read number

if [ "$number" -eq "1" ] 2>/dev/null; then
	echo "1 entered"
elif [ "$number" -eq "2" ] 2>/dev/null; then
	echo "2 entered"
elif [ "$number" -eq "3" ] 2>/dev/null; then
	echo "3 entered"
else
	echo "wrong entry"
fi
