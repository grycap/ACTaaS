#!/bin/bash

if [ $# -ne 3 ]
then
   echo "$0 <item1> <item2> <item3>"
   exit
fi

if [ -f items.txt ]
then
   rm items.txt
fi

for line in "$@"
do
   echo "$line" >> items.txt
done
ls -l items.txt

./exercise5_bin
nl=$(cat items2.txt|wc -l)
if [ $nl -eq 1 ]; then
    echo "Test ERROR -- File items2.txt seems to be empty"
    rm items.txt
    exit 1
fi
counter=0
filename=items.txt
while  read line
do
  let counter=$counter+1   
  printf "%d.- %s\n" $counter "$line" >> items2.copy
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
   rm items2.copy items2.txt
   exit 1
   
fi

