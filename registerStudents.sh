#!/bin/bash

ROLE_NAME='alumno'

cecho(){
    RED="\033[0;31m"
    GREEN='\033[0;32m'
    YELLOW='\033[1;33m'
    # ... ADD MORE COLORS
    NC='\033[0m' # No Color

    printf "${!1}${2} ${NC}\n"
}

usage() { echo "Usage: $0 [-f <students_names_file>] [-j <Jenkins_URL>] [-a <number_of_asssingments>] [-u <Jenkins_user>] [-p <Jenkins_password>] [-s <single_student_account>]" 1>&2; exit 1; }

createStudent() {

	#Create user
	#NEW_PASS=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
	NEW_PASS="vamosacambiarla"        
	#devolver al profesor la lista de alumnos y su contraseña de jenkins creada de forma aleatoria
	echo "${STUDENT},${NEW_PASS}" >> students_jenkins_accounts.txt
	CMD="jenkins.model.Jenkins.instance.securityRealm.createAccount(\"${STUDENT}\",\"${NEW_PASS}\")"
	echo $CMD | java -jar jenkins-cli.jar -auth ${USER}:${PASS} -s ${JENKINS_URL} groovy = 
	#>/dev/null

	#Create the main folder
	curl -s -X POST "${JENKINS_URL}/createItem?name=${STUDENT}&mode=com.cloudbees.hudson.plugins.folder.Folder&from=&json={"name":"${STUDENT}","mode":"com.cloudbees.hudson.plugins.folder.Folder","from":"","Submit":"OK"}&Submit=OK" --user ${USER}:${PASS} -H "Content-Type:application/x-www-form-urlencoded"

	#Create the subfolders (We need to know how many practices are in the subject)
	i="0"
	while [ $i -lt $PRACTICES ]
	do
       curl -s -X POST "${JENKINS_URL}/job/${STUDENT}/createItem?name=practice${i}_${STUDENT}&mode=com.cloudbees.hudson.plugins.folder.Folder&Submit=OK" -H "Content-Type:application/x-www-form-urlencoded" --user ${USER}:${PASS} 
       i=$[$i+1]
    done

        #Create project roles for each student, to restrict the view of the folders
        curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/addRole --data "type=projectRoles&roleName=${STUDENT}&pattern=${STUDENT}&permissionIds=hudson.model.Item.Read,hudson.model.Item.Discover&overwrite=true"
        curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/addRole --data "type=projectRoles&roleName=${STUDENT}sub&pattern=${STUDENT}/.*&permissionIds=hudson.model.Item.Read,hudson.model.Item.Discover&overwrite=true"

        #Assing global and project roles to the student
        curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/assignRole --data "type=globalRoles&roleName=${ROLE_NAME}&sid=${STUDENT}"
        curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/assignRole --data "type=projectRoles&roleName=${STUDENT}&sid=${STUDENT}"
        curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/assignRole --data "type=projectRoles&roleName=${STUDENT}sub&sid=${STUDENT}"
}

readFile() {
	while IFS='' read -r STUDENT || [[ -n "$STUDENT" ]]; 
	do
	  createStudent
    done < ${FILE}
	
}

while getopts ":f:j:a:u:s:p:" o; do
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
       s)
            STUDENT=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

# API token actual
# PASS="111bdf145a6545c45940ae73cdc6dd72ea" 

if [ -z "${JENKINS_URL}" ] || [ -z "${PRACTICES}" ] || [ -z "${USER}" ] || [ -z "${PASS}" ]; then
    cecho "RED" "ERROR: some parameters are missing, please consider usage."
    usage
     exit
fi

if [ ! -f "jenkins-cli.jar" ]; then
    cecho "RED" "ERROR: file jenkins-cli.jar not found."
	exit
fi

#Create global role 'alumno'
curl -s --user ${USER}:${PASS} ${JENKINS_URL}/role-strategy/strategy/addRole --data "type=globalRoles&roleName=${ROLE_NAME}&permissionIds=hudson.model.Hudson.Read,hudson.model.Item.Build&overwrite=true"


if [ -z "${FILE}" ]
then
   createStudent
else
    readFile
fi   
    