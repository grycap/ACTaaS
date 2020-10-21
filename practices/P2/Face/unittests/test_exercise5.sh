#!/bin/bash
nl=0
./exercise5_bin
file="items.txt"
while IFS='' read -r line
do
  nl=$((nl+1))
  printf "%d.- %s\n" $nl "$line" >> items2.copy
done < "$file"
#n=$(sed -n \$= items2.txt)
#m=$(sed -n \$= items2.copy)
if cmp -s items2.txt items2.copy ; then
   echo "Test OK!!"
   rm items2.copy
   exit 0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   echo "$m" 
   echo "STUDENT OUTPUT:"
   echo "$n"
   rm items2.copy
   exit 1
   
fi

