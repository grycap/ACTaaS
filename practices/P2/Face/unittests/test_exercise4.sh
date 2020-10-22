#!/bin/bash

if [ $# -ne 2 ]; then
   echo "$0 <cost price> <profit margin %>"
   exit
fi

if [ ! -f price_margin.txt ]; then
    echo "Test ERROR -- File price_margin.txt found!"
    exit 1
fi

profit=$(echo "$1 * ($2 / 100.0)"|bc -l)
sp=$(echo "$1 + $profit" | bc -l)
sp=$(printf "%.2f" $sp)
for i in "$@"
do
  echo "$i" >> ent.txt
done

./exercise4_bin

sal=$(grep -oE $sp price_margin.txt|tail -n1)
if [ "$sp" = "$sal" ]; then
   echo "Test OK!!"
else
   echo "Test ERROR!!"
fi

rm *.txt
