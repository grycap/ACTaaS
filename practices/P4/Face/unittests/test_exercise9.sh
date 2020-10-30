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
./exercise9_bin < params.txt > ex9_out.txt
alu_sum1=$(cat ex9_out.txt|grep -o $sum1)
alu_sum2=$(cat ex9_out.txt|grep -o $sum2)
if [ "$alu_sum1" = "$sum1" ] && [ "$alu_sum2" = "$sum2" ]
then
    echo "Test OK!!"
    exit_code=0
else
   echo "Test ERROR!!"
   echo "EXPECTED SUM1: $sum1"
   echo "EXPECTED SUM2: $sum2"
   echo "STUDENT SUM1: $alu_sum1"
   echo "STUDENT SUM2: $alu_sum2"
   exit_code=1
fi
rm ex9_out.txt params.txt
exit $exit_code

