#!/bin/bash

MSGBBOX=${MSGBOX=dialog}
TITLE="Here is cool demo"
MESSAGE="CODEINFO"
XCORD=50
YCORD=50


displaymsgbox () {

	$MSGBOX --title "$1" --msgbox "$2" "$3" "$4"

}


if [ "$1" == "shutdown" ]; then
	displaymsgbox "Warning" "We are going to shut down" "11" "11"
	echo "shutting down"
else
	displaymsgbox "Information" "You are doing nothing" "11" "11"
	echo "no activity"
fi


