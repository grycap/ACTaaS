#!/bin/bash

if [ $# -ne 5 ]
then
   echo "$0 <distance> <const vel of train1> <const vel of train2> <time train 1> <time train 2>"
   echo "All measurements must be in the international system of units."
   exit
fi
d=$1
vt1=$2
vt2=$3
tt1=$4
tt2=$5
for data in $@
do
   echo $data >> train.txt
done
alu=$(./exercise9_bin|tr -d '\n')

dt1=$(echo "$vt1 * $tt1"|bc -l)
dt2=$(echo "$vt2 * $tt2"|bc -l)
sw=$(echo "($dt1 + $dt2) < $d"|bc -l)
if [ $sw -eq 1 ]
then
   pro="Trains cannot crash"
else
   pro="Trains would crash"
fi

if [ "$alu" = "$pro" ]
then
    echo "Test OK!!"
    exit_code=0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   echo "$pro"
   echo "STUDENT OUTPUT:"
   exit_code=1
fi
rm train.txt
exit $exit_code
