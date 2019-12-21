#!/bin/bash


MENUBBOX=${MENUBOX=dialog}
INFOBOX=${INFOBOX=dialog}
XCORD=50
YCORD=50


#function declarations - start

displaymenubox () {

	$MENUBOX --title "[ MAIN MENU ]" --menu "Use up/down arrow keys to select option" "11" "11" 4 1 "Disk info" 2 "Memory info" 3 "Cpu info" X "Exit" 2>choice.txt

}


displayinfobox () {

	$INFOBOX --title "$1" --infobox "$2" "$3" "$4"
	sleep 5

}


#function declarations - stop


#script - start

displaymenubox

case "`cat choice.txt`" in
	1)echo "display disk info "
	
	displayinfobox "System Disk info" "`cat "`df -h`"`" "100" "70"
	;;
	2)echo "display Memory info";;
	3)echo "display Cpu info";;
	X)echo "exit";;
esac

displaymenubox

exit

