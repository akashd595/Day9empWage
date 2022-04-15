#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"
isPartTime=1;
isFullTime=2;
absent=0
workingHrs=0;
wagePerHr=20;
monthlyWage=0;
maxWorkingDay=20;
maxWorkingHrs=100;
totalWorkingHr=0;
totalWorkingDay=1;
wHrs=0
function empWorkingHr() {
	case $1 in
      $isPartTime)
         wHrs=4;;
      $isFullTime)
         wHrs=8;;
      *)
         wHrs=0;;
   esac;
	echo $wHrs;
}
declare -A DailyWage
while [ $totalWorkingDay -le $maxWorkingDay ] && [ $totalWorkingHr -le $maxWorkingHrs ]
do
	workingHrs="$( empWorkingHr $((RANDOM%3)) )";
	DailyWage["Day "$(($totalWorkingDay))]=$(($workingHrs*$wagePerHr));
  	monthlyWage=$(($monthlyWage + $workingHrs*$wagePerHr));
	((totalWorkingDay++))
done
echo ${DailyWage[@]};
echo ${!DailyWage[@]};
echo "Monthly Wage: $monthlyWage";

