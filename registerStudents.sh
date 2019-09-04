#!/bin/bash

cecho(){
    RED="\033[0;31m"
    GREEN='\033[0;32m'
    YELLOW='\033[1;33m'
    # ... ADD MORE COLORS
    NC='\033[0m' # No Color

    printf "${!1}${2} ${NC}\n"
}

usage() { echo "Usage: $0 [-f <students_names_file>] [-j <Jenkins_URL>] [-a <number_of_asssingments>] [-u <Jenkins_user>] [-p <Jenkins_password>] [-c <use_crumb_cred>]" 1>&2; exit 1; }

CRUMB=false
ROLE_NAME='alumno'

while getopts ":f:j:a:u:p:c:" o; do
    case "${o}" in
        f)
            #File is a list of student's github accounts, one per line
            FILE=${OPTARG}
            ;;
        j)
            JENKINS_URL=${OPTARG}
            ;;
        a)
            PRACTICES=${OPTARG}
            ;;
        u)
            USER=${OPTARG}
            ;;
        p)
            PASS=${OPTARG}
            ;;
        c)
            CRUMB=true
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${FILE}" ] || [ -z "${JENKINS_URL}" ] || [ -z "${PRACTICES}" ] || [ -z "${USER}" ] || [ -z "${PASS}" ]; then
    cecho "RED" "ERROR: some parameters are missing, please consider usage."
    usage
fi

#Consider first if we have to use CSRF authentication
if [ "$CRUMB" = true ] ; then
    CRUMB_KEY=$(curl -s --user $USER:$PASS \
        $JENKINS_URL/crumbIssuer/api/xml?xpath=concat\(//crumbRequestField,%22:%22,//crumb\))
    #Create global role 'alumno'
    curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/addRole --data "type=globalRoles&roleName=${ROLE_NAME}&permissionIds=hudson.model.Hudson.Read,hudson.model.Item.Build&overwrite=true" -H "${CRUMB_KEY}"

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
        curl -s -X POST "${JENKINS_URL}/createItem?name=${STUDENT}&mode=com.cloudbees.hudson.plugins.folder.Folder&from=&json={"name":"${STUDENT}","mode":"com.cloudbees.hudson.plugins.folder.Folder","from":"","Submit":"OK"}&Submit=OK" --user ${USER}:${PASS} -H "${CRUMB_KEY}" -H "Content-Type:application/x-www-form-urlencoded"

        #Create the subfolders (We need to know how many practices are in the subject)
        i="0"
        while [ $i -lt $PRACTICES ]
        do
            i=$[$i+1]
            curl -s -X POST "${JENKINS_URL}/job/${STUDENT}/createItem?name=practica${i}_${STUDENT}&mode=com.cloudbees.hudson.plugins.folder.Folder&Submit=OK" -H "${CRUMB_KEY}" -H "Content-Type:application/x-www-form-urlencoded" --user ${USER}:${PASS} 
        done

        #Create project roles for each student, to restrict the view of the folders
        curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/addRole --data "type=projectRoles&roleName=${STUDENT}&pattern=${STUDENT}&permissionIds=hudson.model.Item.Read,hudson.model.Item.Discover&overwrite=true" -H "${CRUMB_KEY}"
        curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/addRole --data "type=projectRoles&roleName=${STUDENT}sub&pattern=${STUDENT}/.*&permissionIds=hudson.model.Item.Read,hudson.model.Item.Discover&overwrite=true" -H "${CRUMB_KEY}"

        #Assing global and project roles to the student
        curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/assignRole --data "type=globalRoles&roleName=${ROLE_NAME}&sid=${STUDENT}" -H "${CRUMB_KEY}"
        curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/assignRole --data "type=projectRoles&roleName=${STUDENT}&sid=${STUDENT}" -H "${CRUMB_KEY}"
        curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/assignRole --data "type=projectRoles&roleName=${STUDENT}sub&sid=${STUDENT}" -H "${CRUMB_KEY}"

    done < ${FILE}
else
    #Create global role 'alumno'
    curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/addRole --data "type=globalRoles&roleName=${ROLE_NAME}&permissionIds=hudson.model.Hudson.Read,hudson.model.Item.Build&overwrite=true"

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
        curl -s -X POST "${JENKINS_URL}/createItem?name=${STUDENT}&mode=com.cloudbees.hudson.plugins.folder.Folder&from=&json={"name":"${STUDENT}","mode":"com.cloudbees.hudson.plugins.folder.Folder","from":"","Submit":"OK"}&Submit=OK" --user ${USER}:${PASS} -H "Content-Type:application/x-www-form-urlencoded"

        #Create the subfolders (We need to know how many practices are in the subject)
        i="0"
        while [ $i -lt $PRACTICES ]
        do
            curl -s -X POST "${JENKINS_URL}/job/${STUDENT}/createItem?name=practica${i}_${STUDENT}&mode=com.cloudbees.hudson.plugins.folder.Folder&Submit=OK" -H "Content-Type:application/x-www-form-urlencoded" --user ${USER}:${PASS} 
            i=$[$i+1]
        done

        #Create project roles for each student, to restrict the view of the folders
        curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/addRole --data "type=projectRoles&roleName=${STUDENT}&pattern=${STUDENT}&permissionIds=hudson.model.Item.Read,hudson.model.Item.Discover&overwrite=true"
        curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/addRole --data "type=projectRoles&roleName=${STUDENT}sub&pattern=${STUDENT}/.*&permissionIds=hudson.model.Item.Read,hudson.model.Item.Discover&overwrite=true"

        #Assing global and project roles to the student
        curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/assignRole --data "type=globalRoles&roleName=${ROLE_NAME}&sid=${STUDENT}"
        curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/assignRole --data "type=projectRoles&roleName=${STUDENT}&sid=${STUDENT}"
        curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/assignRole --data "type=projectRoles&roleName=${STUDENT}sub&sid=${STUDENT}"

    done < ${FILE}
fi

#echo -e '\n All users properly created in Jenkins! The file "students_jenkins_accounts.txt" contains details of each account.'
cecho "GREEN" '\n All users properly created in Jenkins! The file "students_jenkins_accounts.txt" contains details of each account.'
exit 0

