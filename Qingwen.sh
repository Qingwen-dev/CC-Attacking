#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin;
export PATH

COUNT=10
FILE="ip.txt"
URL=$1
TIME=$2

for ((integer = 1; integer <= $COUNT; integer++)) 
do 
	node cc.js $URL $FILE $TIME > /dev/null &
done
