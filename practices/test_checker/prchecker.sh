#/bin/sh

cecho(){
    RED="\033[0;31m"
    GREEN='\033[0;32m'
    YELLOW='\033[1;33m'
    # ... ADD MORE COLORS
    NC='\033[0m' # No Color

    printf "${!1}${2} ${NC}\n"
}

usage() { 
    echo "Usage: $0 [-a <number_of_the_corresponding_asssingment>] [-n <name_of_the_exercise>] [-t test type <-o for Ok> | <-e for Error>] [-c folder class <-f for Face> | <-a for Autonomous>]" 1>&2; exit 1; 
}

test_OK() {
       list=$(ls /var/tmp/education/ACTaaS/practices/test_checker/P${PRACTICA}/$TYPE/exercise${JOB_NAME}/OK/*.c)
       exit_code=0
	   for f in $list
       do
        printf "\nProcessing ${f##*/}..."
        gcc -Wall -Wno-main -lm $f -o exercise${JOB_NAME}_bin 2> gcclog.txt
        if [ -s gcclog.txt ]  
        then
           printf " Compilation error in ${f##*/}\n" 
		   exit_code=1
        else
           sh /var/tmp/education/ACTaaS/practices/P${PRACTICA}/$TYPE/unittests/run_test_exercise${JOB_NAME}.sh >> /dev/null 2>&1
           if [ $? -ne 0 ]   
           then
              printf " False positive in ${f##*/}\n"
			  exit_code=1
		   fi
	    fi
        rm ./gcclog.txt
		if [ -f exercise${JOB_NAME}_bin ]  
        then
		   rm ./exercise${JOB_NAME}_bin
	    fi
	   done
	   return $exit_code
}

test_ERROR() {
       list=$(ls /var/tmp/education/ACTaaS/practices/test_checker/P${PRACTICA}/$TYPE/exercise${JOB_NAME}/ERROR/*.c)
       for f in $list
       do
        echo "Processing $f..."
        gcc -Wall -Wno-main -lm $f -o exercise${JOB_NAME}_bin 2> gcclog.txt
        if [ -s gcclog.txt ]  
        then
           echo "Compilation error in $f" 
        else
           sh /var/tmp/education/ACTaaS/practices/P${PRACTICA}/$TYPE/unittests/run_test_exercise${JOB_NAME}.sh >> /dev/null 2>&1
           if [ $? -eq 0 ]   
           then
              echo "False positive in $f"
		   else
		      let c=c+1
           fi
		 fi
        rm ./gcclog.txt
        if [ -f exercise${JOB_NAME}_bin ]  
        then
		   rm ./exercise${JOB_NAME}_bin
	   fi
       done
	   nf=$(ls /var/tmp/education/ACTaaS/practices/test_checker/P${PRACTICA}/$TYPE/exercise${JOB_NAME}/ERROR/*.c|wc -l)
	   if [ $nf -eq $c ]
	   then
	      return 0
	   else
	      return 1
	   fi
}

while getopts ":a:n:t:c:" o; do
    case "${o}" in
        a)
            PRACTICA=${OPTARG}
            ;;
        t)
            TEST_TYPE=${OPTARG}
            if [ "$TEST_TYPE" = "o" ] || [ "$TEST_TYPE" = "O" ]
            then
               TEST_TYPE=OK
            elif [ "$TEST_TYPE" = "e" ] || [ "$TEST_TYPE" = "E" ]
            then
               TEST_TYPE=ERROR
            else
               TEST_TYPE=""
            fi
            ;;
        n)
            JOB_NAME=${OPTARG}
            ;;
        c)
         TYPE=${OPTARG}
         if [ "$TYPE" = "a" ] || [ "$TYPE" = "A" ]
         then
            TYPE=Autonomous
        elif [ "$TYPE" = "f" ] || [ "$TYPE" = "F" ]
        then
            TYPE=Face
        else
            TYPE=""
        fi
        ;;
       *)
            cecho "RED" "ERROR: some parameters are incorrect, please consider usage."
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if  [ -z "${PRACTICA}" ] || [ -z "${JOB_NAME}" ] || [ -z "${TEST_TYPE}" ] || [ -z "${TYPE}" ]; then
    cecho "RED" "ERROR: some parameters are missing, please consider usage."
    usage
    exit
fi

if [ $TEST_TYPE = OK ] 
then
   test_OK
   if [ $? -eq 0 ]  
   then
       exit_code=0
   else
      exit_code=1
   fi
else
    test_ERROR
   if [ $? -eq 0 ]  
   then
       exit_code=0
   else
      exit_code=1
   fi
fi

if [ $exit_code -eq 0 ]
then
   cecho "GREEN" "Test checker complete successfully."
else
   cecho "RED" "Test checker ERROR -- Please, Check script output."
fi
exit $exit_code
