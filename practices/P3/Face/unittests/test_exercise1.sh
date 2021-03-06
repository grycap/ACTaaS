#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <integer number>"
   exit
fi

abs=$1
check=`echo "$abs" | grep -E ^\-?[0-9]+$`

if [ "$check" != '' ];
then
   if [ $abs -lt 0 ]
   then
      abs=$(echo "$abs * -1"|bc)
   fi
else
  echo "I need an integer number"
  exit
fi

for i in "$@"
do
  echo "$i" >> ent.txt
done

./exercise1_bin < ent.txt > sal.txt


sal=$(cat sal.txt)
sal=$(echo $sal | cut -d ' ' -f 7)
echo $sal




#sal=$(grep -oE $abs sal.txt|tail -n1)

if [ $abs -eq $sal ]; then
   echo "Test OK!!"
   echo "EXPECTED OUTPUT:"
   echo $abs
   echo "STUDENT OUTPUT:"   
   echo $sal

   rm ent.txt sal.txt
   exit 0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   echo $abs
   echo "STUDENT OUTPUT:"
   echo $sal
   rm ent.txt sal.txt   
   exit 1
fi

