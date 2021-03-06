#!/bin/bash

if [ $# -ne 2 ]; then
   echo "$0 <a> <b>"
   exit
fi
a=$1
b=$2

echo "$@" > ent.txt
./exercise2_bin < ent.txt > sal.txt
a=$(echo $1 '==' 0|bc -l)
b=$(echo $2 '==' 0|bc -l)


if [ $a -eq 0 ] && [ $b -eq 0 ]
then
   res=$(echo "-1 * $2 / $1"|bc -l)
   res=$(printf "%.2f" $res)
   sal=$(cat sal.txt|grep -Eo '[+-]?[0-9]+([.][0-9]+)?')
   
   aux="${res:0:2}"
   if [ "$aux" = "-0" ]
   then
      res="${res:1}"
   fi
   if [ "$res" = "$sal" ]
   then
      echo "Test OK!!"
      exit 0
   else
      echo "Test ERROR!!"
      echo "EXPECTED OUTPUT:"
      echo "$res"
      echo "STUDENT OUTPUT:"
      echo "$sal"
      exit 1
   fi
fi

if [ $a -eq 1 ] && [ $b -ne 1 ]
then
   res="not feasible"
   sal=$(cat sal.txt|grep -oE "$res")
fi

if [ $a -eq 1 ] && [ $b -eq 1 ]
then
      res="indeterminate"
      sal=$(cat sal.txt|grep -oE "$res")
fi

if [ "$res" = "$sal" ]
then
   echo "Test OK!!"
   exit 0
   rm ent.txt sal.txt
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   echo "$res"
   echo "STUDENT OUTPUT:"
   echo "$sal"
   rm ent.txt sal.txt
   exit 1
fi

if grep -oE -q "$res" "sal.txt"
then
   echo "Test OK!!"
   rm ent.txt sal.txt
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   echo "$res"
   echo "STUDENT OUTPUT:"
   echo "$sal"
   rm ent.txt sal.txt
   exit 1
fi




