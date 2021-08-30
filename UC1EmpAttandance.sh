#!/bin/bash -x
num=$((RANDOM % 2))
if [ $num == 1 ]
	then
	 echo "Employee is Present"
	else
	 echo "Employee is Absent"
fi
