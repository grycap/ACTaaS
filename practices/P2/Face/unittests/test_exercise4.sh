#!/bin/bash

if [ $# -ne 2 ]; then
   echo "$0 <cost price> <profit margin %>"
   exit
fi

if [ ! -f price_margin.txt ]; then
    echo "Test ERROR -- File price_margin.txt found!"
    exit 1
fi
dos2unix price_margin.txt
profit=$(echo "$1 * ($2 / 100.0)"|bc -l)
sp=$(echo "$1 + $profit" | bc -l)
sp=$(printf "%.2f" $sp)
head -n2 price_margin.txt > price_margin.bak
grep . price_margin.bak > price_margin.txt
./exercise4_bin
sal=$(grep -m 1 -oE "$sp" price_margin.txt)
if [ "$sp" = "$sal" ]; then
   echo "Test OK!!"
   rm *.txt
   exit 0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT: $sp"
   echo "STUDENT OUTPUT: $sal"
  # rm *.txt
   exit 1
fi


