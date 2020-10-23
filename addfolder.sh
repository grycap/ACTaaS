#!/bin/bash

cecho(){
    RED="\033[0;31m"
    GREEN='\033[0;32m'
    YELLOW='\033[1;33m'
    # ... ADD MORE COLORS
    NC='\033[0m' # No Color

    printf "${!1}${2} ${NC}\n"
}

usage() { echo "Usage: $0 [-f <students_names_file>] [-j <Jenkins_URL>] [-a <number_of_asssingment>] [-u <Jenkins_user>] [-p <Jenkins_password>] [-s <single_student_account>] [-c folder class <-f for Face> | <-a for Autonomous>]" 1>&2; exit 1; }

createFolder() {
	
      #Create the subfolder (We need to know  practice number )
      curl -s -X POST "${JENKINS_URL}/job/${STUDENT}/createItem?name=P${PRACTICES}__${TYPE}&mode=com.cloudbees.hudson.plugins.folder.Folder&Submit=OK" -H "Content-Type:application/x-www-form-urlencoded" --user ${USER}:${PASS}
}

readFile() {
	while IFS='' read -r STUDENT || [[ -n "$STUDENT" ]]; 
	do
	  createFolder
    done < ${FILE}
	
}

while getopts ":f:j:u:s:p:a:c:" o; do
    case "${o}" in
        f)
            #File is a list of student's github accounts, one per line
            FILE=${OPTARG}
			
            ;;
        a)
            PRACTICES=${OPTARG}
            ;;

        j)
            JENKINS_URL=${OPTARG}
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

 

if [ -z "${JENKINS_URL}" ] || [ -z "${PRACTICES}" ] || [ -z "${USER}" ] || [ -z "${PASS}" ] || [ -z "${TYPE}" ]; then
    cecho "RED" "ERROR: some parameters are missing, please consider usage."
    usage
    exit
fi

if [ -z "${FILE}" ] && [ -z "${STUDENT}" ]
then
    cecho "RED" "ERROR: some parameters are missing, please consider usage."
    usage
    exit
fi

if [ -z "${FILE}" ]
then
   createFolder
else
    readFile
fi   
    