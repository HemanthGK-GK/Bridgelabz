#!/bin/bash -x
Fulltime=2;
Parttime=1;
EmpRatePerHour=20;
Check=$((RANDOM % 3))

case $Check in
   $Parttime)
		EmpHour=8 ;;
	$Fulltime)
		EmpHour=12 ;;
	*)
		EmpHour=0 ;;
esac
	Salary=$((EmpHour * EmpRatePerHour));


