if [ $# -ne 3 ];
then
   echo "$0 <name> <current year> <year of birth>"
   exit
fi
age=$(echo "$2-$3"|bc)
./exercise9_bin > sal_9_alu.txt
sal=$(printf "%s is %d years old.\n" "$1" $age)
alu_age=$(grep -oE $age sal_9_alu.txt)

if [ $age -eq $alu_age ]; then
   echo "Test OK!!"
   rm sal_9_alu.txt
   exit 0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   echo "$sal"
   echo "STUDENT OUTPUT:"
   cat sal_9_alu.txt
   rm sal_9_alu.txt
   exit 1
fi


