#!/bin/bash

# Ask for input
read -p "Enter your name: " name

# Check if name matches
if [ "$name" != "Pepu" ]; then
    echo "Oh sorry, you are not a registered Candidate!"
    echo "Bye."
    echo
    exit 1
else
	echo "Welcome to Bash scripting lessons!!"
	echo "Let's continue ...................."
fi
sleep 3
echo
echo "##################################################"
echo "The uptime of my system is:"
uptime
echo
echo "##################################################"
echo "Memory Utilization:"
free -m
echo
echo "###################################################"
echo "Disk Utilization:"
df -h
echo 
echo "HAPPY LEARNING!!"
