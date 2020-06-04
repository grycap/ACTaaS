# autoassesment-programming

This is a set of tools to facilitate to the teacher the management of practice lessons in computer science subjets. The objective is to familiarizate students with common tools of programming such as Git repos and tools of CI/CD, like Jenkins. It also integrates the management with Github Classroom.

In this repo, you can find a set of scripts that interact directly with Jenkins and:
 * Create Users
 * Create Folders and subfolders
 * Create Roles (global and project)
 * Assing roles to users
 * Create Jobs
 * Create Views
 
Also, there are two main scripts that prepare the environment of a class. 
 * registerStudents: this script receives a file that contains the Github accounts of the students and the number of assignments of the course, and creates the user in Jenkins and the necessary folders and roles to each student. It can also create the account for a single student
 
   * Usage: ./registerStudents.sh [-f <students_names_file>] [-j <Jenkins_URL>] [-a <number_of_asssingments>] [-u <Jenkins_user>] [-p <Jenkins_token>] [-s <single_student_account>]]
   * Example of use #1: $ ./registerStudents.sh -f students -j http://jenkins.ip:8080 -a 3 -u admin -p token
   * Example of use #2: $ ./registerStudents.sh -s alu01 -j http://jenkins.ip:8080 -a 3 -u admin -p <token> 
   
 * createTests: this script receives a file that contains the Github account of each student together with the URL of the repo of each assignment (automatically created by Github Classroom), the template of the test and the assingment to whom it corresponds. It creates for each student the corresponding job test in Jenkins properly allocated in the structure of folders previosuly created with the other script. It can also create the test for a single student account
 
 * Usage: ./createTests.sh [-f <students_names_file>] [-j <Jenkins_URL>] [-a <number_of_the_corresponding_asssingment>] [-n <name_of_the_exercise>] [-t <template_of_the_exercise.xml>] [-u <Jenkins_user>] [-p <Jenkins_password>] 
 -s <student account> -g <github url> -i <credentials Id>
    * Example of use #1: $ ./createTests.sh -f student_repos -j http://jenkins.ip:8080 -a 1 -n ejercicio_test -t test_template.xml -u admin -p token -i credentials Id
    * Example of use #2: $ ./createTests.sh -s alu01 -g https://github.com/ARAGroupGIA/pr1-alu01  -j http://jenkins.ip:8080 -a 1 -n ejercicio_test -t test_template.xml -u admin -p token  
 -i credentials Id
