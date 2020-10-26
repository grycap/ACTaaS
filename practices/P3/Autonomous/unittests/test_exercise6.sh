#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <time that funds are left on deposit (years)>"
   exit
fi

years=$1

echo "$@" > ent.txt

./exercise6_bin < ent.txt > sal.txt
sw=$(echo "$years >= 5"|bc -l)
if [ $sw -eq 1 ]
then
   interest_rate=0.095
   pro=$(printf "Interest rate for %.2f years is %.3f\n" $years $interest_rate)
   if grep -q "$pro" "sal.txt"
   then
      echo "Test OK!!"
	  exit_code=0
   else
      echo "Test ERROR!!"
	  echo "EXPECTED OUTPUT:"
	  echo "$pro"
	  echo "STUDENT OUTPUT:"
	  cat sal.txt
	  exit_code=1
   fi
   rm ent.txt sal.txt
   exit $exit_code
fi

sw=$(echo "$years >= 4"|bc -l)
if [ $sw -eq 1 ]
then
   interest_rate=0.090
   pro=$(printf "Interest rate for %.2f years is %.3f\n" $years $interest_rate)
   if grep -q "$pro" "sal.txt"
   then
      echo "Test OK!!"
	  exit_code=0
   else
      echo "Test ERROR!!"
	  echo "EXPECTED OUTPUT:"
	  echo "$pro"
	  echo "STUDENT OUTPUT:"
	  cat sal.txt
	  exit_code=1
   fi
   rm ent.txt sal.txt
   exit $exit_code
fi

sw=$(echo "$years >= 3"|bc -l)
if [ $sw -eq 1 ]
then
   interest_rate=0.085
   pro=$(printf "Interest rate for %.2f years is %.3f\n" $years $interest_rate)
   if grep -q "$pro" "sal.txt"
   then
      echo "Test OK!!"
	  exit_code=0
   else
      echo "Test ERROR!!"
	  echo "EXPECTED OUTPUT:"
	  echo "$pro"
	  echo "STUDENT OUTPUT:"
	  cat sal.txt
	  exit_code=1
   fi
   rm ent.txt sal.txt
   exit $exit_code
fi

sw=$(echo "$years >= 2"|bc -l)
if [ $sw -eq 1 ]
then
   interest_rate=0.075
   pro=$(printf "Interest rate for %.2f years is %.3f\n" $years $interest_rate)
   if grep -q "$pro" "sal.txt"
   then
      echo "Test OK!!"
	  exit_code=0
   else
      echo "Test ERROR!!"
	  echo "EXPECTED OUTPUT:"
	  echo "$pro"
	  echo "STUDENT OUTPUT:"
	  cat sal.txt
	  exit_code=1
   fi
   rm ent.txt sal.txt
   exit $exit_code
fi

sw=$(echo "$years >= 1"|bc -l)
if [ $sw -eq 1 ]
then
   interest_rate=0.065
   pro=$(printf "Interest rate for %.2f years is %.3f\n" $years $interest_rate)
   if grep -q "$pro" "sal.txt"
   then
      echo "Test OK!!"
	  exit 0
   else
      echo "Test ERROR!!"
	  echo "EXPECTED OUTPUT:"
	  echo "$pro"
	  echo "STUDENT OUTPUT:"
	  cat sal.txt
	  exit_code=1
   fi
   rm ent.txt sal.txt
   exit $exit_code
fi

sw=$(echo "$years > 0"|bc -l)
if [ $sw -eq 1 ]
then
   interest_rate=0.058
   pro=$(printf "Interest rate for %.2f years is %.3f\n" $years $interest_rate)
   if grep -q "$pro" "sal.txt"
   then
      echo "Test OK!!"
	  exit_code=0
   else
      echo "Test ERROR!!"
	  echo "EXPECTED OUTPUT:"
	  echo "$pro"
	  echo "STUDENT OUTPUT:"
	  cat sal.txt
	  exit_code=1
   fi
   rm ent.txt sal.txt
   exit $exit_code
fi

sw=$(echo "$years < 0"|bc -l)
if [ $sw -eq 1 ]
then
   interest_rate=0.058
   pro=$(echo "Out of range values. The program will end.")
   if grep -q "$pro" "sal.txt"
   then
      echo "Test OK!!"
	  exit_code=0
   else
      echo "Test ERROR!!"
	  echo "EXPECTED OUTPUT:"
	  echo "$pro"
	  echo "STUDENT OUTPUT:"
	  cat sal.txt
	  exit_code=1
   fi
   rm ent.txt sal.txt
   exit $exit_code
fi


