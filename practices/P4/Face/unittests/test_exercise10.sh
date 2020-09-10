#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <natural number>"
   exit
fi
n=$1
sum1=0
sum2=0
for ((i=1; i<=n; i++))
do
  sum1=$(echo "$sum1 + 1 + (3 * $i * $i)"|bc)
done

for ((i=1; i<=n; i++))
do
   for ((j=1; j<=i; j++))
   do
      sum2=$(($sum2+$j))
   done
done

echo "$@" > params.txt
./exercise10_bin < params.txt > ex10_out.txt
alu_sum1=$(cat ex10_out.txt|grep -o $sum1)
alu_sum2=$(cat ex10_out.txt|grep -o $sum2)
if [ "$alu_sum1" = "$sum1" ] && [ "$alu_sum2" = "$sum2" ]
then
    echo "Test OK!!"
else
   echo "Test ERROR!!"
fi
rm ex10_out.txt params.txt

