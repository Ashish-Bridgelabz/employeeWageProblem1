

#!/bin/bash -x
#CONSTANTS VARIABLE FOR THE PROGRAM
isFullTime=2;
isPartTime=1;
totalSalary=0;
empRatePerHour=20;
numberWorkingDay=20;
maximumHourInMonth=20;
#VARIABLE
totalEmpHour=0;
totalWorkingDay=0;
while [[ $totalEmpHour -lt $maximumHourInMonth && $totalWorkingDay -lt $numberWorkingDay ]]
do
	((totalWorkingDay++))
	empCheck=$(($RANDOM%3))
		case $empCheck in
			$isFullTime)
					empHour=8
					;;
			$isPartTime)
					empHour=4
					;;
			*)
					empHour=0
						;;
		esac
		totalEmpHour=$(($totalEmpHour+$empHour))
done
totalSalary=$(($totalEmpHour*$empRatePerHour))
echo "TotalEmpHour" "$totalEmpHour"
echo "TotalSalary" "$totalSalary"
