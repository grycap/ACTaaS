#$1 ID User
USER=$1
#@2 Password
PASS=$2
#$3 jenkins URL
JENKINS_URL=$3
CMD="jenkins.model.Jenkins.instance.securityRealm.createAccount(\"${USER}\",\"${PASS}\")"
echo $CMD  | java -jar ../jenkins-cli.jar -auth admin:adminyoyoyo -s ${JENKINS_URL} groovy =
