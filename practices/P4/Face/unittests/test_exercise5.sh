#!/bin/bash

if [ $# -ne 3 ]; then
   echo "$0 <option> <a> <b>"
   echo "Aviable options:\n0-exit\n1-sumation\n2-substraction\n3-multiplication\n4-division"
   exit 1
fi

case $1 in
  0) echo "$@" > ent.txt
     ./exercise4_bin < ent.txt > sal.txt
     if [ $? -eq 0 ]
     then
        echo "Test for exit option OK!!"
		exit_code=0
     else
        echo "Test for exit option ERROR!!"
		exit_code=1
     fi
  ;;

  1) op=$(echo "$2 + $3"|bc)
     echo "$@ 0" > ent.txt
     ./exercise5_bin < ent.txt > sal.txt
     res=$(cat sal.txt|grep -oE '[^ ]+$'| tr -dc '[:digit:]')
     if [ $op -lt 0 ]
     then
        res=$(echo "$res * -1"|bc)
     fi
     if [ "$op" = "$res" ]
     then
        echo "Test for sumation OK!!"
		exit_code=0
     else
        echo "Test for sumation ERROR!!"
		exit_code=1
     fi
  ;;

  2) op=$(echo "$2 - $3"|bc)
     echo "$@ 0" > ent.txt
     ./exercise5_bin < ent.txt > sal.txt
     res=$(cat sal.txt|grep -oE '[^ ]+$'|tr -dc '[:digit:]')
     if [ $op -lt 0 ]
     then
        res=$(echo "$res * -1"|bc)
     fi
     if [ "$op" = "$res" ]
     then
        echo "Test for substraction OK!!"
		exit_code=0
     else
        echo "Test for substraction ERROR!!"
		exit_code=1
     fi
    ;;
    3) op=$(echo "$2 * $3"|bc)
       echo "$@ 0" > ent.txt
       ./exercise5_bin < ent.txt > sal.txt
       res=$(cat sal.txt|grep -oE '[^ ]+$'|tr -dc '[:digit:]')
       if [ $op -lt 0 ]
       then
          res=$(echo "$res * -1"|bc)
       fi
       if [ "$op" = "$res" ]
       then
          echo "Test for multiplication OK!!"
       else
          echo "Test for multiplication ERROR!!"
       fi
  ;;
    4) if [ $3 -eq 0 ]
       then
          op="Error"
          echo "Testing division by 0 attempt..."
          echo "$@ 0" > ent.txt
       ./exercise5_bin < ent.txt > sal.txt
       if grep -q "$res" "sal.txt"
       then
          echo "Test for division OK!!"
		  exit_code=0
       else
          echo "Test for division ERROR!!"
		  exit_code=1
       fi
       rm ent.txt sal.txt
       exit
       else
          op=$(echo "$2 / $3"|bc)

       fi
       echo "$@ 0" > ent.txt
       ./exercise5_bin < ent.txt > sal.txt
       res=$(cat sal.txt|grep -oE '[^ ]+$'|tr -dc '[:digit:]')
       if [ $op -lt 0 ]
       then
         res=$(echo "$res * -1"|bc)
       fi
       if [ "$op" = "$res" ]
       then
          echo "Test for division OK!!"
		  exit_code=0
       else
          echo "Test for division ERROR!!"
		  exit_code=1
       fi
  ;;
   *)
       res="Incorrect option"
       echo "$@ 0" > ent.txt
      ./exercise5_bin < ent.txt > sal.txt
       if grep -q "$res" "sal.txt"
       then
          echo "Test for incorrect option validation OK!!"
		  exit_code=0
       else
          echo "Test for incorrect option validation ERROR!!"
		  exit_code=1
       fi
esac
rm ent.txt sal.txt
exit $exit_code


