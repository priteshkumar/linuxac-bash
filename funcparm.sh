#!/bin/bash



echo "enter username"
read username


function displaystats () {

	echo "you are $username, $1 years old"
	echo "you will be `expr $1 \* 365` days old"

}



echo "enter userage"
read userage


displaystats $userage
