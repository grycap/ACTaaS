#!/bin/bash
JENKINS_ROOT_URL=$1
ROLE_NAME=$2
PATTERN=$3
USER=$4
PASS=$5

curl --user ${USER}:${PASS} ${JENKINS_ROOT_URL}/role-strategy/strategy/addRole --data "type=projectRoles&roleName=${ROLE_NAME}&pattern=${PATTERN}&permissionIds=hudson.model.Item.Read,hudson.model.Item.Discover&overwrite=true"
curl --user ${USER}:${PASS} ${JENKINS_ROOT_URL}/role-strategy/strategy/addRole --data "type=projectRoles&roleName=${ROLE_NAME}sub&pattern=${PATTERN}/.*&permissionIds=hudson.model.Item.Read,hudson.model.Item.Discover&overwrite=true"
