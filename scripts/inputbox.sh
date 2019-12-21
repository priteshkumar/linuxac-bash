#!/bin/bash

INPUTBOX=${INPUTBOX=dialog}
TITLE="Enter filename"
MESSAGE="Display filecontents"
XCORD=50
YCORD=50


displayinputbox () {
	
	$INPUTBOX --title "$1" --inputbox "$2" "$3" "$4" 2>tempfile.txt

}


displayinputbox "Display filename" "which file u want to display" "30" "30"

if [ -f "tempfile.txt" ]; then
	cat "$(cat tempfile.txt)"
	sleep 2
	rm tempfile.txt
else
	echo "no such file exists"
fi


exit

