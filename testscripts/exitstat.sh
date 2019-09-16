#!/bin/bash

set -e #use set -e to error out 

echo `expr 2 + 2`
echo $?

rm code
echo $?

ls -al
echo $?
