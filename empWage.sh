#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"
isPartTime=1;
isFullTime=2;
absent=0
workingHrs=0;
wagePerHr=20;
dailyWage=0;
attendance=$((RANDOM%3));

case $attendance in
	$isPartTime)
		workingHrs=4;;
	$isFullTime)
		workingHrs=8;;
	$absent)
		workingHrs=0;;
esac;

if [ $attendance -eq 2 ]
then
   dailyWage=$(($workingHrs*$wagePerHr));
elif [ $attendance -eq 1 ]
then
	dailyWage=$(($workingHrs*$wagePerHr))
fi
echo "Daily Wage: $dailyWage"




