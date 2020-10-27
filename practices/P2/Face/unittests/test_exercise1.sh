#!/bin/bash

if [ $# -ne 8 ]; then
   echo "$0 <name> <surname> <day> <month> <year> <dni> <gender> <credits>"
   exit
fi

name="$1"
surname="$2"
day=$3
month=$4
year=$5
dni=$6
gender=$7
credits=$8


pat=$(printf 'My name is %s %s and I was born %d/%d/%d.\nMy DNI is %s and my sex is %c.\nThe registered credits are %.2f'  "$name" "$surname" $day $month $year $dni $gender $credits)
 
for i in "$@"
do
  echo "$i" >> ent.txt
done

./exercise1_bin < ent.txt > /dev/null
  if grep -s "$pat" result.txt ; then
   echo "Test OK!!"
   rm result.txt ent.txt
   exit 0
else
   echo "Test ERROR!!"
   echo "EPECTED OUTPUT"
   cat ex1.out
   echo "STUDENT OUTPUT"
   echo "$pat"
   rm result.txt ent.txt
   exit 1
fi


