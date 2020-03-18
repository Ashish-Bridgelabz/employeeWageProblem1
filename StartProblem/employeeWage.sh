#!/bin/bash
#printing
echo "We are printing employee is present or not"
isPresent=$(($RANDOM%2))
if((isPresent == 1))
then
	echo "Employee is present"
else
	echo "Employee is not present"
fi
