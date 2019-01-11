#!/bin/bash
JENKINS_ROOT_URL=$1
ROLE_NAME=$2
USER=$3
PASS=$4

curl --user ${USER}:${PASS} ${JENKINS_ROOT_URL}/role-strategy/strategy/addRole --data "type=globalRoles&roleName=${ROLE_NAME}&permissionIds=hudson.model.Hudson.Read&overwrite=true"
