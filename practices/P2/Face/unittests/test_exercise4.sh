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
nli=$(cat price_margin.txt|wc -l)

profit=$(echo "$1 * ($2 / 100.0)"|bc -l)
sp=$(echo "$1 + $profit" | bc -l)
sp=$(printf "%.2f" $sp)
./exercise4_bin
nlf=$(cat price_margin.txt|wc -l)
if [ $nli -eq $nlf ]
then
   echo "Test ERROR -- File price_margin.txt has not been updated with the selling price."
  rm *.txt 
  exit 1
fi

sal=$(grep -m 1 -oE $sp price_margin.txt)
if [ "$sp" = "$sal" ]; then
   echo "Test OK!!"
   rm *.txt
   exit 0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT: $sp"
   echo "STUDENT OUTPUT: $sal"
   rm *.txt
   exit 1
fi


