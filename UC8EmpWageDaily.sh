#!/bin/bash -x
Fulltime=2;
Parttime=1;
EmpRatePerHour=20;
MaxWorkingDays=20;
MaxHours=50;
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

function getEmpWage()
{
 local empHr=$1;
   echo $(($empHr*$EmpRatePerHour))
}

while [[ $TotWorkingHours -lt $MaxHours && $TotWorkingDays -lt $MaxHours ]]
do
 ((TotWorkingDays++))
 EmpHour="$(GetWorkingHours $((RANDOM%3)) )"
 TotWorkingHours=$((TotWorkingHours+EmpHour))
 dailyWage[$TotWorkingDays]="$(getEmpWage $EmpHour)"
done
   echo ${dailyWage[@]}
   Salary=$(( TotWorkingHours * EmpRatePerHour));

