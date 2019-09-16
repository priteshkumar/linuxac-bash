#!/bin/bash

echo "add test options more!!!!"
echo "add menu start screen!!!!"
echo "Here are the menu options"
echo "1) enter 1"
echo "2) enter 2"
echo "3) enter 3"
read CHOICE

case $CHOICE in
	1) 
		echo "choice is 1";;
	2) 
		echo "choice is 2";;
	3) 
		echo "choice is 3";;
	*)
		echo "didnt match any of the right choice";;

esac

