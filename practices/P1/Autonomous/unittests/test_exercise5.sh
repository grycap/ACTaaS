#!/bin/bash

if [ $# -ne 2 ]; then
   echo "$0 <dividend> <divisor>"
   exit
fi

dividend=$1
divisor=$2

quotient=$(echo "$dividend / $divisor"|bc)
remainder=$(echo "$dividend % $divisor"|bc)
echo "$@" > ent.txt

ent=$(printf "Quotient: %d\nRemainder: %d\n" $quotient $remainder)
sal=$(./exercise5_bin < ent.txt > sal.txt)
sal=$(tail -n2 sal.txt)
rm ent.txt sal.txt

if [ "$ent" = "$sal" ]; then
   echo "Test OK!!"
else
  echo "Test ERROR!!"
fi
