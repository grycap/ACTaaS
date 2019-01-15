#!/bin/bash

#File is a combination of 'student_git_account,git_url', one per line
FILE=$1
JENKINS_URL=$2
JOB_NAME=$3
JOB_TEMPLATE=$4
PRACTICA=$5
USER=$6
PASS=$7

while IFS=',' read STUDENT GIT_URL; do 
    # Modify the job template of Jenkins to include the repo of each student
	cat ${JOB_TEMPLATE} | sed "s/#URL#/$(echo $GIT_URL | sed -e 's/\\/\\\\/g; s/\//\\\//g; s/&/\\\&/g')/g" >> /tmp/${JOB_NAME}_${STUDENT}
	# Create job in Jenkins for each student
	curl -X POST "${JENKINS_URL}/job/${STUDENT}/job/practica${PRACTICA}_${STUDENT}/createItem?name=${JOB_NAME}" --user ${USER}:${PASS} --data-binary "@/tmp/${JOB_NAME}_${STUDENT}" -H "Content-Type:text/xml"
done < ${FILE}