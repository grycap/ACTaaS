#!/bin/bash
JENKINS_ROOT_URL=$1
ROLE_NAME=$2
USER=$3
PASS=$4

curl --user ${USER}:${PASS} ${JENKINS_ROOT_URL}/role-strategy/strategy/addRole --data "type=projectRoles&roleName=${ROLE_NAME}&pattern=alu*&permissionIds=hudson.model.Item.Read&overwrite=true"
