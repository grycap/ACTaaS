#!/bin/bash

cecho(){
    RED="\033[0;31m"
    GREEN='\033[0;32m'
    YELLOW='\033[1;33m'
    # ... ADD MORE COLORS
    NC='\033[0m' # No Color

    printf "${!1}${2} ${NC}\n"
}

usage() { 
    echo "Usage: $0 [-f <students_names_file>] [-j <Jenkins_URL>] [-a <number_of_the_corresponding_asssingment>] [-n <name_of_the_exercise>] [-t <template_of_the_exercise.xml>] [-u <Jenkins_user>] [-p <Jenkins_password>] -s <student account> -g <github url> -i <credentials Id> [-c folder class <-f for Face> | <-a for Autonomous>]" 1>&2; exit 1; 
}

addstudent() {
             EX="exercise"
			 EX="$EX$JOB_NAME"
             COM="sh /var/tmp/education/ACTaaS/practices/P${PRACTICA}/$TYPE/unittests/run_test_exercise${JOB_NAME}.sh"

			# Modify the job template of Jenkins to include the repo of each student
             cat ${JOB_TEMPLATE} | sed "s/#URL#/$(echo $GIT_URL | sed -e 's/\\/\\\\/g; s/\//\\\//g; s/&/\\\&/g')/g" > /tmp/${JOB_NAME}_${STUDENT}
			 cat /tmp/${JOB_NAME}_${STUDENT} | sed "s/#EX#/$(echo $EX | sed -e 's/\\/\\\\/g; s/\//\\\//g; s/&/\\\&/g')/g" > /tmp/${JOB_NAME}_${STUDENT}
			 cat /tmp/${JOB_NAME}_${STUDENT} | sed "s/#COM#/$(echo $COM | sed -e 's/\\/\\\\/g; s/\//\\\//g; s/&/\\\&/g')/g" > /tmp/${JOB_NAME}_${STUDENT}
			 cat /tmp/${JOB_NAME}_${STUDENT} | sed "s/#ASIG#/$(echo $PRACTICA | sed -e 's/\\/\\\\/g; s/\//\\\//g; s/&/\\\&/g')/g" > /tmp/${JOB_NAME}_${STUDENT}
			 cat /tmp/${JOB_NAME}_${STUDENT} | sed "s/#CID#/$(echo $CID | sed -e 's/\\/\\\\/g; s/\//\\\//g; s/&/\\\&/g')/g" > /tmp/${JOB_NAME}_${STUDENT}
             
			 # Create job in Jenkins for each student
             curl -s -X POST "${JENKINS_URL}/job/${STUDENT}/job/P${PRACTICA}__$TYPE/createItem?name=${JOB_NAME}" --user ${USER}:${PASS} --data-binary "@/tmp/${JOB_NAME}_${STUDENT}" -H "Content-Type:text/xml"
             

 }

readfile() {

    while IFS=',' read STUDENT GIT_URL; do 
         addstudent
   done < ${FILE}
     
}

ROLE_NAME='alumno'

while getopts ":f:j:a:n:t:u:p:s:g:i:c:" o; do
    case "${o}" in
        f)
            #File is a combination of 'student_git_account,git_url', one per line
            FILE=${OPTARG}
			;;
        j)
            JENKINS_URL=${OPTARG}
            ;;
        a)
            PRACTICA=${OPTARG}
            ;;
        n)
            JOB_NAME=${OPTARG}
		    ;;
        t)
            JOB_TEMPLATE=${OPTARG}
            ;;
        u)
            USER=${OPTARG}
            ;;
        p)
            PASS=${OPTARG}
            ;;
        s)
            STUDENT=${OPTARG}
			;;
		g)
            GIT_URL=${OPTARG}
            ;;
		i)
            CID=${OPTARG}
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

if [ -z "${JENKINS_URL}" ] || [ -z "${CID}" ] || [ -z "${PRACTICA}" ] || [ -z "${JOB_NAME}" ] || [ -z "${JOB_TEMPLATE}" ] || [ -z "${USER}" ] || [ -z "${PASS}" ] || [ -z "${TYPE}" ]; then
    cecho "RED" "ERROR: some parameters are missing, please consider usage."
    usage
    exit
fi

if [ -z "${FILE}" ]; then
     addstudent
    else
	 readfile
fi

cecho "GREEN" "\n Test for exercise ${JOB_NAME} properly created in Jenkins for each student!"


