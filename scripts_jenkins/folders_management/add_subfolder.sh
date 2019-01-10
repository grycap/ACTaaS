#!/bin/bash
JENKINS_ROOT_URL=$1
JOB_FOLDER_URL=$2
JOB_NAME=$3
USER=$4
PASS=$5
curl -X POST "${JENKINS_ROOT_URL}/${JOB_FOLDER_URL}/createItem?name=${JOB_NAME}&mode=com.cloudbees.hudson.plugins.folder.Folder&Submit=OK" -H "Content-Type:application/x-www-form-urlencoded" --user $USER:$PASS 

