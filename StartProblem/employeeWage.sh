#!/bin/bash -x
echo "Welcome to employee wages problem"
IS_PRESENT=1
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORKING_HR=100
#variable
totalSalary=0
totalEmpHrs=0
totaWorkingDays=0
salary=0
workHrs=0
randomCheck=$((RANDOM%3))
#Calculate daily employee wage
if(($IS_PRESENT == $randomCheck))
	then
		empHrs=8
		salary=$(($EMP_RATE_PER_HR*$empHrs))
	else
		salary=0
fi
#Add parttime and fulltime employee wage by using case statement
function getWorkingHours()
{
	case $1 in
		$IS_PART_TIME)
			empHrs=4
				;;
		$IS_FULL_TIME)
			empHrs=8
				;;
		*)
			empHrs=0
				;;
	esac
	echo $empHrs
}
#Calculating wages till number of working days or days its reach for a month
while [[ $totalWorkingDays -lt $MAX_WORKING_DAYS && $totalEmpHrs -lt $MAX_WORKING_HR ]]
do
	((totalWorkingDays++))
	empHrs="$( getWorkingHours $((RANDOM%3)) )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))
echo $totalEmpHrs
echo $totalSalary
