#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <year>"
   exit
fi

year=$1

check=`echo "$year" | grep -E ^\-?[0-9]+$`

if [ "$check" = '' ];
then
   echo "I need a valid year."
   exit
fi

if [ $year -lt 1500 ] || [ $year -gt 2050 ]
then
   ent="INPUT out of range!"
   echo "$1" > ent.txt
   ./exercise6_bin < ent.txt > sal.txt
    sal=$(cat sal.txt| tail -n1)
    if [ "$ent" = "$sal" ]
    then
         echo "Test OK!!"
    else
         echo "Test ERROR!!"
     fi
     rm ent.txt sal.txt
     exit
fi

leap_year=$(echo "($year % 4 == 0 && $year % 100 != 0) || $year % 400 == 0"|bc)

if [ $leap_year -eq 1 ]
then
   ent=$(echo "$year is a leap year.")
else
   ent=$(echo "$year is not a leap year.")
fi

echo "$1" > ent.txt
./exercise6_bin < ent.txt > sal.txt
sal=$(cat sal.txt| tail -n1)
if [ "$ent" = "$sal" ]
then
   echo "Test OK!!"
else
   echo "Test ERROR!!"
fi
echo $leap_year
rm ent.txt sal.txt
