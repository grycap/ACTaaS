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

nl=1
touch items2.copy
for item in(cat items.txt)
do
    printf "%d.- %s\n" $nl "$item" >> items2.copy
    nl=$(echo "$nl + 1"|bc)
done	

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

