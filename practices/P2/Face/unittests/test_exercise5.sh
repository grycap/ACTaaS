#!/bin/bash

if [ ! -f items.txt ]; then
    echo "Test ERROR -- File items.txt found!"
    exit 1
fi

nl=$(cat items.txt|wc -l)
if [ $nl -eq 1 ]; then
    echo "Test ERROR -- File items.txt seems to be empty"
    rm items.txt
    exit 1
fi
./exercise5_bin
dos2unix items2.txt > /dev/null
nl=$(cat items2.txt|wc -l)
if [ $nl -eq 1 ]; then
    echo "Test ERROR -- File items2.txt seems to be empty"
    rm items.txt
    exit 1
fi

nl=0
file=items.txt
dos2unix items.txt > /dev/null
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

