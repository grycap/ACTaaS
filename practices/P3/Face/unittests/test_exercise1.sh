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

ent=$(printf "|%d| = %d\n" $1  $abs)

for i in "$@"
do
  echo "$i" >> ent.txt
done

./exercise1_bin < ent.txt > sal.txt

sal=$(grep -oE $abs sal.txt|tail -n1)

if [ "$ent" = "$sal" ]; then
   echo "Test OK!!"
   rm ent.txt sal.txt
   exit 0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   echo $ent
   echo "STUDENT OUTPUT:"
   rm ent.txt sal.txt
   echo $sal
   exit 1
fi

