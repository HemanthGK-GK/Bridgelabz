#!/bin/bash -x
Fulltime=2;
Parttime=1;
EmpRatePerHour=20;
MaxWorkingDays=20;
MaxHours=100;
TotWorkingDays=0;
TotWorkingHours=0;

function GetWorkingHours()
{
 case $1 in
   $Parttime)
      EmpHour=8 ;;
   $Fulltime)
      EmpHour=12 ;;
   *)
      EmpHour=0 ;;
esac
echo $EmpHour
}
while [[ $TotWorkingHours -lt $MaxHours && $TotWorkingDays -lt $MaxHours ]]
do
 ((TotWorkingDays++))
 EmpHour="$(GetWorkingHours $((RANDOM%3)) )"
 TotWorkingHours=$((TotWorkingHours+EmpHour))
done

	Salary=$(( TotWorkingHours * EmpRatePerHour));
