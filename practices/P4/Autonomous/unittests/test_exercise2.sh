#!/bin/bash

if [ $# -ne 2 ] || [ $1 -ge $2 ]; then
   echo "$0 <min value> <max value>"
   exit
fi
min=$1
max=$2
c=0
declare -a square
declare -a cube
for ((i=min; i<=max; i++))
do
  square[$c]=$(echo "$i * $i"|bc)
  cube[$c]=$(echo "$i * $i * $i"|bc)
  c=$(echo "$c + 1"|bc)
done
echo "$@" > params.txt
./exercise2_bin < params.txt > ex2_out.txt
cat ex2_out.txt|awk '{ print $2  }'| tr -d [:alpha:]|grep . > sq_alu.txt
cat ex2_out.txt|awk '{ print $3  }'| tr -d [:alpha:]|grep . > cu_alu.txt
for i in "${square[@]}"
do
  echo "$i" >> sq.txt
done

for i in "${cube[@]}"
do
  echo "$i" >> cu.txt
done
if cmp -s sq.txt sq_alu.txt; then
    testsq=1
else
   testsq=0
fi

if cmp -s cu.txt cu_alu.txt; then
    testcu=1
else
   testcu=0
fi

if [ $testsq -eq 1 ] && [ $testcu -eq 1 ]
then
   echo "Test OK!!"
   exit_code=0
else
   echo "Test ERROR!!"
   exit_code=1
fi
rm params.txt ex2_out.txt sq_alu.txt cu_alu.txt sq.txt cu.txt
exit $exit_code
