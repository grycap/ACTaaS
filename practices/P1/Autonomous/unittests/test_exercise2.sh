#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <lowercase character>"
   exit
fi

uppercase=$(echo "$1" | tr a-z A-Z)

echo "$@" > ent.txt
./exercise2_bin < ent.txt > sal.txt
cat sal.txt | sed -e "s/[[:punct:]]\+//g"|tr -d '\n' > output.txt
sal=$(awk 'END {print $NF}' output.txt)
rm ent.txt sal.txt output.txt

if [ "$uppercase" = "$sal" ]; then
   echo "Test OK!!"
   exit 0
else
  echo "Test ERROR!!"
  exit 1
fi

