NEW_USER=$1
NEW_PASS=$2
JENKINS_URL=$3
USER=$4
PASS=$5

CMD="jenkins.model.Jenkins.instance.securityRealm.createAccount(\"${USER}\",\"${PASS}\")"
echo $CMD  | java -jar ../jenkins-cli.jar -auth ${USER}:${PASS} -s ${JENKINS_URL} groovy =
