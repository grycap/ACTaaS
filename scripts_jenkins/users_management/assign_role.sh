#!/bin/bash
JENKINS_ROOT_URL=$1
TYPE=$2
ROLE_NAME=$3
USER_NAME=$4
USER=$5
PASS=$6

if [ "$TYPE" = "project" ]
then
    curl --user ${USER}:${PASS} ${JENKINS_ROOT_URL}/role-strategy/strategy/assignRole --data "type=projectRoles&roleName=${ROLE_NAME}&sid=${USER_NAME}"
    curl --user ${USER}:${PASS} ${JENKINS_ROOT_URL}/role-strategy/strategy/assignRole --data "type=projectRoles&roleName=${ROLE_NAME}sub&sid=${USER_NAME}"
elif [ "$TYPE" = "global" ]
then
    curl --user ${USER}:${PASS} ${JENKINS_ROOT_URL}/role-strategy/strategy/assignRole --data "type=globalRoles&roleName=${ROLE_NAME}&sid=${USER_NAME}"
else
    echo "No role type supported found"
fi
