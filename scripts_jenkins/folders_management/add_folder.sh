#!/bin/bash
JENKINS_ROOT_URL=$1
JOB_NAME=$2
USER=$3
PASS=$4

curl -XPOST "${JENKINS_ROOT_URL}/createItem?name=${JOB_NAME}&mode=com.cloudbees.hudson.plugins.folder.Folder&from=&json={"name":"${JOB_NAME}","mode":"com.cloudbees.hudson.plugins.folder.Folder","from":"","Submit":"OK"}&Submit=OK" --user ${USER}:${PASS} -H "Content-Type:application/x-www-form-urlencoded"

