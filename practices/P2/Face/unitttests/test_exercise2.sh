#!/bin/bash

n=$(cat input.txt)
square=$(echo "$n * $n"|bc)
./exercise2_bin
m=$(cat output.txt)
if [ $square = $m  ]; then
   echo "Test OK!!"
else
   echo "Test ERROR!!"
fi

