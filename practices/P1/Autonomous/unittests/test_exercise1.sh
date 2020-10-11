#!/bin/bash

if [ $# -ne 4 ]; then
   echo "$0 <x1> <y1> <x2> <y2>"
   exit
fi

x1=$1
y1=$2
x2=$3
y2=$4

gd=$(echo "sqrt(($x2 - $x1) * ($x2 - $x1) + ($y2 - $y1) * ($y2 - $y1))"|bc -l)
echo "$@" > ent.txt
./exercise1_bin < ent.txt > sal.txt
sal=$(awk 'END {print $NF}' sal.txt)
gd=$(printf '%.2f' $gd)
sal=$(printf '%.2f' $sal)
rm ent.txt sal.txt
if [ "$gd" = "$sal" ]; then
    echo "Test OK!!"
else
    echo "Test ERROR!!"
fi


