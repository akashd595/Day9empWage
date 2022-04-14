#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"
attendance=$((RANDOM%2));
workingHrs=0;
wagePerHr=20;
dailyWage=0;
if [ $attendance -eq 0 ]
then
   echo "Employee is Absent today";
   workingHrs=0;
else
   echo "Employee is Present today";
   workingHrs=8;
fi
if [ $attendance -eq 1 ]
then
   dailyWage=$(($workingHrs*$wagePerHr));
fi
echo "Daily Wage: $dailyWage"




