#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"
attendance=$((RANDOM%3));
workingHrs=0;
wagePerHr=20;
dailyWage=0;
if [ $attendance -eq 0 ]
then
   echo "Employee is Absent today";
   workingHrs=0;
elif [ $attendance -eq 1 ]
then
	echo "Part Time Employee";
	workingHrs=4;
else
   echo "Employee is Present today";
   workingHrs=8;
fi
if [ $attendance -eq 2 ]
then
   dailyWage=$(($workingHrs*$wagePerHr));
elif [ $attendance -eq 1 ]
then
	dailyWage=$(($workingHrs*$wagePerHr))
fi
echo "Daily Wage: $dailyWage"




