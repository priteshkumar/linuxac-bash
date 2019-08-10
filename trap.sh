#!/bin/bash


trap 'echo " - Please enter p to exit...."' SIGINT SIGTERM SIGTSTP SIGKILL


while [ "$choice" != "p" ] && [ "$choice" != "P" ]; do
	echo "menu"
	echo "1)choice 1"
	echo "2)choice 2"
	echo "3)choice 3"
	echo "p)exit"

	echo " "
	read choice
	clear
done




