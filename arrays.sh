#!/bin/bash


SERVERLIST=("devhyd" "devscl" "devbdc" "devaustin" "devmarkham" "devsng")
COUNT=0
for index in ${SERVERLIST[@]}; do
	echo "${SERVERLIST[COUNT]}"
	COUNT="`expr $COUNT + 1`"
done

SERVERLIST[COUNT]="devcn"
echo "${SERVERLIST[*]}"
echo "done parsing !!!"



