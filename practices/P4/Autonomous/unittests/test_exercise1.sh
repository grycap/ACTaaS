#!/bin/bash

if [ $# -ne 2 ]; then
   echo "$0 <value of x in the series (x > 0)> <number of terms in the series>"
   exit
fi

sw=$(echo "$1 < 1"|bc -l)
if [ $sw -eq 1 ] || [ $2 -lt 1 ]
then
   echo "x and n must be  greater than 0"
   exit
fi
x=$1
n=$2
sum=1
for ((i=n-1; i>0; i--))
do
  sum=$(echo "1 + $x * $sum / $i"|bc -l)
done
sum=$(printf "%.2f" $sum)
echo "$@" > params.txt
./exercise1_bin < params.txt > ex1_out.txt
if grep -q "$sum" "ex1_out.txt"
then
   echo "Test OK!!"
else
   echo "Test ERROR!!"
fi
rm params.txt ex1_out.txt
