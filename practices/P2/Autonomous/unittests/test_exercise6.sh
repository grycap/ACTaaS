#!/bin/bash

if [ $# -ne 2 ]; then
   echo "$0 <origin file> <dest file>"
   exit
fi
cp $1 $2
for line in "$@"
do
   printf "%s\n" "$line" >> ex6.txt
done
./exercise6_bin < ex6.txt > /dev/null
if cmp -s "$2" "$1"; then
    echo "OK!!"
else
    echo "ERROR!!"
fi
rm ex6.txt
