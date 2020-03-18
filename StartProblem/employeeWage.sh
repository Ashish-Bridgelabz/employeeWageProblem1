#!/bin/bash -x
#ADDING PART TIME EMPLOYEE WAGE 
isPartTime=1;
isFullTime=2;
empRatePerHour=20;
randomCheck=$((RANDOM%3));

if [ $isFullTime -eq $randomCheck ];
then
	empHour=8;
elif [ $isPartTime -eq $randomCheck ];
then
	empHour=4;
else
	empHour=0;
fi
echo salary=$(( $empHour*$empRatePerHour ));
