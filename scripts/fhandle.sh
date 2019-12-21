#!/bin/bash


clear
echo "enter filename"
read file

exec 5<>$file

while read -r proglang; do
	echo "$proglang"
done <&5

echo "`date`" >&5

exec 5>&-

