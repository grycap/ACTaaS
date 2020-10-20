#!/bin/bash

if [ $# -ne 2 ]; then
   echo "$0 <origin file> <dest file>"
   exit
fi
cp $1 $2
for line in "$@"
do
   printf "%s\n" "$line" >> ex5.txt
done
./exercise5_bin < ex5.txt > /dev/null
if cmp -s "$2" "$1"; then
    echo "Test OK!!"
    exit 0
else
    echo "Test ERROR -- Can 't duplicate file"
    exit 1
fi
rm ex5.txt
