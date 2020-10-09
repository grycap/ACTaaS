#!/bin/bash

if [ $# -ne 2 ]; then
   echo "$0 <cost price> <profit margin %>"
   exit
fi

profit=$(echo "$1 * $2 / 100"|bc -l)
sp=$(echo "$1 + $profit" | bc -l)
echo "$@" > ent.txt
./exercise4_bin < ent.txt > sal.txt
sal=$(grep "selling price" sal.txt)
spc=$(echo "$sal"| grep -Eo '[+-]?[0-9]+([.][0-9]+)?')
spc=$(printf "%.2f" $spc)
sp=$(printf "%.2f" $sp)
sw=$(echo "$sp == $spc"| bc -l)
rm ent.txt sal.txt
if [ $sw -eq 1 ]
then
  echo "Test OK!!"
  exit 0
else
  echo "Test ERROR!!"
  exit 1
fi

