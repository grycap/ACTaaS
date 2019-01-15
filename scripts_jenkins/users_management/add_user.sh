#!/bin/bash

NEW_USER=$1
NEW_PASS=$2
JENKINS_URL=$3
USER=$4
PASS=$5

CMD="jenkins.model.Jenkins.instance.securityRealm.createAccount(\"${NEW_USER}\",\"${NEW_PASS}\")"
echo $CMD  | java -jar ../jenkins-cli.jar -auth ${USER}:${PASS} -s ${JENKINS_URL} groovy =

#curl --user ${USER}:${PASS} -X POST "${JENKINS_URL}/credentials/store/system/domain/_/createCredentials" \
#--data-urlencode 'json={
#  "": "0",
#  "credentials": {
#    "scope": "GLOBAL",
#    "id": "identification",
#    "username": "${NEW_USER}",
#    "password": "${NEW_PASS}",
#    "description": "credenciales alumno",
#    "$class": "com.cloudbees.plugins.credentials.impl.UsernamePasswordCredentialsImpl"
#  }
#}'
