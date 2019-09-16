#!/bin/bash

shopt -s expand_aliases
alias TODAYDATE="date"
alias LISTFILES="ls -als /home/edureka/pritesh"

TODAYDATE
LISTFILES
#echo "list of files in home directory: LISTFILES"
alias GETCOMMITID="git rev-parse HEAD"
COMMIT="HEAD"
GETCOMMITID
#echo "sha1 for commit is: GETCOMMITID $COMMIT"

