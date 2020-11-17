#!/bin/bash

if [ $# -ne 3 ] || [ $1 -ge $2 ]; then
   echo "$0 <min value> <max value> <increment>"
   exit
fi
min="$1"
max="$2"
inc="$3"
for cels in $(seq $min $inc $max)
do
   fahr=$(echo "(9.0 / 5.0) * $cels + 32.0"|bc -l)
   printf "%.1f\n" $fahr >> ex4_out.txt
done
echo "$@" > params.txt
./exercise4_bin < params.txt > sal.txt
cat sal.txt|awk '{ print $2  }'| tr -d [:alpha:]|grep . > ex4_alu.txt
if cmp -s ex4_out.txt ex4_alu.txt; then
    echo "Test OK!!"
	exit_code=0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   cat ex4_out.txt
   echo "STUDENT OUTPUT:"
   cat ex4_alu.txt
   exit_code=1
fi
rm params.txt ex4_out.txt ex4_alu.txt
exit $exit_code