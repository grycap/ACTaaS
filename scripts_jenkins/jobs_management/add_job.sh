#!/bin/bash
JENKINS_ROOT_URL=$1
JOB_NAME=$2
JOB_TEMPLATE=$3
USER=$4
PASS=$5

curl -XPOST "${JENKINS_ROOT_URL}/createItem?name=${JOB_NAME}" --user ${USER}:${PASS} --data-binary "@${JOB_TEMPLATE}" -H "Content-Type:text/xml"

