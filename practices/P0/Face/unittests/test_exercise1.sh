#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <radio>"
   exit
fi

radio=$1
pi=3.14159
area=$(echo "$pi*$radio*$radio"|bc -l)
perimeter=$(echo "2*$pi*$radio"|bc -l)
area=$(printf "%.2f" $area)
perimeter=$(printf "%.2f" $perimeter)
echo "$@" > ent.txt
./exercise1_bin < ent.txt > sal.txt
sal=$(cat sal.txt|grep  "area" sal.txt)
nums=$(echo "$sal"| grep -Eo '[+-]?[0-9]+([.][0-9]+)?')
areac=$(echo $nums|awk '{print $2}')
perc=$(echo $nums|awk '{print $1}')
rm ent.txt sal.txt
areac=$(printf "%.2f" $areac)
perc=$(printf "%.2f" $perc)
sw=$(echo "($areac == $area) && ($perimeter == $perc)"|bc -l)
if [ $sw -eq 1 ]
then
  echo "Test OK!!"
  exit 0
else
  echo "Test ERROR!!"
  exit 1
fi
