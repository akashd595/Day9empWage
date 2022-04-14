#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"
isPartTime=1;
isFullTime=2;
absent=0
workingHrs=0;
wagePerHr=20;
dailyWage=0;
maxWorkingDay=20;
maxWorkingHrs=100;
totalWorkingHr=0;
totalWorkingDay=1
while [ $totalWorkingDay -le $maxWorkingDay ] && [ $totalWorkingHr -lt $maxWorkingHrs ]
do
	attendance=$((RANDOM%3));
	case $attendance in
		$isPartTime)
			workingHrs=4;
			totalWorkingHr=$(($totalWorkingHr+$workingHrs));
			echo "Day $totalWorkingDay -- Part Time";
			echo "Total working Hours --> $totalWorkingHr";;
		$isFullTime)
			workingHrs=8;
			totalWorkingHr=$(($totalWorkingHr+$workingHrs));
			echo "Day $totalWorkingDay -- Full Time";
         echo "Total working Hours --> $totalWorkingHr";;
		$absent)
			workingHrs=0;
			totalWorkingHr=$(($totalWorkingHr+$workingHrs));
			echo "Day $totalWorkingDay -- Absent"
         echo "Total working Hours --> $totalWorkingHr";;
	esac;
	((totalWorkingDay++))

	if [ $attendance -eq 2 ]
	then
   	dailyWage=$(($dailyWage + $workingHrs*$wagePerHr));
	elif [ $attendance -eq 1 ]
	then
		dailyWage=$(($dailyWage + $workingHrs*$wagePerHr))
	fi
done
	echo "Monthly Wage: $dailyWage"




