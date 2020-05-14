#!/bin/sh

if [ $# -ne 3 ]; then
   echo "test1 <name> <age> <weight>"
   exit
fi

name=$1
age=$2
weight=$3

ent=$(printf 'My name is %s and I am %d years old. My weight is %f kg.' $name $age $weight)

echo "$@" > ent.txt 
./exercise1 < ent.txt > sal.txt
sal=$(grep "My name is" sal.txt)
rm ent.txt sal.txt

if [ "$ent" = "$sal" ]; then
   echo "Test OK!!"
else
  echo "Test ERROR!!"
fi
