#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <n>"
   exit
fi


age=$(echo "($1 % 10) + ($1 / 10)"|bc)
magic=$(echo "$1 % 10"| bc)
echo "$@" > ent.txt
./exercise3_bin < ent.txt > sal.txt
alu_age=$(grep -oE $age sal.txt)
alu_magic=$(grep -oE $magic sal.txt)
if [ "$age" = "$alu_age" ] && [ "$magic" = "$alu_magic" ]; then
   echo "Test OK!!"
else
  echo "Test ERROR!!"
fi

