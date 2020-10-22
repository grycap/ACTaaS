#!/bin/bash

if [ ! -f items.txt ]; then
    echo "Test ERROR -- File items.txt found!"
    exit 1
fi

nl=$(cat items.txt|wc -l)
if [ $nl -eq 0 ]; then
    echo "Test ERROR -- File items.txt seems to be empty"
    rm items.txt
    exit 1
fi
nl=0
./exercise5_bin
file=items.txt
while IFS='' read -r line
do
  nl=$((nl+1))
  printf "%d.- %s\n" $nl "$line" >> items2.copy
done < "$file"

if cmp -s items2.txt items2.copy ; then
   echo "Test OK!!"
   rm items.txt items2.copy items2.txt
   exit 0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   cat items2.copy
   echo "STUDENT OUTPUT:"
   cat items2.txt
   rm items.txt items2.copy items2.txt
   exit 1
   
fi

