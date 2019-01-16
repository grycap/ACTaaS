#!/bin/bash

#File is a list of student's github accounts, one per line
FILE=$1
JENKINS_URL=$2
PRACTICES=$3
USER=$4
PASS=$5
ROLE_NAME='alumno'

#Create global role 'alumno'
curl --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/addRole --data "type=globalRoles&roleName=${ROLE_NAME}&permissionIds=hudson.model.Hudson.Read,hudson.model.Item.Build&overwrite=true"

#Read file and for each line, create the user, folders and project roles

while IFS='' read -r STUDENT || [[ -n "$STUDENT" ]]; do
    #Create user
    NEW_PASS=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
    #devolver al profesor la lista de alumnos y su contraseña de jenkins creada de forma aleatoria
    echo "${STUDENT},${NEW_PASS}" >> students_jenkins_accounts.txt
    CMD="jenkins.model.Jenkins.instance.securityRealm.createAccount(\"${STUDENT}\",\"${NEW_PASS}\")"
    echo $CMD | java -jar scripts_jenkins/jenkins-cli.jar -auth ${USER}:${PASS} -s ${JENKINS_URL} groovy = 
    #>/dev/null

    #Create the main folder
    curl -X POST "${JENKINS_URL}/createItem?name=${STUDENT}&mode=com.cloudbees.hudson.plugins.folder.Folder&from=&json={"name":"${STUDENT}","mode":"com.cloudbees.hudson.plugins.folder.Folder","from":"","Submit":"OK"}&Submit=OK" --user ${USER}:${PASS} -H "Content-Type:application/x-www-form-urlencoded"
    
    #Create the subfolders (We need to know how many practices are in the subject)
    i="0"
    while [ $i -lt $PRACTICES ]
    do
        i=$[$i+1]
        curl -X POST "${JENKINS_URL}/job/${STUDENT}/createItem?name=practica${i}_${STUDENT}&mode=com.cloudbees.hudson.plugins.folder.Folder&Submit=OK" -H "Content-Type:application/x-www-form-urlencoded" --user ${USER}:${PASS} 
    done
    
    #Create project roles for each student, to restrict the view of the folders
    curl --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/addRole --data "type=projectRoles&roleName=${STUDENT}&pattern=${STUDENT}&permissionIds=hudson.model.Item.Read,hudson.model.Item.Discover&overwrite=true"
    curl --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/addRole --data "type=projectRoles&roleName=${STUDENT}sub&pattern=${STUDENT}/.*&permissionIds=hudson.model.Item.Read,hudson.model.Item.Discover&overwrite=true"
    
    #Assing global and project roles to the student
    curl --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/assignRole --data "type=globalRoles&roleName=${ROLE_NAME}&sid=${STUDENT}"
    curl --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/assignRole --data "type=projectRoles&roleName=${STUDENT}&sid=${STUDENT}"
    curl --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/assignRole --data "type=projectRoles&roleName=${STUDENT}sub&sid=${STUDENT}"

done < ${FILE}

echo 'All users properly created in Jenkins!'
exit 0

