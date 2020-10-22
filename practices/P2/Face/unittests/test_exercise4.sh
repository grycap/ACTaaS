#!/bin/bash

if [ $# -ne 2 ]; then
   echo "$0 <cost price> <profit margin %>"
   exit
fi

profit=$(echo "$1 * ($2 / 100)"|bc -l)
sp=$(echo "$1 + $profit" | bc -l)

ent=$(printf "sellingprice %.2f" $sp)

for i in "$@"
do
  echo "$i" >> ent.txt
done

./exercise4_bin

sal=$(cat price_margin.txt|tail -n1)
sal=$(printf "%.2f" $sal)
if [ "$ent" = "$sal" ]; then
   echo "Test OK!!"
   rm ent.txt sal.txt
   exit 0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT: $ent"
   echo "STUDENT OUTPUT: $sal"
   rm ex1.out result.txt ent.txt
   exit 1
fi

