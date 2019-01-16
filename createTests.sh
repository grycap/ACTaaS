#!/bin/bash

usage() { echo "Usage: $0 [-f <students_names_file>] [-j <Jenkins_URL>] [-a <number_of_the_corresponding_asssingment>] [-n <name_of_the_exercise>] [-t <template_of_the_exercise.xml>] [-u <Jenkins_user>] [-p <Jenkins_password>] [-c <use_crumb_cred>]" 1>&2; exit 1; }

CRUMB=false
ROLE_NAME='alumno'

while getopts ":f:j:a:n:t:u:p:c:" o; do
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
        c)
            CRUMB=true
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${FILE}" ] || [ -z "${JENKINS_URL}" ] || [ -z "${PRACTICA}" ] || [ -z "${JOB_NAME}" ] || [ -z "${JOB_TEMPLATE}" ] || [ -z "${USER}" ] || [ -z "${PASS}" ]; then
    echo "ERROR: some parameters are missing, please consider usage."
    usage
fi


#Consider first if we have to use CSRF authentication
if [ "$CRUMB" = true ] ; then
    CRUMB_KEY=$(curl --user $USER:$PASS \
        $JENKINS_URL/crumbIssuer/api/xml?xpath=concat\(//crumbRequestField,%22:%22,//crumb\))
    while IFS=',' read STUDENT GIT_URL; do 
        # Modify the job template of Jenkins to include the repo of each student
        cat ${JOB_TEMPLATE} | sed "s/#URL#/$(echo $GIT_URL | sed -e 's/\\/\\\\/g; s/\//\\\//g; s/&/\\\&/g')/g" >> /tmp/${JOB_NAME}_${STUDENT}
        # Create job in Jenkins for each student
        curl -X POST "${JENKINS_URL}/job/${STUDENT}/job/practica${PRACTICA}_${STUDENT}/createItem?name=${JOB_NAME}" --user ${USER}:${PASS} --data-binary "@/tmp/${JOB_NAME}_${STUDENT}" -H "Content-Type:text/xml" -H "${CRUMB_KEY}"
    done < ${FILE}
else
    while IFS=',' read STUDENT GIT_URL; do 
        # Modify the job template of Jenkins to include the repo of each student
        cat ${JOB_TEMPLATE} | sed "s/#URL#/$(echo $GIT_URL | sed -e 's/\\/\\\\/g; s/\//\\\//g; s/&/\\\&/g')/g" >> /tmp/${JOB_NAME}_${STUDENT}
        # Create job in Jenkins for each student
        curl -X POST "${JENKINS_URL}/job/${STUDENT}/job/practica${PRACTICA}_${STUDENT}/createItem?name=${JOB_NAME}" --user ${USER}:${PASS} --data-binary "@/tmp/${JOB_NAME}_${STUDENT}" -H "Content-Type:text/xml"
    done < ${FILE}
fi

echo -e "\n Test for exercise ${JOB_NAME} properly created in Jenkins for each student!"
exit 0