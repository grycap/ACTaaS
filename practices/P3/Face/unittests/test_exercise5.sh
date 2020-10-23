#!/bin/bash

if [ $# -ne 3 ]; then
   echo "$0 <student> <subject> <mark>"
   exit
fi

for i in "$@"
do
  echo "$i" >> ent.txt
done
student="$1"
subject="$2"
mark=$3

sw=$(echo "$mark < 0 || $mark > 10"|bc -l)
if [ $sw -eq 1 ]
then
   echo "Mark out of range"
   exit
fi

sw=$(echo "$mark < 5"|bc -l)
if [ $sw -eq 1 ]
then
   printf "%s %s %s" "$student" "$subject" "Failed" > ex5_sol.txt
fi

sw=$(echo "$mark >= 5 && $mark < 7"|bc -l)
if [ $sw -eq 1 ]
then
   printf "%s %s %s" "$student" "$subject" "Passed" > ex5_sol.txt
fi

sw=$(echo "$mark >= 7 && $mark < 9"|bc -l)
if [ $sw -eq 1 ]
then
   printf "%s %s %s" "$student" "$subject" "Notable" > ex5_sol.txt
fi

sw=$(echo "$mark >= 9 && $mark < 10"|bc -l)
if [ $sw -eq 1 ]
then
   printf "%s %s %s" "$student" "$subject" "Excellent" > ex5_sol.txt
fi

sw=$(echo "$mark == 10"|bc -l)
if [ $sw -eq 1 ]
then
   printf "%s %s %s" "$student" "$subject" "MH" > ex5_sol.txt
fi
./exercise5_bin < ent.txt > /dev/null


alu=$(cat ex5_alu.txt)
pro=$(cat ex5_sol.txt)

if [ "$alu" = "$pro" ]
then
   echo "Test OK!!"
   if [ -f "ent.txt" ]; then
      rm ent.txt ex5_alu.txt ex5_sol.txt
   fi
   exit 0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   echo "$pro"
   echo "STUDENT OUTPUT:"
   echo "$alu"
   if [ -f "ent.txt" ]; then
      rm ent.txt ex5_alu.txt ex5_sol.txt
   fi
   exit 1
fi


