#!/bin/bash

if [ $# -ne 3 ]; then
   echo "$0 <july expenses> <august expenses> <september expenses>"
   exit
fi



echo "$1\n$2\n$3" > spending.txt
spend=$(cat spending.txt|head -n3|sort -g)

./exercise2_bin
pid=$(echo $$)
proc=$(ps aux|grep $pid)
test=$(echo "$proc"|grep -oE spending.txt)
echo "$test" 
touch sal.txt
for i in $spend
do
   echo $i >> sal.txt
done

first=$(cat sal.txt|head -n1)
last=$(cat sal.txt|tail -n1)
min=$(grep -n $first spending.txt|head -c 1)
max=$(grep -n $last spending.txt|head -c 1)

case $min in
  1) mmin="Month during which the minimum spending has occurred: 7"
     ;;
  2) mmin="Month during which the minimum spending has occurred: 8"
     ;;
  3) mmin="Month during which the minimum spending has occurred: 9"
esac

case $max in
  1) mmax="Month during which the maximum spending has occurred: 7"
     ;;
  2) mmax="Month during which the maximum spending has occurred: 8"
     ;;
  3) mmax="Month during which the maximum spending has occurred: 9"
esac

cat spending.txt|head -n3 > spending2.txt
echo "$mmax" >> spending2.txt
echo "$mmin" >> spending2.txt

pro=$(cat spending2.txt)
alu=$(cat spending.txt)

if [ "$pro" = "$alu" ]
then
   echo "Test OK!!"
   exit_code=0
else
  echo "Test ERROR!!"
  echo "EXPECTED OUTPUT:"
  echo "$pro"
  echo "STUDENT OUTPUT:"
  echo "$alu"
  exit_code=1  
fi
rm sal.txt spending2.txt
exit $exit_code




