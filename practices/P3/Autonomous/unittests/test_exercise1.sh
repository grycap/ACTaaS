#!/bin/bash

if [ $# -ne 3 ]; then
   echo "$0 <a> <b> <c>"
   exit
fi

a=$1
b=$2
c=$3
echo "$@" > ent.txt
./exercise1_bin < ent.txt > sal.txt
is_zero=$(echo "$a == 0"| bc -l)

if [ $is_zero -eq 1 ]
then
   ent="Invalid value"
   sal=$(cat sal.txt|grep -oE $ent)
    if [ "$ent" = "$sal" ]
    then
         echo "Test OK!!"
		 exit_code=0
    else
         echo "Test ERROR!!"
                 exit_code=1
     fi
     rm ent.txt sal.txt
     exit $exit_code
fi

d=$(echo "$b * $b - (4 * $a * $c)"|bc -l)
complex=$(echo "$d < 0"|bc -l)
if [ $complex -eq 1 ]
then
   sol1a=$(echo "-1 * $b / (2 * $a)"|bc -l)
   d=$(echo "$d * -1"|bc -l)
   sol1b=$(echo "(sqrt($d)) / (2 * $a)"| bc -l)
   printf "X1 = %.1f + %.1f i\n" $sol1a $sol1b > ent.txt
   printf "X2 = %.1f - %.1f i\n" $sol1a $sol1b >> ent.txt
   ent=$(cat ent.txt| tail -n2)
   sal=$(cat sal.txt| tail -n2)
   if [ "$ent" = "$sal" ]
   then
      echo "Test OK!!"
	  exit_code=0
   else
      echo "Test ERROR!!"
	  exit_code=1
   fi
      rm ent.txt sal.txt
      exit $exit_code
fi

one_sol=$(echo "$d == 0"| bc -l)
if [ $one_sol -eq 1 ]
then
   x=$(echo "-1 * $b / (2 * $a)"|bc -l)
   printf "x = %.1f\n" $x > ent.txt
   ent=$(cat ent.txt| tail -n1)
   sal=$(cat sal.txt| tail -n1)
   if [ "$ent" = "$sal" ]
   then
      echo "Test OK!!"
	  exit_code=0
   else
      echo "Test ERROR!!"
	  exit_code=1
   fi
   rm ent.txt sal.txt
   exit $exit_code
fi

x1=$(echo "(-1 * $b + sqrt($d)) / (2 * $a)"|bc -l)
x2=$(echo "(-1 * $b - sqrt($d)) / (2 * $a)"|bc -l)
printf "X1 = %.1f\nX2 = %.1f\n" $x1 $x2 > ent.txt
ent=$(cat ent.txt| tail -n1)
sal=$(cat sal.txt| tail -n1)
if [ "$ent" = "$sal" ]
then
   echo "Test OK!!"
   exit_code=0
else
   echo "Test ERROR!!"
   exit_code=0
fi
rm ent.txt sal.txt
exit $exit_code

