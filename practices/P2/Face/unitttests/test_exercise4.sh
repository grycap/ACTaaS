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

if [ "$ent" = "$sal" ]; then
   echo "Test OK!!"
else
   echo "Test ERROR!!"
fi

rm ent.txt sal.txt
