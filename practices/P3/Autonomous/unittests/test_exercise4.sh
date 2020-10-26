#!/bin/bash

if [ $# -ne 2 ]; then
   echo "$0 <races left to run> <points each time wins a race>"
   exit
fi

races=$1
points_per_race=$2
if [ ! -f F1.txt ]
then
    echo "Test ERROR -- File f1.txt not found"
	exit 1
fi

first=$(cat F1.txt|head -n1)
second=$(cat F1.txt|tail -n2|head -n1)


total_score=$(echo "$second + $races * $points_per_race"|bc)

if [ $total_score -ge $first ]
then
   pro="can win"
else
   pro="cannot win"
fi

echo "$@" > ent.txt
./exercise4_bin < ent.txt > sal.txt
if grep -q "$pro" "sal.txt"
then
   echo "Test OK!!"
   exit_code=0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   echo "$pro"
   echo "STUDENT OUTPUT:"
   cat sal.txt
   exit_code=1
   
fi
rm ent.txt sal.txt F1.txt
exit $exit_code

