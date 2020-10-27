#!/bin/bash

if [ $# -ne 3 ]; then
   echo "$0 <line1> <line2> <line3>"
   exit
fi
if [ ! -f text.dat ]
then
   echo "Test ERROR -- file text.dat not found."
   exit 1
fi   
for line in "$@"
do
   printf "%s\n" "$line" >> ex3.txt
done
./exercise3_bin < ex3.txt > /dev/null
nl=$(sed -n \$= text.dat)
rm ex3.txt
if [ $nl -eq 3 ]; then
    echo "Test OK!!"
    exit 0
else
   echo "Test ERROR -- Your file must contain 3 lines of text."
   exit 1
fi

