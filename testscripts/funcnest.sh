#/bin/bash


echo  "enter programming language"
read "plang"


function plangstats () {
	STYLE="OOP"
	DOCKERIMAGE="YES"
	
	echo "programming style is oop"

	function displaycompiled () {
		
		TOOL="MAKE"
		echo "$plang is a compiled language"

	}



	function displayinterpreted () {

		TOOL="RUNTIME"
		echo "$plang is interpreted language"
	
	}


}


if [ "$plang" == "java" ]; then
	plangstats
	displaycompiled
else
	plangstats
	displayinterpreted

fi
