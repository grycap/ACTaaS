#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <n>"
   exit
fi

age=$(echo "($1 % 10) + ($1 / 10)"|bc)
magic=$(echo "$1 % 10"| bc)
ent=$(printf 'Your age is %d and the secret number is %d.' $age $magic)

echo "$@" > ent.txt
sal=$(./exercise3_bin < ent.txt > sal.txt)
sal=$(echo "$(tail -n +2 sal.txt)")
rm ent.txt sal.txt

if [ "$ent" = "$sal" ]; then
   echo "Test OK!!"
else
  echo "Test ERROR!!"
fi

