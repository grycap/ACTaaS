#!/bin/bash

if [ $# -ne 2 ]; then
   echo "$0 <dividend> <divisor>"
   exit
fi

dividend=$1
divisor=$2
quotient=$(echo "$dividend / $divisor"|bc)
remainder=$(echo "$dividend % $divisor"|bc)
if [ $quotient -lt 0 ]
then
   quotient=$(echo "$quotient * -1"|bc)
fi

echo "$@" > ent.txt
./exercise5_bin < ent.txt > sal.txt
quot_alu=$(grep -oE $quotient sal.txt)
rema_alu=$(grep -oE $remainder sal.txt)
rm ent.txt sal.txt

if [ $quotient = $quot_alu ] && [ $remainder = $rema_alu ]; then
   echo "Test OK!!"
   exit 0
else
  echo "Test ERROR!!"
  exit 1
fi
