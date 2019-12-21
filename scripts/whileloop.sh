#!/bin/bash


echo "enter loop count"
read count
num=0
while [ "$num" -lt "$count" ]; do
	num=`expr $num + 1`
	echo "$num)this really rocks"
done
