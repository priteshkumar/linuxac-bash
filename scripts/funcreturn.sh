#!/bin/bash


printEnv () {
	
	declare -a tools
	tools=("jenkins" "docker")
	
	for tool in ${tools[@]}
	do
		echo $tool
	done

	retval=2

	echo "USER : $USER"
	echo "TERM : $TERM"
	echo "SHELL : $SHELL"
	return $retval
	
}


printEnv
echo $?

exit
