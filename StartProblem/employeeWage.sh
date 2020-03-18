#!/bin/bash -x
#ADDING PART TIME EMPLOYEE WAGE 
isPartTime=1;
isFullTime=2;
empRatePerHour=20;
randomCheck=$((RANDOM%3));

case $randomCheck in
	$isFullTime)
				empHrs=8
				;;
	$isPartTime)
				empHrs=4
				;;
	*)
		empHrs=0
		;;
esac
echo salary=$(( $empHrs*$empRatePerHour ));
