#!/bin/bash -x
Present=1;
WagePerHour=20;
EmpHours=8;
num=$((RANDOM % 2))
 if [ $Present == $num ]
	then
	 salary=$((EmpHours*WagePerHour));
	else
	 salary=0;
 fi
