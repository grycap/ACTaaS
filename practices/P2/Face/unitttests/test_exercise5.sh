#!/bin/bash
nl=0
file="./items.txt"
while IFS='' read -r line
do
  nl=$((nl+1))
  printf "%d.- %s\n" $nl "$line" >> items2.copy
done < "$file"
n=$(sed -n \$= items2.txt)
m=$(sed -n \$= items2.copy)
if [ "$n" = "$m" ] ; then
   echo "Test OK!!"
else
   echo "Test ERROR!!"
fi

rm items2.copy
