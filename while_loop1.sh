#!/bin/bash


counter=0

while [ $counter -lt 5 ]
do
	echo "looping........"
	sleep 2
	echo "Value of counter is $counter."
	counter=$(($counter + 1))
done
echo "Out of the loop"
