#!/bin/bash
echo "WELCOME TO COMMAND SUBSTITUTION"
echo
TIME=`date | awk '{print $4}'`
echo "Time is: $TIME"
echo

DATE=`date | awk '{print $1" "$2" "$3" "$6}'`
echo "Today's date is: $DATE"
echo

FREE_RAM=$(free -m | grep Mem | awk '{print $4}')
echo "Available free RAM is: $FREE_RAM MB"
