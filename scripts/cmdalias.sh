#!/bin/bash

shopt -s expand_aliases
TODAYSDATE=`date`
USERFILES=`find /home/edureka/pritesh -user edureka`

echo "Today's date is : $TODAYSDATE"
echo "$USERFILES"
alias TODAY="date"
alias USERFILS="find /home/edureka/pritesh -user edureka"

echo "###############using alias cmds"
echo "Today's date is : `TODAY`"
FILELIST=`USERFILS`
echo $FILELIST

#echo "${FILELIST[*]}"

COUNT=0
#for index in ${FILELIST[@]}; do
#	echo "${FILELIST[COUNT]}"
#	COUNT="`expr $COUNT + 1`"
#done

