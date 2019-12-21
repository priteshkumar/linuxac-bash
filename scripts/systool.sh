#!/bin/bash


MENUBBOX=${MENUBOX=dialog}
INFOBOX=${INFOBOX=dialog}
XCORD=50
YCORD=50


#function declarations - start

displaymenubox () {

	$MENUBOX --title "[ MAIN MENU ]" --menu "Use up/down arrow keys to select option" "30" "30" 4 1 "Disk info" 2 "Memory info" 3 "Cpu info" X "Exit" 2>choice.txt

}


displayinfobox () {
	
	#echo "$2"
	$INFOBOX --title "$1" --infobox "$2" "$3" "$4"
	sleep 10

}


#function declarations - stop


#script - start

SHOWMENU=1
while [ ! -z $SHOWMENU ]; do

displaymenubox

case "`cat choice.txt`" in
	1)echo "display disk info "
	df -h > diskinfo.txt
	#chmod 777 diskinfo.txt	
	displayinfobox "System Disk info" "`cat diskinfo.txt`" "50" "120"
	;;

	2)echo "display Memory info"
	cat /proc/meminfo > meminfo.txt
	displayinfobox "System Memory info" "`cat meminfo.txt`" "90" "100"
	;;

	3)echo "display Cpu info"
	top > topinfo.txt
	displayinfobox "System Cpu info" "`cat topinfo.txt`" "120" "120"
	;;

	X)echo "exit"
	SHOWMENU=
	;;
esac
done

exit

