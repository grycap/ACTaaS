#!/bin/bash

if [ $# -ne 5 ]; then
   echo "$0 <input file> <name> <nif> <age> <credits>"
   exit
fi

sw=$(echo "$4 > 18 || $5 < 30"|bc -l)


if [ $sw -eq 1 ]
then
   echo "$2" > user_ex4.txt
   echo "$2" > "$1"
   echo "$3" >> "$1"
   echo "$4" >> "$1"
   echo "$5" >> "$1"
fi
echo "$1" > ent.txt
./exercise4_bin < ent.txt > /dev/null
if test -f "user.txt"; then
   a=$(cat user.txt)
   b=$(cat user_ex4.txt)
   rm *.txt
else
   echo "Test ERROR -- File user.txt not found!!"
   exit 1 
fi


if [ "$a" = "$b" ]; then
    echo "Test OK!!"
    exit 0
else
   echo "Test ERROR!!"
          echo "Test ERROR!!"
          echo "EXPECTED OUTPUT:"
          echo "$b"
          echo "STUDENT OUTPUT:"
          echo "$a"
          exit 1
fi

