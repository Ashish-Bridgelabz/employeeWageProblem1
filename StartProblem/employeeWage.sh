#!/bin/bash -x
#CALCULATE DAILY EMPLOYEE WAGE
isPresent=1
randomCheck=$((RANDOM%2));
if [ $isPresent -eq $randomCheck ]
then
	empRatePerHour=20;
	empDayHour=8;
	salary=$(("$empRatePerHour*$empDayHour"));
else
	salary=0;
fi
echo "$salary"
