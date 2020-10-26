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
nl=$(cat items2.txt|wc -l)
if [ $nl -eq 1 ]; then
    echo "Test ERROR -- File items2.txt seems to be empty"
    rm items.txt
    exit 1
fi
counter=1
filename=items.txt
grep . $filename > items2.copy
while read -r line
do
  printf "%d.- %s\n" $counter "$line" >> items2.copy
  let counter=$counter+1
done < "$filename"

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

