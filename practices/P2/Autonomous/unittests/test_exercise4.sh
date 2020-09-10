#!/bin/bash

if [ $# -ne 3 ]; then
   echo "$0 <line1> <line2> <line3>"
   exit
fi

for line in "$@"
do
   printf "%s\n" "$line" >> ex4.txt
done
./exercise4_bin < ex4.txt > /dev/null
nl=$(sed -n \$= text.dat)
if [ $nl -eq 3 ]; then
    echo "OK!!"
else
   echo "ERROR!!"
fi
rm ex4.txt
