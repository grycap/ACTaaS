#!/bin/bash
if [ $# -ne 4 ]
then
   echo "$0 <yearly amount> <years> <min_interest> <max_interest>"
   exit
fi

YEARLY_AMOUNT=$1
YEARS=$2
MIN_INTEREST=$3
MAX_INTEREST=$4

./exercise10_bin > ex10_alu.txt
for ((i=MIN_INTEREST; i <= MAX_INTEREST; i++))
do
    ya=$(echo "$YEARLY_AMOUNT * ($i / 100)" |bc -l)
    amount=$(echo "$YEARS * ($YEARLY_AMOUNT * ($i / 100))"|bc -l)
    printf "Total yearly amount at %d%%: %3.0f\n" $i  $amount >> ex10_out.txt
done
if cmp -s ex10_alu.txt ex10_out.txt; then
    echo "Test OK!!"
else
    echo "Test ERROR!!"
fi
rm ex10_out.txt ex10_alu.txt
