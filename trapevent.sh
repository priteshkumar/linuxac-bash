#!/bin/bash


TEMPF1="tmpfile1.txt"
TEMPF2="tmpfile2.txt"

trap 'funcexit' EXIT

funcexit () {

	echo "trapped exit"
	rm -rf tmpfile1.txt
	rm -rf tmpfile2.txt
	exit 255 
}

#trap 'funcexit' EXIT

echo "here are algorithm samples" > $TEMPF1
echo "herer are ds samples" > $TEMPF2


cp -rf $1 code.txt 2>/dev/null

if [ "$?" -eq "0" ]; then
	echo "copied file"
else
	echo "file copy failure"
	exit 1
fi




