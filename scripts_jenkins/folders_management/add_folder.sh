#!/bin/bash
JENKINS_ROOT_URL=$1
JOB_NAME=$2
USER=$3
PASS=$4

#Enable this code if the 'Prevent Cross Site Request Forgery exploits' option is enabled in Jenkins
#CRUMB=$(curl --user $USER:$PASS \
#    $JENKINS_ROOT_URL/crumbIssuer/api/xml?xpath=concat\(//crumbRequestField,%22:%22,//crumb\))
#curl -X POST "${JENKINS_ROOT_URL}/createItem?name=${JOB_NAME}&mode=com.cloudbees.hudson.plugins.folder.Folder&from=&json={"name":"${JOB_NAME}","mode":"com.cloudbees.hudson.plugins.folder.Folder","from":"","Submit":"OK"}&Submit=OK" --user ${USER}:${PASS} -H "${CRUMB}" -H "Content-Type:application/x-www-form-urlencoded"

curl -XPOST "${JENKINS_ROOT_URL}/createItem?name=${JOB_NAME}&mode=com.cloudbees.hudson.plugins.folder.Folder&from=&json={"name":"${JOB_NAME}","mode":"com.cloudbees.hudson.plugins.folder.Folder","from":"","Submit":"OK"}&Submit=OK" --user ${USER}:${PASS} -H "Content-Type:application/x-www-form-urlencoded"
