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
   if [ "$res" = "$sal" ]
   then
      echo "Test OK!!"
      exit
   else
      echo "Test ERROR!!"
      exit
   fi
fi

if [ $a -eq 1 ] && [ $b -ne 1 ]
then
   res="The solution is not feasible"
   sal=$(cat sal.txt)
fi

if [ $a -eq 1 ] && [ $b -eq 1 ]
then
      res="The solution is indeterminate"
      sal=$(cat sal.txt)
fi

case "$sal" in
    *"-0.00"*) sal="0.00"
               if [ "$res" = "$sal" ]
               then
                  echo "Test OK!!"
               else
                  echo "Test ERROR!!"
               fi
    ;;
    *) if grep -q "$res" "sal.txt"
       then
          echo "Test OK!!"
       else
          echo "Test ERROR!!"
       fi
esac
rm ent.txt sal.txt


