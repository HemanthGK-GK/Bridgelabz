#!/bin/bash -x
Fulltime=2;
Parttime=1;
EmpRatePerHour=20;
Check=$((RANDOM % 3))
 if [ $Parttime == $Check ]
	then
		EmpHour=8;
 elif [ $Fulltime == $Check ]
	then
		EmpHour=12;
 else
		EmpHour=0;
 fi
	Salary=$((EmpHour * EmpRatePerHour));


