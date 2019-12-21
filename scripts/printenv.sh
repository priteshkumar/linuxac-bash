#!/bin/bash


val=$(printenv | grep ^USER=)
param="USER="
echo "USER : ${val:${#param}}"

val=$(printenv | grep ^TERM=)
param="TERM="
echo "TERM : ${val:${#param}}"

val=$(printenv | grep ^HOME=)
param="HOME="
echo "HOME : ${val:${#param}}"

val=$(printenv | grep ^HISTCONTROL=)
param="HISTCONTROL="
echo "HISTCONTROL : ${val:${#param}}"

exit 0

