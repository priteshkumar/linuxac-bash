#!/bin/bash

INFOBOX=${INFOBOX=dialog}
TITLE="Here is cool demo"
MESSAGE="CODEINFO"
XCORD=50
YCORD=50


displayinfobox () {

	$INFOBOX --title "$1" --infobox "$2" "$3" "$4"
	sleep "$5"
}


if [ "$1" == "shutdown" ]; then
	displayinfobox "Warning" "We are going to shut down" "11" "11" "5"
	echo "shutting down"
else
	displayinfobox "Information" "You are doing nothing" "11" "11" "5"
	echo "no activity"
fi


