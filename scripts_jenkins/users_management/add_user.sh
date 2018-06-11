#$1 ID User
#@2 Password
CMD="jenkins.model.Jenkins.instance.securityRealm.createAccount(\"$1\",\"$2\")"
echo $CMD  | java -jar ../jenkins-cli.jar -auth dsegrelles:9s654321 -s http://158.42.105.24:8080/ groovy =
