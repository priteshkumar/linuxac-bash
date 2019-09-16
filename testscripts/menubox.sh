#!/bin/bash

MENUBBOX=${MENUBOX=dialog}

displaymenubox () {

	$MENUBOX --title "[ MAIN MENU ]" --menu "Use up/down arrow keys to select option" "11" "11" 4 1 "Python" 2 "golang" 3 "bash" X "Exit" 2>choice.txt

}


if [ "$1" == "shutdown" ]; then
	displaymsgbox "Warning" "We are going to shut down" "11" "11"
	echo "shutting down"
else
	displaymsgbox "Information" "You are doing nothing" "11" "11"
	echo "no activity"
fi

displaymenubox

case "`cat choice.txt`" in
	1)echo "python selected";;
	2)echo "golang selected";;
	3)echo "bash selected";;
	X)echo "exit";;
esac



