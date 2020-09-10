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
ent=$(printf 'The geometric distance between A and B is %.1f' $gd)

echo "$@" > ent.txt
./exercise1_bin < ent.txt > sal.txt
sal=$(grep "The geometric distance between A and B is" sal.txt)
rm ent.txt sal.txt

if [ "$ent" = "$sal" ]; then
    echo "Test OK!!"
else
    echo "Test ERROR"
fi


