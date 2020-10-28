#!/bin/bash

if [ $# -ne 3 ]; then
   echo "$0 <option> <a> <b>"
   echo "Aviable options:\n1-sumation\n2-substraction\n3-multiplication\n4-division"
   exit
fi

case $1 in
  1) res1=$(echo "$2 + $3"|bc)
     echo "$@" > ent.txt
     ./exercise3_bin < ent.txt > sal.txt
     res2=$(cat sal.txt|tail -n1|grep -oE '[^ ]+$')
     if [ "$res1" = "$res2" ]
     then
        echo "Test for sumation OK!!"
        exit 0
        rm ent.txt sal.txt
     else
        echo "Test for sumation ERROR!!"
        exit 1
        rm ent.txt sal.txt
     fi
  ;;
  2) res1=$(echo "$2 - $3"|bc)
     echo "$@" > ent.txt
     ./exercise3_bin < ent.txt > sal.txt
     res2=$(cat sal.txt|tail -n1|grep -oE '[^ ]+$')
     if [ "$res1" = "$res2" ]
     then
        echo "Test for substraction OK!!"
        exit 0
        rm ent.txt sal.txt
     else
        echo "Test for substraction ERROR!!"
        exit 1
        rm ent.txt sal.txt
     fi
  ;;

    3) res1=$(echo "$2 * $3"|bc)
       echo "$@" > ent.txt
       ./exercise3_bin < ent.txt > sal.txt
       res2=$(cat sal.txt|tail -n1|grep -Eo -oE '[^ ]+$')
       if [ "$res1" = "$res2" ]
       then
          echo "Test for multiplication OK!!"
          rm ent.txt sal.txt
          exit 0
       else
          echo "Test for multiplication ERROR!!"
          rm ent.txt sal.txt
          exit 1
       fi
  ;;
    4) if [ $3 -eq 0 ]
       then
          res1="Error"
          echo "Testing division by 0 attempt..."
       else
          res1=$(echo "$2 / $3"|bc)
       fi
       echo "$@" > ent.txt
       ./exercise3_bin < ent.txt > sal.txt

          res2=$(cat sal.txt|tail -n1|grep -oE '[^ ]+$')

       if grep -q "$res1" <<< "$res2" 
       then
          echo "Test for division OK!!"
          rm ent.txt sal.txt
          exit 0
       else
          echo "Test for division ERROR!!"
          rm ent.txt sal.txt
          exit 1 
       fi
  ;;
   *)
       res1="Incorrect option."
       echo "$@" > ent.txt
      ./exercise3_bin < ent.txt > sal.txt
       res2=$(cat sal.txt|tail -n1)
       if grep -q "$res1" <<< "$res2" 
       then
          echo "Test for incorrect option validation OK!!"
          rm ent.txt sal.txt
          exit 0
       else
          echo "Test for incorrect option validation ERROR!!"
          rm ent.txt sal.txt
          exit 1
       fi
esac



