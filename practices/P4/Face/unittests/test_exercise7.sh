#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <last number to add in the sum>"
   exit 1
fi

n=$1
even_sum=0
odd_sum=0

for ((i=1; i<=n; i++))
do
  sw=$(echo "$i % 2 == 0"|bc)
  if [ $sw -eq 1 ]
  then
     even_sum=$(($even_sum+$i))
  else
     odd_sum=$(($odd_sum+$i))
  fi
done
echo "$@" > params.txt
./exercise7_bin < params.txt > ex7_alu.txt
odd_alu=$(cat ex7_alu.txt|grep -o $odd_sum)
even_alu=$(cat ex7_alu.txt|grep -o $even_sum)
if [ "$odd_sum" = "$odd_alu" ] && [ "$even_sum" = "$even_alu" ]
then
    echo "Test OK!!"
	exit_code=0
else
   echo "Test ERROR!!"
   exit_code=1
fi
rm params.txt ex7_alu.txt
exit $exit_code







