#!/bin/bash


value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $value -eq 1 ]

then
	echo "There is 1 Active Network Interafce found."

elif [ $value -gt 1 ]
then
	echo "Found Multiple Active Interfaces."
else
	echo "No Active Interface found."
fi
