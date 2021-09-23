#!/bin/bash -x
Fulltime=2;
Parttime=1;
EmpRatePerHour=20;
MaxWorkingDays=20;
MaxHours=100;
TotWorkingDays=0;
TotWorkingHours=0;

while [[ $TotWorkingHours -lt $MaxHours && $TotWorkingDays -lt $MaxWorkingDays ]]
do
 ((TotWorkingDays++))
 Check=$((RANDOM % 3))

case $Check in
   $Parttime)
      EmpHour=8 ;;
   $Fulltime)
      EmpHour=12 ;;
   *)
      EmpHour=0 ;;
esac
	TotWorkingHours=$((TotWorkingHour + EmpHours));
done
   Salary=$(( TotWorkingHours * EmpRatePerHour)); 

