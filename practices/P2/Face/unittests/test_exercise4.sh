#!/bin/bash

if [ $# -ne 2 ]; then
   echo "$0 <cost price> <profit margin %>"
   exit
fi

if [  -f price_margin.txt ]; then
    rm price_margin.txt
    
fi
printf "costprice %.2f\nmargin %d" $1 $2 > price_margin.txt
profit=$(echo "$1 * ($2 / 100.0)"|bc -l)
sp=$(echo "$1 + $profit" | bc -l)
sp=$(printf "%.2f" $sp)
./exercise4_bin
sal=$(grep -m 1 -oE "$sp" price_margin.txt)
if [ "$sp" = "$sal" ]; then
   echo "Test OK!!"
   rm *.txt rm *.bak
   exit 0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT: $sp"
   echo "STUDENT OUTPUT: $sal"
   rm *.txt
   exit 1
fi


