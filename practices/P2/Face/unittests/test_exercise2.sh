#!/bin/bash

if [ ! -f ./exercise2/input.txt ]; then
    echo "Test ERROR -- File input.txt found!"
    exit 1
fi

n=$(cat ./exercise2/input.txt)
square=$(echo "$n * $n"|bc)
./exercise2_bin
m=$(cat output.txt)
if [ $square = $m  ]; then
   echo "Test OK!!"
   rm output.txt
   exit 0
else
   echo "Test ERROR!!"
   echo "EPECTED OUTPUT: $square"
   echo "STUDENT OUTPUT: $m"
   rm output.txt
   exit 1
fi

