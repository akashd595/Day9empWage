#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"
isPartTime=1;
isFullTime=2;
absent=0
workingHrs=0;
wagePerHr=20;
dailyWage=0;
maxWorkingDay=20;
num=1
while [ $num -le $maxWorkingDay ]
do
	attendance=$((RANDOM%3));
	case $attendance in
		$isPartTime)
			echo "Day $num -- Part Time";
			workingHrs=4;;
		$isFullTime)
			echo "Day $num -- Full Time";
			workingHrs=8;;
		$absent)
			echo "Day $num -- Absent"
			workingHrs=0;;
	esac;
	((num++))

	if [ $attendance -eq 2 ]
	then
   	dailyWage=$(($dailyWage + $workingHrs*$wagePerHr));
	elif [ $attendance -eq 1 ]
	then
		dailyWage=$(($dailyWage + $workingHrs*$wagePerHr))
	fi
done
	echo "Monthly Wage: $dailyWage"




