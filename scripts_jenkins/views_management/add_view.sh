#!/bin/bash
JENKINS_ROOT_URL=$1
VIEW_NAME=$2
USER=$3
PASS=$4

CMD="hudson.model.Hudson.instance.addView(new hudson.model.ListView(\"${VIEW_NAME}\"))"
echo $CMD | java -jar ../jenkins-cli.jar -auth ${USER}:${PASS} -s ${JENKINS_ROOT_URL} groovy =
