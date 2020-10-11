#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <lowercase character>"
   exit
fi

uppercase=$(echo "$1" | tr a-z A-Z)

echo "$@" > ent.txt
./exercise2_bin < ent.txt > sal.txt

sal=$(awk 'END {print $NF}' sal.txt)
rm ent.txt sal.txt

if [ "$uppercase" = "$sal" ]; then
   echo "Test OK!!"
else
  echo "Test ERROR!!"
fi

