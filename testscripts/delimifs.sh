#!/bin/bash


clear

echo "enter filename"
read file

echo "enter delim"
read delimiter


IFS="$delimiter"

while read -r CPU MEMORY DISK; do
	echo "CPU : $CPU"
	echo "MEMORY: $MEMORY"
	echo "DISK : $DISK"
done <"$file"
